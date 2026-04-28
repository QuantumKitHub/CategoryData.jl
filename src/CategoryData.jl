module CategoryData

using Pkg
using Pkg.Artifacts

using Tar, Inflate, SHA

using TensorKitSectors
using TensorKitSectors: SectorValues
using TensorKitSectors: SimpleFusion, GenericFusion, Anyonic, NoBraiding

using SparseArrayKit

export FusionRing, FusionCategory, BraidedCategory
export FR, UFC, PMFC
export Z2, Z3, Z4, Z5, Z6, Z2xZ2, RepD3, RepD4, RepD5, RepD6, RepD7, RepS4
export RepA4, E6, H1, H2, H3, ZVecS3, ZVecD4, RepD4fusion, RepQ8fusion, RepH8, TYℤ₂xℤ₂anomalous
export VecZ2, VecZ2ω, Fibfusion, RepS3fusion, VecZ3, VecZ3ω_1, VecZ3ω_2, PSU2_5fusion, Ising3fusion, Isingfusion
export VecZ2xZ2, VecZ2ωxVecZ2ω, FibxVecZ2, FibxVecZ2ω, RepD5fusion, PSU2_6fusion, FibFibfusion, PSU2_7fusion, VecZ4, VecZ4ω1, VecZ4ω2, VecZ4ω3, TYZ3_1, TYZ3_2, TYZ3_3, TYZ3_4
export SU2_4fusion, JK4fusion, RepD7fusion, RepS4fusion, PSU2_8fusion, PSU2_9fusion, TYZ4_1, TYZ4_2, TYZ4_3, TYZ4_4, VecZ5, VecZ5ω1, VecZ5ω2, PSU2_9fusion
export sVec, Fib, Fib⁻, Semion, Semion⁻
export Z3MTC, Z3MTC⁻, Ising, Ising⁻, Ising3, Ising3⁻, Ising5, Ising5⁻, Ising7, Ising7⁻, PSU2_4, PSU2_4⁻, PSU2_5, PSU2_5⁻
export sVecZ2, ToricCode, SemionSemion, ZSemion, sVecSemion, U1_4, U1_4⁻, sRepZ4, SemionZ2_twist, SemionZ2_twist⁻, SemionFib, Semion⁻Fib, SemionFib⁻, Semion⁻Fib⁻, FibZ2, Fib⁻Z2, sVecFib, sVecFib⁻, Fib⁻Fib⁻, ZFib, PSU2_6, PSU2_7, PSU2_7⁻, Z5MTC_0ᴳZ2, Z5MTC_4ᴳZ2
export Z5MTC_0, Z5MTC_4, SU2_4, JK4⁻, PSU2_8, PSU2_8⁻, PSU2_9, PSU2_9⁻, U1_4ᴳ¹Z2, U1_4ᴳ¹Z2⁻, SemionSemionᴳZ2, SemionSemionᴳZ2⁻, Kitaev16_6ᴳ¹Z2⁻, U1_4ᴳ²Z2⁻, ToricCodeᴳZ2, Kitaev16_8ᴳZ2, Kitaev16_6ᴳ²Z2, Kitaev16_6ᴳ²Z2⁻, SemionᴳZ2xZ2, Z7MTCᴳZ2
export SU2_5, SU2_5⁻, PSU2_10, PSU2_10⁻, PSU2_11, PSU2_11⁻, Kitaev16_8ᴳS3
export Kitaev16_6, Kitaev16_6⁻
export Object
export multiplicity, rank, algebraic_structure, selfduality
export S, D, Ƶ
export @objectnames

include("categories.jl")
include("objects.jl")
include("artifacts.jl")
include("prettyprinting.jl")
include("aliases.jl")

end
