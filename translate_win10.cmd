ECHO OFF
ECHO ====================================================
ECHO Translate Working for Windows10
ECHO ====================================================
forfiles /p .\ /s /m *.pdf /c "cmd /c echo @path"
ECHO :: We'll start translation in two seconds.
ECHO ====================================================
timeout 2 > NUL
forfiles /p .\ /s /m *.pdf /c "cmd /c main.py @file en @file.txt"
ECHO ====================================================
ECHO :: Completed !!. But, If not translated in Sub-folder, please copy main.py to sub-folder
ECHO ====================================================
