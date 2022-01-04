using NumericalMethods, Test

@testset "bisection" begin
	@test bisection(x -> x^2 - 2, 0, 2) == 1.4142074584960938
end

@testset "secant" begin
	@test secant(x -> x^2 - 2, 0, 2, 1e-5, 100) == 1.4142135626888697
end
