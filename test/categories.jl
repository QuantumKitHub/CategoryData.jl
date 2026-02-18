using TensorKitSectors

testsuite_path = joinpath(
    dirname(dirname(pathof(TensorKitSectors))), # TensorKitSectors root
    "test", "testsuite.jl"
)
include(testsuite_path)

SectorTestSuite.test_sector(Object{RepA4})

for sector in CategoryData.list_fusioncategories()
    SectorTestSuite.test_sector(Object{sector})
end

for sector in CategoryData.list_braidedcategories()
    SectorTestSuite.test_sector(Object{sector})
end
