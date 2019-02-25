# Dimension of testing distribution
const D = 5

# Deterministic tolerance
const DETATOL = 1e-3 * D
# Random tolerance
const RNDATOL = 5e-2 * D

using Distributions
using ForwardDiff: gradient

logπ(θ::AbstractVector{T}) where {T<:Real} = logpdf(MvNormal(zeros(D), ones(D)), θ)
dlogπdθ = θ -> gradient(logπ, θ)
