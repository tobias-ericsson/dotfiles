@echo off
(for %%i in (exe,bat,cmd) do (
	for %%f in (%1.%%i) do (
		@echo. %%f is %%~$PATH:f
	)
))
for %%f in (%1) do (
	@echo. %1 is %%~$PATH:f
)

