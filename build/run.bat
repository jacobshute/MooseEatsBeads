@ECHO OFF

set PATH_TO_FX=".\lib\javafx-sdk-11.0.2\lib"
set MODULES="javafx.controls,javafx.web"

.\lib\jdk-11.0.12+7-jre\bin\java.exe --module-path %PATH_TO_FX% --add-modules %MODULES% -jar MooseEatsBeads.jar


PAUSE