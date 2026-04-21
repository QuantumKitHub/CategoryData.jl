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

# ℤ₂ × ℤ₂ Tambara-Yamagami category, see https://doi.org/10.1006/jabr.1998.7558
@objectnames RepD4fusion = UFC{5, 1, 0, 1, 3} I a b c σ # χ = (-1)^(g₁h₂ + g₂h₁), ϰ = 1
@objectnames RepQ8fusion = UFC{5, 1, 0, 1, 2} I a b c σ # χ = (-1)^(g₁h₂ + g₂h₁), ϰ = -1
@objectnames RepH8 = UFC{5, 1, 0, 1, 1} I a b c σ # χ = (-1)^(g₁h₁ + g₂h₂), ϰ = 1
@objectnames TYℤ₂xℤ₂anomalous = UFC{5, 1, 0, 1, 0} I a b c σ # χ = (-1)^(g₁h₁ + g₂h₂), ϰ = -1

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
# Notation: 𝒞⁻: braided reversed of 𝒞; 𝒞⁼G: G-equivariantization of 𝒞. There may exist several inequivalent equivariantiazations. We use numbers to indicate them.
@objectnames Fib⁻ = PMFC{2, 1, 0, 2, 0, 0} I τ
@objectnames Fib = PMFC{2, 1, 0, 2, 0, 1} I τ
@objectnames Semion = PMFC{2, 1, 0, 1, 1, 0} I ϵ
@objectnames Semion⁻ = PMFC{2, 1, 0, 1, 1, 1} I ϵ
@objectnames sVec = PMFC{2, 1, 0, 1, 0, 1} I ψ # Non-modular

@objectnames Z3MTC = PMFC{3, 1, 2, 1, 0, 1} _0 _1 _2
@objectnames Z3MTC⁻ = PMFC{3, 1, 2, 1, 0, 2} _0 _1 _2
@objectnames Ising = PMFC{3, 1, 0, 1, 1, 3} I ψ σ
@objectnames Ising3 = PMFC{3, 1, 0, 1, 0, 3} I ψ σ # c = 3//2 Ising type UMTC
@objectnames Ising5 = PMFC{3, 1, 0, 1, 0, 0} I ψ σ # c = 5//2 Ising type UMTC
@objectnames Ising7 = PMFC{3, 1, 0, 1, 1, 0} I ψ σ # c = 7//2 Ising type UMTC
@objectnames Ising⁻ = PMFC{3, 1, 0, 1, 1, 1} I ψ σ # c = -1//2 Ising type UMTC
@objectnames Ising3⁻ = PMFC{3, 1, 0, 1, 0, 1} I ψ σ # c = -3//2 Ising type UMTC
@objectnames Ising5⁻ = PMFC{3, 1, 0, 1, 0, 2} I ψ σ # c = -5//2 Ising type UMTC
@objectnames Ising7⁻ = PMFC{3, 1, 0, 1, 1, 2} I ψ σ # c = -7//2 Ising type UMTC

@objectnames sVecZ2 = PMFC{4, 1, 0, 1, 0, 1} I0 I1 ψ0 ψ1 # Non-modular
@objectnames ToricCode = PMFC{4, 1, 0, 1, 0, 2} I e m ψ
@objectnames SemionSemion = PMFC{4, 1, 0, 1, 1, 1} II ϵI ϵϵ Iϵ
# @objectnames Semion⁻Semion⁻ = PMFC{4, 1, 0, 1, 1, :?} II ϵI ϵϵ Iϵ
@objectnames ZSemion = PMFC{4, 1, 0, 1, 1, 0} II ϵI ϵϵ Iϵ
@objectnames sVecSemion = PMFC{4, 1, 0, 1, 1, 2} II Iϵ ψI ψϵ # Non-modular
@objectnames U1_4 = PMFC{4, 1, 2, 1, 2, 0} _0 _2 _1 _3
@objectnames U1_4⁻ = PMFC{4, 1, 2, 1, 2, 3} _0 _2 _1 _3
@objectnames sRepZ4 = PMFC{4, 1, 2, 1, 0, 2} _0 _2 _1 _3 # Non-modular
@objectnames SemionZ2_twist = PMFC{4, 1, 2, 1, 0, 1} _0 _2 _1 _3 # Non-modular, twisted Z2-equivariantization of Semion, see Proposition 4.26 and Corollary 4.31 of https://arxiv.org/pdf/0906.0620, and table XXI of https://arxiv.org/pdf/1602.05946
@objectnames SemionZ2_twist⁻ = PMFC{4, 1, 2, 1, 0, 3} _0 _2 _1 _3 # Non-modular
@objectnames SemionFib = PMFC{4, 1, 0, 2, 1, 1} II ϵI ϵτ Iτ
@objectnames Semion⁻Fib = PMFC{4, 1, 0, 2, 1, 3} II ϵI ϵτ Iτ
@objectnames SemionFib⁻ = PMFC{4, 1, 0, 2, 1, 0} II ϵI ϵτ Iτ
@objectnames Semion⁻Fib⁻ = PMFC{4, 1, 0, 2, 1, 2} II ϵI ϵτ Iτ
@objectnames FibZ2 = PMFC{4, 1, 0, 2, 0, 2} I0 I1 τ1 τ0 # Non-modular.
@objectnames Fib⁻Z2 = PMFC{4, 1, 0, 2, 0, 0} I0 I1 τ1 τ0
@objectnames sVecFib = PMFC{4, 1, 0, 2, 0, 1} II ψI Iτ ψτ # Non-modular.
@objectnames sVecFib⁻ = PMFC{4, 1, 0, 2, 0, 3} II ψI Iτ ψτ # Non-modular.
# @objectnames FibFib = PMFC{4, 1, 0, 5, 0, :?} II τI Iτ ττ
@objectnames Fib⁻Fib⁻ = PMFC{4, 1, 0, 5, 0, 0} II τI Iτ ττ
@objectnames ZFib = PMFC{4, 1, 0, 5, 0, 1} II τI Iτ ττ
@objectnames Z5MTC_0⁼Z2 = PMFC{4, 1, 0, 3, 0, 1} _0I _0E _14 _23 # Z2-equivariantization of Z5MTC_0, see table XXI of https://arxiv.org/pdf/1602.05946
@objectnames Z5MTC_4⁼Z2 = PMFC{4, 1, 0, 3, 0, 2} _0I _0E _14 _23 # Z2-equivariantization of Z5MTC_4, see table XXI of https://arxiv.org/pdf/1602.05946
# One missing: Z3-equivariantization of the three-fermion MTC, see table XXIV of https://arxiv.org/pdf/1602.05946, shares the same fusion rule as RepA4.

