# Rep[Zₙ] ? Vec[Zₙ]
const Z2 = PMFC{2, 1, 0, 1, 0, 0}
const Z3 = PMFC{3, 1, 2, 1, 0, 0}
const Z4 = PMFC{4, 1, 2, 1, 0, 0}
const Z5 = PMFC{5, 1, 4, 1, 0, 0}
const Z6 = PMFC{6, 1, 4, 1, 0, 0}

const Z2xZ2 = PMFC{4, 1, 0, 1, 0, 0}
const Z2xsVec = PMFC{4, 1, 0, 1, 0, 1}

# Rep[Dₙ]
const RepD3 = PMFC{3, 1, 0, 2, 0, 0}
const RepD4 = PMFC{5, 1, 0, 1, 3, 0}
const RepD5 = PMFC{4, 1, 0, 3, 0, 0}
const RepD6 = PMFC{6, 1, 0, 2, 0, 0}
const RepD7 = PMFC{5, 1, 0, 4, 0, 0}

# Vec[Dₙ]
const VecD3 = UFC{6, 1, 2, 1, 0}

# Rep[Sₙ]
const RepS3 = RepD3
const RepS4 = PMFC{5, 1, 0, 6, 1, 0}

# Vec[Sₙ]
const VecS3 = VecD3

# Haagerup
@objectnames H1 = UFC{4, 2, 0, 1, 0} I μ η ν
@objectnames H2 = UFC{6, 1, 2, 8, 2} I α α² ρ αρ α²ρ
@objectnames H3 = UFC{6, 1, 2, 8, 3} I α α² ρ αρ α²ρ

# Centers
Base.getindex(::CenterTable, ::Type{VecS3}) = ZVecS3
@objectnames ZVecS3 = ZVecS3 A B C F G H D E

# Varia
@objectnames Fib = PMFC{2, 1, 0, 2, 0, 0} I τ
@objectnames Ising = PMFC{3, 1, 0, 1, 1, 3} I ψ σ
@objectnames sVec = PMFC{2, 1, 0, 1, 0, 1} I ψ
@objectnames Semion = PMFC{2, 1, 0, 1, 1, 0} I ϵ
@objectnames ToricCode = PMFC{4, 1, 0, 1, 0, 0} I e m ψ
@objectnames Z3MTC = PMFC{3, 1, 2, 1, 0, 1} 0 1 2
@objectnames SU2_4 = PMFC{5, 1, 0, 3, 0, 0} 0 4 3 1 2

_umtcs_lowrank_centralcharge = [
    Dict(
        1//1 => PMFC{2, 1, 0, 1, 1, 0}, # Semion
        -1//1 => PMFC{2, 1, 0, 1, 1, 1}, # TimeReversed{Semion}
        -14//5 => PMFC{2, 1, 0, 2, 0, 0}, # TimeReversed{Fib}
        14//5 => PMFC{2, 1, 0, 2, 0, 1}, # Fib
    ),
    Dict(
        2//1 => PMFC{3, 1, 2, 1, 0, 1}, # Z3MTC
        -2//1 => PMFC{3, 1, 2, 1, 0, 2}, # TimeReversed{Z3MTC}
        5//2 => PMFC{3, 1, 0, 1, 0, 0}, # The following are 8-fold ways
        -3//2 => PMFC{3, 1, 0, 1, 0, 1},
        -5//2 => PMFC{3, 1, 0, 1, 0, 2},
        3//2 => PMFC{3, 1, 0, 1, 0, 3},
        7//2 => PMFC{3, 1, 0, 1, 1, 0},
        -1//2 => PMFC{3, 1, 0, 1, 1, 1}, # TimeReversed{Ising}
        -7//2 => PMFC{3, 1, 0, 1, 1, 2},
        1//2 => PMFC{3, 1, 0, 1, 1, 3}, # Ising
        8//7 =>PMFC{3, 1, 0, 3, 0, 0}, # PSU(2)₅
        -8//7 => PMFC{3, 1, 0, 3, 0, 1},
    ),
    Dict(
        (0//1, 1) => PMFC{4, 1, 0, 1, 0, 2}, # Toric code ≅ Z(Rep[Z₂])
        # 4//1 => PMFC{4, 1, 0, 1, 0, ?}, # ThreeFermion, but with error!
        (0//1, 2) => PMFC{4, 1, 0, 1, 1, 0}, # Z(Semion) ≅ Semion ⊠ TimeReversed{Semion}
        2//1 => PMFC{4, 1, 0, 1, 1, 1}, # Semion ⊠ Semion
        # -2//1 => PMFC{4, 1, 0, 1, 1, ?}, # TODO: TimeReversed{Semion} ⊠ TimeReversed{Semion}, but with error!
        1//1 => PMFC{4, 1, 2, 1, 2, 0}, # Four Z₄ MTCs
        3//1 => PMFC{4, 1, 2, 1, 2, 1},
        -3//1 => PMFC{4, 1, 2, 1, 2, 2},
        -1//1 => PMFC{4, 1, 2, 1, 2, 3},
        -9//5 => PMFC{4, 1, 0, 2, 1, 0}, # Semion ⊠ TimeReversed{Fib}
        19//5 => PMFC{4, 1, 0, 2, 1, 1}, # Semion ⊠ Fib
        -19//5 => PMFC{4, 1, 0, 2, 1, 2}, # TimeReversed{Semion} ⊠ TimeReversed{Fib}
        9//5 => PMFC{4, 1, 0, 2, 1, 3}, # TimeReversed{Semion} ⊠ Fib
        12//5 => PMFC{4, 1, 0, 5, 0, 0}, # TimeReversed{Fib} ⊠ TimeReversed{Fib}
        (0//1, 3) => PMFC{4, 1, 0, 5, 0, 1}, # TimeReversed{Fib} ⊠ Fib
        -12//5 => PMFC{4, 1, 0, 5, 0, 2}, # Fib ⊠ Fib
        10//3 => PMFC{4, 1, 0, 6, 0, 0}, # PSU2_7
        -10//3 => PMFC{4, 1, 0, 6, 0, 1}, # TimeReversed{PSU2_7}
    ),
    Dict(
        4//1 => PMFC{5, 1, 4, 1, 0, 1},
        0//1 => PMFC{5, 1, 4, 1, 0, 2},
        (2//1, 1) => PMFC{5, 1, 0, 3, 0, 0}, # SU2_4
        (2//1, 2) => PMFC{5, 1, 0, 3, 1, 0}, # TimeReversed{JK4} http://dx.doi.org/10.1103/PhysRevA.92.012301
        # Cannot find TimeReversed{SU2_4} or JK4, but they should be here somewhere with PMFC{5, 1, 0, 3, x, y}
        # Cannot find PSU2_9 and its time-reversal, but they should be here somewhere with PMFC{5, 1, 0, x, y, z} with c = ± 16//11
        # Cannot find c = ± 18//7 UMTCs. They are not SimpleFusion. Should be PMFC{5, 2, ?, ?, ?, ?}
    )
]
