@echo off
setlocal enabledelayedexpansion

set "chars=ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_+="

set "password="

for /l %%i in (1,1,40) do (
    set /a "random_index=!random! %% 73"
    for %%j in (!random_index!) do (
        set "char=!chars:~%%j,1!"
        set "password=!password!!char!"
    )
)

echo Generated Password: %password%
pause