module CategoryData

using Pkg
using Pkg.Artifacts

using Tar, Inflate, SHA

using TensorKitSectors
using TensorKitSectors: SectorValues
using TensorKitSectors: SimpleFusion, GenericFusion, Anyonic, NoBraiding
using LinearAlgebra

using SparseArrayKit

export FusionRing, FusionCategory, BraidedCategory
export FR, UFC, PMFC

# ------ Fusion ring export ------
# ------ rank 2 -------
export Z2group, Fibring
# ------ rank 3 -------
export Isingring, RepS3ring, PSU2_5ring, Z3group
# ------ rank 4 -------
export Z2xZ2group, FibxZ2ring, RepD5ring, PSU2_6ring, FibxFibring, PSU2_7ring, Z4group, TYZ3ring, H1ring
# ------ rank 5 -------
export TYZ2xZ2ring, SU2_4ring, RepD7ring, RepS4ring, PSU2_8ring, TYZ4ring, Z5ring, PSU2_9ring

# ------ (super) Tannakian category export ------
export Z2, Z3, Z4, Z5, Z6, Z2xZ2, RepD3, RepD4, RepD5, RepD6, RepD7, RepA4, RepS4, sVec, sVecxZ2, sRepZ4

# ------ Fusion category export ------
# ------ rank 2 -------
export VecZ2, VecZ2ω, Fibfusion
# ------ rank 3 -------
export RepS3fusion, VecZ3, VecZ3ω_1, VecZ3ω_2, PSU2_5fusion, Isingϰfusion, Isingfusion
# ------ rank 4 -------
export VecZ2xZ2, VecZ2ωxVecZ2ω, FibxVecZ2, FibxVecZ2ω, RepD5fusion, PSU2_6fusion, FibxFibfusion, PSU2_7fusion, VecZ4, VecZ4ω1, VecZ4ω2, VecZ4ω3, TYZ3_1, TYZ3_1ϰ, TYZ3_2, TYZ3_2ϰ
# ------ rank 5 -------
export SU2_4fusion, JK4fusion, RepD7fusion, RepS4fusion, PSU2_8fusion, PSU2_9fusion, TYZ4_1, TYZ4_1ϰ, TYZ4_3, TYZ4_3ϰ, VecZ5, VecZ5ω1, VecZ5ω2, PSU2_9fusion, RepD4fusion, RepQ8fusion, RepH8, TYℤ₂xℤ₂anomalous

# ------ Braided category export ------
# ------ rank 2 -------
export Fib, Fib⁻, Semion, Semion⁻
# ------ rank 3 -------
export Z3MTC, Z3MTC⁻, Ising, Ising⁻, Ising3, Ising3⁻, Ising5, Ising5⁻, Ising7, Ising7⁻, PSU2_4, PSU2_4⁻, PSU2_5, PSU2_5⁻
# ------ rank 4 -------
export ToricCode, SemionxSemion, ZSemion, sVecxSemion, U1_4, U1_4⁻, Kitaev16_6, Kitaev16_6⁻, SemionxZ2_twist, SemionxZ2_twist⁻
export SemionxFib, Semion⁻xFib, SemionxFib⁻, Semion⁻xFib⁻, FibxZ2, Fib⁻xZ2, sVecxFib, sVecxFib⁻, Fib⁻xFib⁻, ZFib, PSU2_6, PSU2_7, PSU2_7⁻, Z5MTC_0ᴳZ2, Z5MTC_4ᴳZ2
# ------ rank 5 -------
export Z5MTC_0, Z5MTC_4, SU2_4, JK4⁻, PSU2_8, PSU2_8⁻, PSU2_9, PSU2_9⁻, U1_4ᴳ¹Z2, U1_4ᴳ¹Z2⁻, SemionxSemionᴳZ2, SemionxSemionᴳZ2⁻
export Kitaev16_6ᴳ¹Z2⁻, U1_4ᴳ²Z2⁻, ToricCodeᴳZ2, Kitaev16_8ᴳZ2, Kitaev16_6ᴳ²Z2, Kitaev16_6ᴳ²Z2⁻, SemionᴳZ2xZ2, Z7MTCᴳZ2, Kitaev16_8ᴳS3
# ------ rank 6 -------
export PSU2_10, PSU2_10⁻, PSU2_11, PSU2_11⁻, FibxPSU2_5⁻, FibxPSU2_5, Fib⁻xPSU2_5⁻, Fib⁻xPSU2_5, SemionxIsing5, SemionxIsing, Fib⁻xIsing7⁻
export FibxIsing7⁻, Fib⁻xIsing, FibxIsing, FibxIsing7, Fib⁻xIsing7, FibxIsing⁻, Fib⁻xIsing⁻, Fib⁻xIsing3⁻, FibxIsing3⁻, FibxIsing5⁻, Fib⁻xIsing5⁻, Fib⁻xIsing3
export FibxIsing3, FibxIsing5, Fib⁻xIsing5, Semion⁻xPSU2_5, SemionxPSU2_5, SemionxPSU2_5⁻, Semion⁻xPSU2_5⁻, Z5MTC_0ᴳZ2_Mex1, Z5MTC_0ᴳZ2_Mex2
export Z5MTC_4ᴳZ2_Mex1, Z5MTC_4ᴳZ2_Mex2, Semion⁻xZ3MTC, Semion⁻xZ3MTC⁻, SemionxZ3MTC, SemionxZ3MTC⁻, FibxZ3MTC⁻, FibxZ3MTC, Fib⁻xZ3MTC⁻, Fib⁻xZ3MTC


# ------ Exceptional examples ------
export E6, H1, H2, H3, ZVecS3, ZVecD4

export Object
export multiplicity, rank, algebraic_structure, selfduality, FPdim
export S, D, Ƶ
export @objectnames

include("categories.jl")
include("objects.jl")
include("artifacts.jl")
include("prettyprinting.jl")
include("aliases.jl")

end
