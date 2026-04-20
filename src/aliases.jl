# Rep[Zₙ] ? Vec[Zₙ]
const Z2 = PMFC{2, 1, 0, 1, 0, 0}
const Z3 = PMFC{3, 1, 2, 1, 0, 0}
const Z4 = PMFC{4, 1, 2, 1, 0, 0}
const Z5 = PMFC{5, 1, 4, 1, 0, 0}
const Z6 = PMFC{6, 1, 4, 1, 0, 0}

const Z2xZ2 = PMFC{4, 1, 0, 1, 0, 0}

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

# --- SU2 ---
@objectnames SU2_1 = PMFC{2, 1, 0, 1, 1, 0} _0 _1
@objectnames SU2_2 = PMFC{3, 1, 0, 1, 0, 3} _0 _2 _1
@objectnames SU2_3 = PMFC{4, 1, 0, 2, 1, 3} _0 _3 _1 _2
@objectnames SU2_4 = PMFC{5, 1, 0, 3, 0, 0} _0 _4 _3 _1 _2
@objectnames SU2_5 = PMFC{6, 1, 0, 6, 0, 1} _0 _5 _1 _4 _2 _3

# --- PSU2 ---
@objectnames PSU2_3 = PMFC{2, 1, 0, 2, 0, 0} _0 _2
@objectnames PSU2_4 = PMFC{3, 1, 0, 2, 0, 1} _0 _4 _2 # Non-modular. {0, 4} form a Rep[Z₂] braided subcategory. Isomorphic to Rep[D₃] as UFC, but has different braiding.
@objectnames PSU2_5 = PMFC{3, 1, 0, 3, 0, 0} _0 _4 _2
@objectnames PSU2_6 = PMFC{4, 1, 0, 4, 0, 0} _0 _6 _4 _2 # Non-modular. Hard to distinguish 2 and 4. They seems to be equivalent. {0, 6} form a sVec braided subcategory.
@objectnames PSU2_7 = PMFC{4, 1, 0, 6, 0, 0} _0 _6 _2 _4
@objectnames PSU2_8 = PMFC{5, 1, 0, 7, 0, 0} _0 _8 _2 _6 _4 # Non-modular. Hard to distinguish 2 and 6. They seems to be equivalent. {0, 8} form a Rep[Z₂] braided subcategory.
@objectnames PSU2_9 = PMFC{5, 1, 0, 10, 0, 1} _0 _8 _2 _6 _4
@objectnames PSU2_10 = PMFC{6, 1, 0, 16, 0, 0} _0 _10 _8 _2 _6 _4 # Non-modular
@objectnames PSU2_11 = PMFC{6, 1, 0, 18, 0, 1} _0 _10 _2 _8 _4 _6

# --- Kitaev 16-fold way ---
@objectnames Kitaev16_0 = PMFC{4, 1, 0, 1, 0, 2} I e m ψ
@objectnames Kitaev16_1 = PMFC{3, 1, 0, 1, 1, 3} I ψ σ
@objectnames Kitaev16_2 = PMFC{4, 1, 2, 1, 2, 0} _0 _2 _1 _3
@objectnames Kitaev16_3 = PMFC{3, 1, 0, 1, 0, 3} I ψ σ
@objectnames Kitaev16_4 = PMFC{4, 1, 0, 1, 1, 1} II ϵI ϵϵ Iϵ
@objectnames Kitaev16_5 = PMFC{3, 1, 0, 1, 0, 0} I ψ σ
@objectnames Kitaev16_6 = PMFC{4, 1, 2, 1, 2, 1} _0 _2 _1 _3
@objectnames Kitaev16_7 = PMFC{3, 1, 0, 1, 1, 0} I ψ σ
@objectnames Kitaev16_8 = PMFC{4, 1, 0, 1, 0, :?} I e m ψ
@objectnames Kitaev16_9 = PMFC{3, 1, 0, 1, 1, 2} I ψ σ
@objectnames Kitaev16_10 = PMFC{4, 1, 2, 1, 2, 2} _0 _2 _1 _3
@objectnames Kitaev16_11 = PMFC{3, 1, 0, 1, 0, 2} I ψ σ
@objectnames Kitaev16_12 = PMFC{4, 1, 0, 1, 1, :?} II ϵI ϵϵ Iϵ
@objectnames Kitaev16_13 = PMFC{3, 1, 0, 1, 0, 1} I ψ σ
@objectnames Kitaev16_14 = PMFC{4, 1, 2, 1, 2, 3} _0 _2 _1 _3
@objectnames Kitaev16_15 = PMFC{3, 1, 0, 1, 1, 1} I ψ σ