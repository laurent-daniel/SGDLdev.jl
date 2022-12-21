module SgdlDev

# Write your package code here.
greet() = println("SgdlDev : package v3 loaded!")


export Test01


#__________________________________________________________
function Test01(v2::Array, a::Number)
    local name
    name = nameof(var"#self#")

    try
        return Test01(convert(Array{BigInt,1}, v2), convert(BigInt, a))
    catch err
        throw(string("Error in function [$name] ==> ", err))
    end
end

#__________________________________________________________
function Test01(v2::Array{BigInt,1}, a::BigInt)::BigInt
    return [v2[1]*a,v2[2]*a]
end


end  # module
