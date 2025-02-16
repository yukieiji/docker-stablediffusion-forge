@echo off

cd %~dp0
docker compose --profile static up

echo %ERRORLEVEL%
if %ERRORLEVEL%==0 (
    echo 完了
) else if %ERRORLEVEL%==1 (
    echo 起動失敗: Dockerが動いているか確認してください
    pause
)
