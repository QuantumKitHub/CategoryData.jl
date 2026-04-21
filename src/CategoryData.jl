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
export RepA4, E6, H1, H2, H3, ZVecS3, ZVecD4
export sVec, Fib, Fib⁻, Semion, Semion⁻
export Z3MTC, Z3MTC⁻, Ising, Ising⁻, Ising3, Ising3⁻, Ising5, Ising5⁻, Ising7, Ising7⁻, PSU2_4, PSU2_4⁻, PSU2_5, PSU2_5⁻
export sVecZ2, ToricCode, SemionSemion, ZSemion, sVecSemion, U1_4, U1_4⁻, SemionFib, Semion⁻Fib, SemionFib⁻, Semion⁻Fib⁻, FibZ2, Fib⁻Z2, sVecFib, sVecFib⁻, Fib⁻Fib⁻, ZFib, PSU2_6, PSU2_7, PSU2_7⁻
export SU2_4, JK4⁻, PSU2_8, PSU2_8⁻, PSU2_9, PSU2_9⁻
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
