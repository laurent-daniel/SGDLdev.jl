using SgdlDev
using Documenter

DocMeta.setdocmeta!(SgdlDev, :DocTestSetup, :(using SgdlDev); recursive=true)

makedocs(;
    modules=[SgdlDev],
    authors="Laurent Daniel <laurent.daniel@sgdl.com> and contributors",
    repo="https://github.com/laurent-daniel/SgdlDev.jl/blob/{commit}{path}#{line}",
    sitename="SgdlDev.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://laurent-daniel.github.io/SgdlDev.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/laurent-daniel/SgdlDev.jl",
    devbranch="master",
)
