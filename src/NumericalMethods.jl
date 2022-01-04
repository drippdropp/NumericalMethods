module NumericalMethods

include("types.jl")
include("riemannsums.jl")
include("bisection.jl")
include("secant.jl")
include("differences.jl")

export bisection, secant

end # module
