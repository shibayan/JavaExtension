
::::::::::::::::::::::::::::::::::::::::
:: Setup
:: ----------------

set JAVA_VERSION=jdk-11.0.10.9
set EXTENSION_HOME=%HOME%\SiteExtensions\Java

:: Installing Java
curl -LOs https://aka.ms/download-jdk/microsoft-%JAVA_VERSION%-windows-x64.zip
7z x microsoft-%JAVA_VERSION%-windows-x64.zip

:: Cleanup
rm microsoft-%JAVA_VERSION%-windows-x64.zip