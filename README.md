# code-coverage-dotnet-core

- cd to CodeCoverageDotnetCore.Tests
- RunScript
```
dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat="opencover" /p:CoverletOutput=lcov
dotnet reportgenerator "-reports:lcov.opencover.xml" "-targetdir:coveragereport"
```
- open file after generate

## Root Test
- install tool
```
dotnet tool install --global dotnet-reportgenerator-globaltool --version 4.3.0
```
- run script
```
dotnet test /p:CollectCoverage=true /p:CoverletOutputFormat="opencover" /p:CoverletOutput=../coverage/lcov CodeCoverageDotnetCore.sln
reportgenerator "-reports:coverage/lcov.opencover.xml" "-targetdir:coveragereport"
```
