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

_umtcs_lowrank_centralcharge = [
    Dict(
        1//1 => PMFC{2, 1, 0, 1, 1, 0}, # Semion
        -1//1 => PMFC{2, 1, 0, 1, 1, 1},
        -14//5 => PMFC{2, 1, 0, 2, 0, 0}, # TimeReversed{Fibonacci}
        14//5 => PMFC{2, 1, 0, 2, 0, 1}, # Fibonacci
    ),
    Dict(
        2//1 => PMFC{3, 1, 2, 1, 0, 1}, # Z₃ MTC
        -2//1 => PMFC{3, 1, 2, 1, 0, 2},
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
        (0//1, 2) => PMFC{4, 1, 0, 1, 1, 0}, # Z(Semion) ≅ Semion ⊠ TimeReversed{Semion}
        2//1 => PMFC{4, 1, 0, 1, 1, 1}, # Semion ⊠ Semion
        -2//1 => PMFC{4, 1, 0, 1, 1, 2}, # TODO: TimeReversed{Semion} ⊠ TimeReversed{Semion}, but with error!
        1//1 => PMFC{4, 1, 2, 1, 2, 0}, # Four Z₄ MTCs
        3//1 => PMFC{4, 1, 2, 1, 2, 1},
        -3//1 => PMFC{4, 1, 2, 1, 2, 2},
        -1//1 => PMFC{4, 1, 2, 1, 2, 3},
    )
]
