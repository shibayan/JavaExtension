@echo off

mkdir .\build

.\tool\nuget.exe pack .\java.nuspec -BasePath .\content -OutputDirectory .\build