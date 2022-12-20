using SgdlDev
using Test

@testset "SgdlDev.jl" begin
    # Write your tests here.

    @test Test01([1,2],3) == BigInt[3, 6]
    @test Test01([1,2],BigInt(3)) == BigInt[3, 6]
    @test Test01([BigInt(1),BigInt(2)],BigInt(3)) == BigInt[3, 6]


end
