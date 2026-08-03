@echo off
SET hosts=%windir%\system32\drivers\etc\hosts
attrib -r %hosts%
echo. >>%hosts%

FOR %%A IN (
    www.alex71.net
    alex71.net
    www.alex71.org
    alex71.org
    www.alex71.one
    alex71.one
) DO (
    findstr /c:"127.0.0.1 %%A" %hosts% >nul
    IF ERRORLEVEL 1 (
        echo 127.0.0.1 %%A >>%hosts%
    )
)

echo Successfully added entries
echo.
echo Thank you for visiting www.alex71.com. Enjoy!
choice /n /c y /d y /t 5 >nul