@objectnames Z5MTC_0 = PMFC{5, 1, 4, 1, 0, 2} _0 _1 _4 _3 _2
@objectnames Z5MTC_4 = PMFC{5, 1, 4, 1, 0, 1} _0 _1 _4 _3 _2
@objectnames JK4⁻ = PMFC{5, 1, 0, 3, 1, 0} _0 _4 _3 _1 _2
@objectnames U1_4⁼¹Z2 = PMFC{5, 1, 0, 1, 0, 0} _0I _0E _2I _2E _13 
@objectnames U1_4⁼¹Z2⁻ = PMFC{5, 1, 0, 1, 0, 3} _0I _0E _2I _2E _13
@objectnames SemionSemion⁼Z2 = PMFC{5, 1, 0, 1, 0, 1} III IIE ϵϵI ϵϵE ϵIIϵ
@objectnames SemionSemion⁼Z2⁻ = PMFC{5, 1, 0, 1, 0, 2} III IIE ϵϵI ϵϵE ϵIIϵ
@objectnames Kitaev16_6⁼¹Z2⁻ = PMFC{5, 1, 0, 1, 0, 4} _0I _0E _2I _2E _13
@objectnames U1_4⁼²Z2⁻ = PMFC{5, 1, 0, 1, 1, 0} _0I _0E _2I _2E _13
@objectnames ToricCode⁼Z2 = PMFC{5, 1, 0, 1, 1, 1} II IE ψI ψE em
@objectnames Kitaev16_8⁼Z2 = PMFC{5, 1, 0, 1, 1, 2} II IE ψI ψE em
@objectnames Kitaev16_6⁼²Z2 = PMFC{5, 1, 0, 1, 1, 4} _0I _0E _2I _2E _13
@objectnames Kitaev16_6⁼²Z2⁻ = PMFC{5, 1, 0, 1, 1, 3} _0I _0E _2I _2E _13
@objectnames Semion⁼Z2xZ2 = PMFC{5, 1, 0, 1, 2, 0} I a b c σ # Already RepQ8 as fusion category. One only need to add its trivial braiding solution.
@objectnames Z7MTC⁼Z2 = PMFC{5, 1, 0, 4, 0, 1} _0I _0E _25 _16 _34
@objectnames Kitaev16_8⁼S3 = PMFC{5, 1, 0, 6, 0, 0} # S₃-extension of the three-fermion UMTC, see table XXVI of https://arxiv.org/pdf/1602.05946. Share the same fusion rule as RepS4.

# --- SU2 ---
# @objectnames SU2_1 = PMFC{2, 1, 0, 1, 1, 0} _0 _1 # Already defined in Semion
# @objectnames SU2_2 = PMFC{3, 1, 0, 1, 0, 3} _0 _2 _1 # Already defined in Ising3
# @objectnames SU2_3 = PMFC{4, 1, 0, 2, 1, 3} _0 _3 _1 _2 # Already defined in Semion⁻Fib
@objectnames SU2_4 = PMFC{5, 1, 0, 3, 0, 0} _0 _4 _3 _1 _2
@objectnames SU2_5 = PMFC{6, 1, 0, 6, 0, 1} _0 _5 _1 _4 _2 _3
@objectnames SU2_5⁻ = PMFC{6, 1, 0, 6, 0, 3} _0 _5 _1 _4 _2 _3

