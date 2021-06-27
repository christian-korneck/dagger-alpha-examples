@echo off
setlocal

set KEY_DIR=%userprofile%\.config\dagger
if not exist "%KEY_DIR%" mkdir "%KEY_DIR%"

REM check if dagger is already initialized
set KEY_FILE=%KEY_DIR%\keys.txt
REM Any dagger command inits the default key
if not exist "%KEY_FILE%" dagger help > nul

REM Check if the key has been already set
type "%KEY_FILE%" | findstr /i "age1gunf55cd2v30j76w4arxgmzks48v2a56pdw0vtn2j2ax6q2yp3wqgqlzxm" > nul 2>&1
if /i "%ERRORLEVEL%"=="0" echo Key already initialized && exit /B 0

echo # dagger/examples >> %KEY_FILE%
echo # public key: age1gunf55cd2v30j76w4arxgmzks48v2a56pdw0vtn2j2ax6q2yp3wqgqlzxm >> %KEY_FILE%
echo AGE-SECRET-KEY-1E7U8T98V5JTS7CWEWC6CN2A4ZP0H2SE3UTTQV4WZZ8JW26JC23GSEK76PG >> %KEY_FILE%

echo Key initialized

