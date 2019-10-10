dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat="opencover" /p:CoverletOutput=../coverage/lcov CodeCoverageDotnetCore.sln
reportgenerator "-reports:coverage/lcov.opencover.xml" "-targetdir:coveragereport"
start coveragereport/index.htm