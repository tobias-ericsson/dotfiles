@echo off
setlocal
set input=%1
IF [%1]==[] (
	ECHO which IDEA?
	ECHO 1 = IDEA 13
	ECHO 2 = ANDROID-STUDIO
	ECHO 3 = WEBSTORM
	set /P input=Input:
)
IF %input%==1 (
	ECHO IDEA 13
	START /B CMD /C CALL c:\home\program\idea\IntelliJIDEA13.0.2\idea.bat
)
IF %input%==2 (
	ECHO ANDROID-STUDIO
	START /B CMD /C CALL c:\home\program\idea\android-studio\bin\studio.bat
)
IF %input%==3 (
	ECHO WEBSTORM
	START /B CMD /C CALL c:\home\program\idea\WebStorm7.0.1\bin\WebStorm.bat
)
endlocal