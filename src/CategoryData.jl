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
export RepA4, E6, Fib, Ising, H1, H2, H3, ZVecS3, ZVecD4
export SU2_1, SU2_2, SU2_3, SU2_4, SU2_5
export PSU2_3, PSU2_4, PSU2_5, PSU2_6, PSU2_7, PSU2_8, PSU2_9, PSU2_10, PSU2_11
export Kitaev16_1, Kitaev16_2, Kitaev16_3, Kitaev16_4, Kitaev16_5, Kitaev16_6, Kitaev16_7, Kitaev16_8, Kitaev16_9, Kitaev16_10, Kitaev16_11, Kitaev16_12, Kitaev16_13, Kitaev16_14, Kitaev16_15
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