# --- PSU2 ---
# @objectnames PSU2_3 = PMFC{2, 1, 0, 2, 0, 0} _0 _2 # Already defined in Fib
@objectnames PSU2_4 = PMFC{3, 1, 0, 2, 0, 1} _0 _4 _2 # Non-modular. {0, 4} form a Rep[Z₂] braided subcategory. Isomorphic to Rep[D₃] as UFC, but has different braiding, thus can be viewed as a Z2-equivariantization of the Z3MTC.
@objectnames PSU2_4⁻ = PMFC{3, 1, 0, 2, 0, 2} _0 _4 _2
@objectnames PSU2_5 = PMFC{3, 1, 0, 3, 0, 0} _0 _4 _2
@objectnames PSU2_5⁻ = PMFC{3, 1, 0, 3, 0, 1} _0 _4 _2
@objectnames PSU2_6 = PMFC{4, 1, 0, 4, 0, 0} _0 _6 _4 _2 # Non-modular. Hard to distinguish 2 and 4. They seems to be equivalent. {0, 6} form a sVec braided subcategory. The first non-trivial super braided fusion category.
@objectnames PSU2_7 = PMFC{4, 1, 0, 6, 0, 0} _0 _6 _2 _4
@objectnames PSU2_7⁻ = PMFC{4, 1, 0, 6, 0, 1} _0 _6 _2 _4
@objectnames PSU2_8 = PMFC{5, 1, 0, 7, 0, 0} _0 _8 _2 _6 _4 # Non-modular. Hard to distinguish 2 and 6. They seems to be equivalent. {0, 8} form a Rep[Z₂] braided subcategory.
@objectnames PSU2_8⁻ = PMFC{5, 1, 0, 7, 0, 1} _0 _8 _2 _6 _4
@objectnames PSU2_9 = PMFC{5, 1, 0, 10, 0, 1} _0 _8 _2 _6 _4
@objectnames PSU2_9⁻ = PMFC{5, 1, 0, 10, 0, 0} _0 _8 _2 _6 _4
@objectnames PSU2_10 = PMFC{6, 1, 0, 16, 0, 0} _0 _10 _8 _2 _6 _4 # Non-modular
@objectnames PSU2_10⁻ = PMFC{6, 1, 0, 16, 0, 1} _0 _10 _8 _2 _6 _4
@objectnames PSU2_11 = PMFC{6, 1, 0, 18, 0, 1} _0 _10 _2 _8 _4 _6
@objectnames PSU2_11⁻ = PMFC{6, 1, 0, 18, 0, 0} _0 _10 _2 _8 _4 _6

# --- Kitaev 16-fold way ---
# @objectnames Kitaev16_0 = PMFC{4, 1, 0, 1, 0, 2} I e m ψ # Already defined in ToridCode
# @objectnames Kitaev16_1 = PMFC{3, 1, 0, 1, 1, 3} I ψ σ # Already defined in Ising
# @objectnames Kitaev16_2 = PMFC{4, 1, 2, 1, 2, 0} _0 _2 _1 _3 # Already defined in U1_4
# @objectnames Kitaev16_3 = PMFC{3, 1, 0, 1, 0, 3} I ψ σ
# @objectnames Kitaev16_4 = PMFC{4, 1, 0, 1, 1, 1} II ϵI ϵϵ Iϵ # Already defined in SemionSemion
# @objectnames Kitaev16_5 = PMFC{3, 1, 0, 1, 0, 0} I ψ σ
@objectnames Kitaev16_6 = PMFC{4, 1, 2, 1, 2, 1} _0 _2 _1 _3
# @objectnames Kitaev16_7 = PMFC{3, 1, 0, 1, 1, 0} I ψ σ
# @objectnames Kitaev16_8 = PMFC{4, 1, 0, 1, 0, :?} I f1 f2 f3
# @objectnames Kitaev16_7⁻ = PMFC{3, 1, 0, 1, 1, 2} I ψ σ
@objectnames Kitaev16_6⁻ = PMFC{4, 1, 2, 1, 2, 2} _0 _2 _1 _3
# @objectnames Kitaev16_5⁻ = PMFC{3, 1, 0, 1, 0, 2} I ψ σ
# @objectnames Kitaev16_4⁻ = PMFC{4, 1, 0, 1, 1, :?} II ϵI ϵϵ Iϵ # Already defined in SemionSemion⁻
# @objectnames Kitaev16_3⁻ = PMFC{3, 1, 0, 1, 0, 1} I ψ σ
# @objectnames Kitaev16_2⁻ = PMFC{4, 1, 2, 1, 2, 3} _0 _2 _1 _3 # Already defined in U1_4
# @objectnames Kitaev16_1⁻ = PMFC{3, 1, 0, 1, 1, 1} I ψ σ
