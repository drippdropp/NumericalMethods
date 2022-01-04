function bisection(f::Function, a::T, b::T,
    tol::AbstractFloat=1e-5, maxiter::Integer=100) where {T<:Real}
    fa = f(a)
    fa*f(b) <= 0 || error("No roots in R in the interval [a, b]")
    i = 0
    local c
    while b - a > tol
        i += 1
        i != maxiter || error("Reached maximum iterations")
        c = (a + b)/2
        fc = f(c)
        if fc == 0
            break
        elseif fa * fc > 0
            a = c
            fa = fc
        else
            b = c
        end
    end
    return c
end