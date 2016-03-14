
::::::::::::::::::::::::::::::::::::::::
:: Setup
:: ----------------

set JAVA_VERSION=jdk1.8.0_74
set EXTENSION_HOME=%HOME%\SiteExtensions\java

:: Installing Java
curl -b "oraclelicense=accept-securebackup-cookie" -LOs http://download.oracle.com/otn-pub/java/jdk/8u74-b02/jdk-8u74-windows-i586.exe
7z x jdk-8u74-windows-i586.exe -o%EXTENSION_HOME%
7z x %EXTENSION_HOME%\tools.zip -o%EXTENSION_HOME%\%JAVA_VERSION%

:: Unpacking
pushd %JAVA_VERSION%
for /r %%x in (*.pack) do .\bin\unpack200 -r "%%x" "%%~dx%%~px%%~nx.jar"
popd

:: Cleanup
rm tools.zip
rm jdk-8u74-windows-i586.exe