@ECHO OFF

SETLOCAL

SET OUTPUT_DIR=%CD%

echo Removing output of previous builds...
DEL *.nupkg

echo Building all Chocolatey packages...
echo.

FOR /R %CD% %%I IN (*.nuspec) DO (
    pushd %%~pI

    echo Building %%~nI
    choco pack --out %OUTPUT_DIR%
    echo(

    popd
)

echo Done.

ENDLOCAL
