function secant(f::Function, x0::T, x1::T, tol::AbstractFloat, n::T) where {T}
    f0 = f(x0)
    f1 = f(x1)

    for i in 1:n
        x = x1 - f1*(x1 - x0)/(f1 - f0)
        fx = f(x)
        x0 = x1
        x1 = x
        f0 = f1
        f1 = fx
        if abs(x1 - x0) < tol
            return x1
        end
    end
    return nothing
end