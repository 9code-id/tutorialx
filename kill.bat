@echo off
for /f "tokens=2 delims=:" %%a in ('findstr /r "^name:" pubspec.yaml') do (
    set name=%%a
)
echo %name%
taskkill /IM %name%.exe /F
