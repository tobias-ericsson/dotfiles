REM copy symlink
REM mklink doublec C:\home\program\DoubleCommander\doublecmd.exe

REM make symlink
REM xcopy /b /i edit.exe d:\dev\dotfiles\home\bin\edit.exe

REM set temporary
set HOME=C:\home
set JAVA_HOME=C:\home\program\Java\jdk1.8.0
set GROOVY_HOME=C:\home\program\groovy\groovy-2.2.2
set MAVEN_HOME=C:\home\program\Maven\apache-maven-3.1.1


set PATH=%PATH%;%HOME%\bin;%JAVA_HOME%\bin;%GROOVY_HOME%\bin;%MAVEN_HOME%\bin;

REM set permanent
setx HOME "%HOME%"
setx JAVA_HOME "%JAVA_HOME%"
setx GROOVY_HOME "%GROOVY_HOME%"
setx MAVEN_HOME "%MAVEN_HOME%"

setx PATH "%PATH%"