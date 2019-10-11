dotnet test /p:CollectCoverage=true /p:MergeWith=../coverage/lcov /p:CoverletOutput=../coverage/lcov /p:CoverletOutputFormat="opencover" CodeCoverageDotnetCore.sln
reportgenerator "-reports:coverage/lcov.opencover.xml" "-targetdir:coveragereport"
start coveragereport/index.htm