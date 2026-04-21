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
export RepA4, E6, H1, H2, H3, ZVecS3, ZVecD4, RepD4fusion, RepQ8fusion, RepH8, TYℤ₂xℤ₂anomalous
export sVec, Fib, Fib⁻, Semion, Semion⁻
export Z3MTC, Z3MTC⁻, Ising, Ising⁻, Ising3, Ising3⁻, Ising5, Ising5⁻, Ising7, Ising7⁻, PSU2_4, PSU2_4⁻, PSU2_5, PSU2_5⁻
export sVecZ2, ToricCode, SemionSemion, ZSemion, sVecSemion, U1_4, U1_4⁻, sRepZ4, SemionZ2_twist, SemionZ2_twist⁻, SemionFib, Semion⁻Fib, SemionFib⁻, Semion⁻Fib⁻, FibZ2, Fib⁻Z2, sVecFib, sVecFib⁻, Fib⁻Fib⁻, ZFib, PSU2_6, PSU2_7, PSU2_7⁻, Z5MTC_0⁼Z2, Z5MTC_4⁼Z2
export Z5MTC_0, Z5MTC_4, SU2_4, JK4⁻, PSU2_8, PSU2_8⁻, PSU2_9, PSU2_9⁻, U1_4⁼¹Z2, U1_4⁼¹Z2⁻, SemionSemion⁼Z2, SemionSemion⁼Z2⁻, Kitaev16_6⁼¹Z2⁻, U1_4⁼²Z2⁻, ToricCode⁼Z2, Kitaev16_8⁼Z2, Kitaev16_6⁼²Z2, Kitaev16_6⁼²Z2⁻, Semion⁼Z2xZ2, Z7MTC⁼Z2
export SU2_5, SU2_5⁻, PSU2_10, PSU2_10⁻, PSU2_11, PSU2_11⁻
export PSU2_6, PSU2_7, PSU2_8, PSU2_9, PSU2_10, PSU2_11
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
