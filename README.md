# code-coverage-dotnet-core

- cd to CodeCoverageDotnetCore.Tests
- RunScript
  dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat="opencover" /p:CoverletOutput=lcov
  dotnet reportgenerator "-reports:lcov.opencover.xml" "-targetdir:coveragereport"
- open file after generate
