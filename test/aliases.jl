UMTC_list = [Fib, Fib⁻, Semion, Semion⁻,
    Z3MTC, Z3MTC⁻, Ising, Ising⁻, Ising3, Ising3⁻, Ising5, Ising5⁻, Ising7, Ising7⁻, PSU2_5, PSU2_5⁻,
    ToricCode, SemionSemion, ZSemion, U1_4, U1_4⁻, SemionFib, Semion⁻Fib, SemionFib⁻, Semion⁻Fib⁻, Fib⁻Fib⁻, ZFib, PSU2_7, PSU2_7⁻, Kitaev16_6, Kitaev16_6⁻,
    Z5MTC_0, Z5MTC_4, SU2_4, JK4⁻, PSU2_9, PSU2_9⁻, SU2_5, SU2_5⁻, PSU2_11, PSU2_11⁻, ZVecS3, ZVecD4
]
UMTC_over_sVec_list = [sVec, sVecSemion, sVecFib, sVecFib⁻, PSU2_6, PSU2_10, PSU2_10⁻]
UMTC_over_RepZ2_list = [PSU2_4, PSU2_4⁻, SemionZ2_twist, SemionZ2_twist⁻, FibZ2, Fib⁻Z2, Z5MTC_0ᴳZ2, Z5MTC_4ᴳZ2,
    PSU2_8, PSU2_8⁻, U1_4ᴳ¹Z2, U1_4ᴳ¹Z2⁻, SemionSemionᴳZ2, SemionSemionᴳZ2⁻, Kitaev16_6ᴳ¹Z2⁻, U1_4ᴳ²Z2⁻, ToricCodeᴳZ2,
    Kitaev16_8ᴳZ2, Kitaev16_6ᴳ²Z2, Kitaev16_6ᴳ²Z2⁻, Z7MTCᴳZ2]
UMTC_over_RepZ2xZ2 = [SemionᴳZ2xZ2]
UMTC_over_RepS3 = [Kitaev16_8ᴳS3]
Tannakian_list = [Z2, Z3, Z4, Z5, Z6, Z2xZ2, RepD3, RepD4, RepD5, RepD6, RepD7, RepA4, RepS4, sVec, sVecZ2, sRepZ4]

@testset "Modularity" begin
    for Cat in UMTC_list
        Catdata = Object{Cat}
        @info "$Cat"
        @test ismodular(Catdata)
        c = topological_central_charge(Catdata)
        D = dim(Catdata)
        Smat = Smatrix(Catdata)
        smat = Smat / D
        Tmat = Tmatrix(Catdata)
        @test transpose(smat) ≈ smat
        @test (smat * Tmat)^3 ≈ smat^2 * cispi(c / 4)
    end
end