abstract type NumericalImplementation end

abstract type RootFinder <: NumericalImplementation end

struct BisectionMethod <: RootFinder end
struct NewtonsMethod <: RootFinder end
struct SecantMethod <: RootFinder end

abstract type FiniteDifferenceMethod <: NumericalImplementation end

struct ForwardDifference <: FiniteDifferenceMethod end
struct CenterDifference <: FiniteDifferenceMethod end
struct BackwardDifference <: FiniteDifferenceMethod end

abstract type Interpolation <: NumericalImplementation end

struct Linear <: Interpolation end
struct Hermite <: Interpolation end

abstract type NumericalIntegration <: NumericalImplementation end 

struct Trapezoidal <: NumericalIntegration end
struct Simpsons <: NumericalIntegration end
struct RungeKutta <: NumericalIntegration end

abstract type RiemannSummation <: NumericalIntegration end

struct LeftRiemann <: RiemannSummation end
struct RightRiemann <: RiemannSummation end
struct Midpoint <: RiemannSummation end