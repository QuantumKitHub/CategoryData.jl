@testset verbose = true "$(F)" for F in CategoryData.list_braidedcategories()
    I = Object{F}
    Istr = TensorKitSectors.type_repr(I)

    @testset "Sector $Istr: Basic properties" begin
        s = (randsector(I), randsector(I), randsector(I))
        @test Base.eval(Main, Meta.parse(sprint(show, I))) == I
        @test Base.eval(Main, Meta.parse(TensorKitSectors.type_repr(I))) == I
        @test Base.eval(Main, Meta.parse(sprint(show, s[1]))) == s[1]
        @test @testinferred(hash(s[1])) == hash(deepcopy(s[1]))
        @test @testinferred(unit(s[1])) == @testinferred(unit(I))
        @testinferred dual(s[1])
        @testinferred dim(s[1])
        @testinferred frobenius_schur_phase(s[1])
        @testinferred frobenius_schur_indicator(s[1])
        @testinferred Nsymbol(s...)
        @testinferred Asymbol(s...)
        B = @testinferred Bsymbol(s...)
        F = @testinferred Fsymbol(s..., s...)
        @test eltype(F) === @testinferred fusionscalartype(I)
        R = @testinferred Rsymbol(s...)
        @test eltype(R) === @testinferred braidingscalartype(I)
        if FusionStyle(I) === SimpleFusion()
            @test typeof(R * F) <: @testinferred sectorscalartype(I)
        else
            @test Base.promote_op(*, eltype(R), eltype(F)) <: @testinferred sectorscalartype(I)
        end
        @testinferred(s[1] ⊗ s[2])
        @testinferred(⊗(s..., s...))
    end

    @testset "Sector $Istr: Value iterator" begin
        @test eltype(values(I)) == I
        sprev = unit(I)
        for (i, s) in enumerate(values(I))
            @test !isless(s, sprev)
            @test s == @testinferred(values(I)[i])
            @test findindex(values(I), s) == i
            sprev = s
            i >= 10 && break
        end
        @test unit(I) == first(values(I))
        @test length(allunits(I)) == 1
        @test (@testinferred findindex(values(I), unit(I))) == 1
        for s in smallset(I)
            @test (@testinferred values(I)[findindex(values(I), s)]) == s
        end
    end

    @testset "Sector $Istr: Fusion and dimensions" begin
        for a in smallset(I), b in smallset(I)
            da = dim(a)
            db = dim(b)
            dc = sum(c -> dim(c) * Nsymbol(a, b, c), a ⊗ b)
            @test da * db ≈ dc # needs to be ≈ because of anyons
        end
    end

    @testset "Sector $Istr: Fsymbol and Asymbol" begin
        for a in smallset(I), b in smallset(I)
            for c in ⊗(a, b)
                A1 = Asymbol(a, b, c)
                A2 = TKS.Asymbol_from_Fsymbol(a, b, c)
                @test A1 ≈ A2 atol = 1.0e-12 rtol = 1.0e-12
            end
        end
    end

    @testset "Sector $Istr: Fsymbol and Bsymbol" begin
        for a in smallset(I), b in smallset(I)
            for c in ⊗(a, b)
                B1 = Bsymbol(a, b, c)
                B2 = TKS.Bsymbol_from_Fsymbol(a, b, c)
                @test B1 ≈ B2 atol = 1.0e-12 rtol = 1.0e-12
            end
        end
    end

    @testset "Sector $Istr: Fsymbol and dim" begin
        for a in smallset(I)
            @test dim(a) ≈ TKS.dim_from_Fsymbol(a) atol = 1.0e-12 rtol = 1.0e-12
        end
    end

    @testset "Sector $Istr: Fsymbol and frobenius_schur_phase" begin
        for a in smallset(I)
            @test frobenius_schur_phase(a) ≈ TKS.frobenius_schur_phase_from_Fsymbol(a) atol = 1.0e-12 rtol = 1.0e-12
        end
    end

    @testset "Sector $Istr: Unitarity of F-move" begin
        for a in smallset(I), b in smallset(I), c in smallset(I)
            for d in ⊗(a, b, c)
                es = collect(intersect(⊗(a, b), map(dual, ⊗(c, dual(d)))))
                fs = collect(intersect(⊗(b, c), map(dual, ⊗(dual(d), a))))
                if FusionStyle(I) isa MultiplicityFreeFusion
                    @test length(es) == length(fs)
                    F = [Fsymbol(a, b, c, d, e, f) for e in es, f in fs]
                else
                    Fblocks = Vector{Any}()
                    for e in es
                        for f in fs
                            Fs = Fsymbol(a, b, c, d, e, f)
                            push!(Fblocks, reshape(Fs, (size(Fs, 1) * size(Fs, 2), size(Fs, 3) * size(Fs, 4))))
                        end
                    end
                    F = hvcat(length(fs), Fblocks...)
                end
                @test isapprox(F' * F, one(F); atol = 1.0e-12, rtol = 1.0e-12)
            end
        end
    end

    @testset "Sector $Istr: Triangle equation" begin
        for a in smallset(I), b in smallset(I)
            @test triangle_equation(a, b; atol = 1.0e-12, rtol = 1.0e-12)
        end
    end

    @testset "Sector $Istr: Pentagon equation" begin
        for a in smallset(I), b in smallset(I), c in smallset(I), d in smallset(I)
            @test pentagon_equation(a, b, c, d; atol = 1.0e-12, rtol = 1.0e-12)
        end
    end

    if hasfusiontensor(I)
        @testset "Sector $Istr: fusion tensor and Fsymbol" begin # not from TKS because sparse arrays
            for a in smallset(I), b in smallset(I), c in smallset(I)
                for e in ⊗(a, b), f in ⊗(b, c)
                    for d in intersect(⊗(e, c), ⊗(a, f))
                        X1 = fusiontensor(a, b, e)
                        X2 = fusiontensor(e, c, d)
                        Y1 = fusiontensor(b, c, f)
                        Y2 = fusiontensor(a, f, d)
                        @tensor f1[-1, -2, -3, -4] := conj(Y2[a, f, d, -4]) *
                            conj(Y1[b, c, f, -3]) * X1[a, b, e, -1] * X2[e, c, d, -2]
                        f2 = Fsymbol(a, b, c, d, e, f) * dim(d)
                        @test isapprox(f1, f2; atol = 1000 * eps(), rtol = 1000 * eps())
                    end
                end
            end
        end
    end

    # extras for braided categories

    @testset "Sector $Istr: Rsymbol and twist" begin
        for a in smallset(I)
            @test twist(a) ≈ TKS.twist_from_Rsymbol(a) atol = 1.0e-12 rtol = 1.0e-12
        end
    end

    @testset "Sector $Istr: Hexagon equations" begin
        for a in smallset(I), b in smallset(I), c in smallset(I)
            @test hexagon_equation(a, b, c; atol = 1.0e-12, rtol = 1.0e-12)
        end
    end
end
