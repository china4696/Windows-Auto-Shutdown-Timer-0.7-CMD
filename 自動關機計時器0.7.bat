::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFBpQQQ2MAE+/Fb4I5/jHZw1NJ6bo3RXD/kYkUnxmphnxb7wsJdh66nsNzM8BQUxTKQqkI19k+C4K5y3Ff5bV/QbiRSg=
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSDk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSTk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJgZkw0
::ZQ05rAF9IBncCkqN+0xwdVsEAlPi
::ZQ05rAF9IAHYFVzEqQK4z9HRp/ELy5c8z0qUIAB9FggCW4VNGrVf
::eg0/rx1wNQPfEVWB+kM9LVsJDIxl9u5R8zzrFG4yEGJPSsvktmfGsN+VjdQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQK4z9HRp/ELy5c8z0qUIAB9FggCW4VNGrVf
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEcZ7lrf6/xeJlfO5f7jLoF28sJ2JKbS0=
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkAKZ233NNXQQDCtKFEjn38bz8zZydIwg==
::Zh4grVQjdCyDJGyX8VAjFBpQQQ2MAE+/Fb4I5/jHZw1NJ6bo3RXD/kYkUnxmphnxb7wsJdh66vK9Uk7n+ZKvgpRikYf8Qei7VOF8/5fS5EHkUk3p
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
:input_0000
color 04
rem 用戶選擇是否要啟動自動關機計時器
echo === 自動關機計時器 0.7===
echo **腳本目的**
echo 這個腳本用於設定並啟動自動關機計時器，讓您在特定時間內關閉或重新啟動電腦，或者是特定的進程關閉時自動關閉電腦，進入電腦的BIOS設定
echo -----------------------------------------------------------------------------
echo **執行要求**
echo 請確保以「系統管理員身份運行」此腳本，因為它需要訪問關閉電腦的功能。
echo -----------------------------------------------------------------------------
echo 總共有五個功能
echo 1. 定時關閉電腦
echo 2. 定時重新啟動電腦
echo 3. 關閉已經在 CMD 或是 Powershell 執行的 shutdown 自動關機指令
echo 4. 偵測到特定的進程關閉時 自動關閉電腦
echo 5. 進入電腦的BIOS設定
echo -----------------------------------------------------------------------------
echo === 重要提示 ===
echo **系統管理員權限**
echo 由於腳本涉及關閉電腦的功能，請確保您以系統管理員身份運行此腳本。
echo **腳本安全性**
echo 1.這個腳本本身是安全的，它只執行設定和計時的操作，不會對系統造成損害，也不會竊取您的個人資料。
echo 2.但是，請確保您從可靠的來源獲取腳本，並在執行前檢查其內容。
echo 3.如果你是專業的程序員或是對Cmd命令提示字元比較了解的，有需要查看源代碼 
echo   您可以去這裡查看源代碼。
echo   網址: ( https://drive.google.com/drive/folders/1H4j1XSlP_V8c3JCyQCiLPvoAAonBuTlw?usp=sharing )
echo   按 N 打開這個網址
echo 4.此腳本的源代碼是公開，並沒有逆向編程設計，這意味著任何人都可以修改這個腳本，請在正規的網站上下載這個腳本以免被植入木馬程式
echo === 請在確保安全後執行腳本 ===
echo 按Y確認
choice /C yn /N
if %errorlevel% equ 2 (
    start https://drive.google.com/drive/folders/1H4j1XSlP_V8c3JCyQCiLPvoAAonBuTlw?usp=sharing
    cls
    goto input_0000
)

cls
:check_admin
color 04
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 自動關機計時器 0.7
    echo 執行失敗
    start "Shutdown Warning" mshta "javascript:alert('執行失敗，由於腳本涉及關閉電腦的功能，請確保您以系統管理員身份運行此腳本');close();"
    echo 請以系統管理員身份執行。
    echo 由於腳本涉及關閉電腦的功能，請確保您以系統管理員身份運行此腳本。
    echo 按任意鍵退出.....
    pause >nul
    exit /b
)

:input_option
cls
color 04
echo 自動關機計時器 0.7
echo 設定選項
echo 1. 定時關閉電腦
echo 2. 定時重新啟動電腦
echo 3. 關閉已經在 CMD 或是 Powershell 執行的 shutdown 自動關機指令
echo 4. 偵測到特定的進程關閉時 自動關閉電腦
echo 5. 進入電腦的BIOS設定
echo 6. 顯示說明
echo 7. 退出
echo 在鍵盤[1, 2, 3 ,4 ,5 ,6 ,7]中輸入菜單選項
choice /C 1234567 /N
if %errorlevel% equ 1 goto input_shutdown_time
if %errorlevel% equ 2 goto input_restart_time
if %errorlevel% equ 3 goto :input_7777
if %errorlevel% equ 4 goto :fhdgthdhzththzthzt
if %errorlevel% equ 5 goto :input_4442
if %errorlevel% equ 6 goto :input_0000
if %errorlevel% equ 7 goto exit
:input_shutdown_time

rem 設定關機時間 
cls
color 04
echo 自動關機計時器 0.7
echo 設定關機時間
echo 設定時間時的要求:
echo 1.不要輸入除了數字以外的字元，否則電腦可能會直接關機
echo 2.不要輸入負數，否則會計算錯誤 
echo 3.以秒為單位
echo 4.輸入的字元不要超過9位數字 ，否則會計算錯誤，會導致電腦直接關機 
echo 5.設定完成之後會再次確認跟您的時間是不是對的
set /p time=請輸入關機倒數時間: 
set /a count=%time%

rem 驗證用戶輸入的時間是否正確，感謝 Chat GPT 聊天機器人  https://chat.openai.com/
set /a hours=%count% / 3600
set /a minutes=(%count% - %hours% * 3600) / 60
set /a seconds=%count% %% 60
cls
echo 自動關機計時器 0.7
echo 確認您輸入的時間
echo TIME: %hours% 小時 %minutes% 分鐘 %seconds% 秒
echo 設置:關機
echo 是否正確？（Y/N）
echo 輸入 Y 開始計時/輸入 N 重新設定時間
choice /C yn /N
if %errorlevel% equ 2 goto input_shutdown_time

:start_shutdown
cls
set /a hours=%count% / 3600
set /a minutes=(%count% - %hours% * 3600) / 60
set /a seconds=%count% %% 60
echo 自動關機計時器 0.7
echo 1. 你的電腦將在 %hours% 小時 %minutes% 分鐘後關閉
echo 2. 這個軟件是手動啟動的
echo 3. 如果不想關閉，請直接關閉此視窗或按 Ctrl+C
echo 4. 關閉前幾分鐘的時間會彈出視窗提醒您
 
echo -----------------------------------------------------------------------------------
echo TIME: %hours% 小時 %minutes% 分鐘 %seconds% 秒
set /a count-=1
if %count%==1800 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 30 分鐘後關閉');close();"
)
if %count%==600 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 10 分鐘後關閉');close();"
)
if %count%==300 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 5 分鐘後關閉');close();"
)
if %count%==120 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 2 分鐘後關閉');close();"
)
if %count%==60 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 1 分鐘後關閉');close();"
)
if %count%==30 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 30 秒後關閉');close();"
)
if %count%==20 (
  start "Shutdown Warning" mshta "javascript:alert('最後一次警告: 您的電腦將在 20 秒後關閉');close();"
)
if %count%==-1 (
  echo 正在關閉電腦...
  shutdown -a
  shutdown /s /f /t 0
  exit
) else (
  timeout /t 1 /nobreak > nul
  goto start_shutdown
)

exit

:input_restart_time
rem 設定重新啟動時間
cls
color 04
echo 自動關機計時器 0.7
echo 設定重新啟動時間
echo 設定時間時的要求:
echo 1.不要輸入除了數字以外的字元，否則電腦可能會直接關機
echo 2.不要輸入負數，否則會計算錯誤 
echo 3.以秒為單位
echo 4.輸入的字元不要超過9位數字 ，否則會計算錯誤，會導致電腦直接關機 
echo 5.設定完成之後會再次確認跟您的時間是不是對的
set /p time=請輸入重新啟動倒數時間: 
set /a count=%time%

rem 驗證用戶輸入的時間是否正確 ，感謝 Chat GPT 聊天機器人  https://chat.openai.com/
set /a hours=%count% / 3600
set /a minutes=(%count% - %hours% * 3600) / 60
set /a seconds=%count% %% 60
cls
echo 自動關機計時器 0.7
echo 確認您輸入的時間
echo TIME: %hours% 小時 %minutes% 分鐘 %seconds% 秒
echo 設置:重新啟動
echo 是否正確？（Y/N）
echo 輸入 Y 開始計時/輸入 N 重新設定時間
choice /C yn /N
if %errorlevel% equ 2 goto input_restart_time

:start_restart
cls
set /a hours=%count% / 3600
set /a minutes=(%count% - %hours% * 3600) / 60
set /a seconds=%count% %% 60
echo 自動關機計時器 0.7
echo 1. 你的電腦將在 %hours% 小時 %minutes% 分鐘後重新啟動
echo 2. 這個軟件是手動啟動的
echo 3. 如果不想重新啟動，請直接關閉此視窗或按 Ctrl+C
echo 4. 關閉前幾分鐘的時間會彈出視窗提醒您
 
echo -----------------------------------------------------------------------------------
echo TIME: %hours% 小時 %minutes% 分鐘 %seconds% 秒
set /a count-=1
if %count%==1800 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 30 分鐘後重新啟動');close();"
)
if %count%==600 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 10 分鐘後重新啟動');close();"
)
if %count%==300 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 5 分鐘後重新啟動');close();"
)
if %count%==120 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 2 分鐘後重新啟動');close();"
)
if %count%==60 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 1 分鐘後重新啟動');close();"
)
if %count%==30 (
  start "Shutdown Warning" mshta "javascript:alert('警告: 您的電腦將在 30 秒後重新啟動');close();"
)
if %count%==20 (
  start "Shutdown Warning" mshta "javascript:alert('最後一次警告: 您的電腦將在 20 秒後重新啟動');close();"
)
if %count%==-1 (
  echo 正在重新啟動電腦...
  shutdown -a
  shutdown /r /f /t 0
  exit
) else (
  timeout /t 1 /nobreak > nul
  goto start_restart
)

:exit
exit


:input_7777
cls
echo 自動關機計時器 0.7
echo 確認是否要關閉已經執行的自動關機指令
echo 1. YES
echo 2. NO
echo 在鍵盤[1, 2]中輸入菜單選項
choice /C 12 /N

if %errorlevel% equ 1 goto :input_99999
if %errorlevel% equ 2 goto :input_option




:input_99999
cls
echo 自動關機計時器 0.7
shutdown -s -t 999999
shutdown -a
cls
echo 已經關閉設定好的定時關機指令
echo 按任意鍵繼續.....
pause >nul
 goto :input_option












@echo off
:fhdgthdhzththzthzt
cls
rem 偵測到特定的進程關閉的時候，電腦就會自動關機。
echo 自動關機計時器 0.7
rem 設定要偵測的進程名稱。
echo 設定要偵測的進程名稱
echo 偵測到特定的進程關閉的時候，電腦就會自動關機
echo 請按ctrl+shift+esc 在你的 工作管理員 Task Manager 尋找你要偵測的進程，通常都是:[軟體名稱].exe
echo 有分英文字母的大小寫還有空格加特殊的符號，最好直接用複製貼上的方式來輸入
echo 當偵測到指定的進程關閉沒有在運行時 此電腦將在5分鐘後進行關機
set /p processName=請輸入要偵測的進程名稱：

rem 顯示用戶輸入的進程名稱
echo 自動關機計時器 0.7
echo 你輸入的進程名稱為：%processName%

rem 檢查用戶輸入的進程是否正在運行
tasklist | find /i "%processName%" >nul
if errorlevel 1 (
    cls
    echo 自動關機計時器 0.7
    echo 進程 %processName% 未在運行。
    echo 請確認你輸入的進程名稱是否正確。
    timeout /t 5 >nul
    goto :fhdgthdhzththzthzt
)

rem 每隔 10 秒檢查一次進程是否關閉。
:checkProcess

rem 檢查進程是否存在。
tasklist | find /i "%processName%" >nul

rem 如果進程不存在，就關閉電腦。
if errorlevel 1 (
    cls
    echo 自動關機計時器 0.7
    echo 進程 %processName% 已關閉。
    goto check123111111111
) else (
    cls
    echo 自動關機計時器 0.7
    echo 啟動成功
    echo 正在偵測 %processName% 正在運行
    echo 如果沒有正在運行時，此電腦將在5分鐘後關機 

)

rem 等待 10 秒。
timeout /t 1 >nul

goto checkProcess



:check123111111111
start "Shutdown Warning" mshta "javascript:alert('沒有偵測到 %processName% 在運行，此電腦將在5分鐘後關機');close();"
set /a count=300
color 04
:start
cls
set /a hours=%count% / 3600
set /a minutes=(%count% - %hours% * 3600) / 60
set /a seconds=%count% %% 60
echo 自動關機計時器 0.7
echo 沒有偵測到 %processName% 在運行。
echo 此電腦將在5分鐘後關機 
echo 如果不想關機，請直接關閉此窗口或輸入ctrl+c
echo 關機前幾分鐘的時間會彈出視窗提醒你
 
echo -----------------------------------------------------------------------------------
echo TIME: %hours% 小時 %minutes% 分鐘 %seconds% 秒
set /a count-=1
if %count%==1800 (
  start "Shutdown Warning" mshta "javascript:alert('警告:沒有偵測到 %processName% 在運行，您的電腦將在 30 分鐘後關機');close();"
)
if %count%==600 (
  start "Shutdown Warning" mshta "javascript:alert('警告:沒有偵測到 %processName% 在運行，您的電腦將在 10 分鐘後關機');close();"
)
if %count%==300 (
  start "Shutdown Warning" mshta "javascript:alert('警告:沒有偵測到 %processName% 在運行，您的電腦將在 5 分鐘後關機');close();"
)
if %count%==120 (
  start "Shutdown Warning" mshta "javascript:alert('警告:沒有偵測到 %processName% 在運行，您的電腦將在  2 分鐘後關機');close();"
)
if %count%==60 (
  start "Shutdown Warning" mshta "javascript:alert('警告:沒有偵測到 %processName% 在運行，您的電腦將在 1 分鐘後關機');close();"
)
if %count%==30 (
  start "Shutdown Warning" mshta "javascript:alert('警告:沒有偵測到 %processName% 在運行，您的電腦將在 30 秒後關機');close();"
)
if %count%==20 (
  start "Shutdown Warning" mshta "javascript:alert('最後一次警告:沒有偵測到 %processName% 在運行，您的電腦將在 20 秒後關機');close();"
)
if %count%==-1 (
  echo 正在關閉電腦...
  shutdown -a
  shutdown /s /f /t 0
  exit
) else (
  timeout /t 1 /nobreak > nul
  goto start
)


exit


:input_4442
shutdown -a
cls
echo 自動關機計時器 0.7
echo 進入電腦的BIOS設定
echo 請注意
echo 1.有一些電腦可能不支援使用這項功能進入BIOS 
echo 2.進入電腦BIOS設定介面的過程中需要重新啟動你的電腦
echo 3.請先保存好您的重要的工作，因為進入BIOS設定介面的過程中需要重新啟動電腦
echo -
echo 你確定要進入BIOS界面嗎?
echo 1. YES
echo 2. NO
echo 在鍵盤[1, 2]中輸入菜單選項
choice /C 12 /N
if %errorlevel% equ 1 goto :input_option1
if %errorlevel% equ 2 goto :input_option




:input_option1
cls
echo 自動關機計時器 0.7
set /a count=10
color 04
:start11
cls
set /a hours=%count% / 3600
set /a minutes=(%count% - %hours% * 3600) / 60
set /a seconds=%count% %% 60
shutdown -a
shutdown /r /fw /t 1 
cls
echo 自動關機計時器 0.7
echo 正在嘗試進入電腦 BIOS 的設定...
echo TIME: %seconds% 秒

set /a count-=1
if %count%==-1 (
  
  goto start1
) else (
  timeout /t 1 /nobreak > nul
  goto start11
)




:start1
shutdown /r /fw /t 1 
cls
echo 自動關機計時器 0.7
echo 抱歉你的電腦好像不支援使用這項功能進入BIOS界面
echo 原因如下
echo 1.
shutdown /r /fw /t 1
echo 2.
echo 又或者是 shutdown /r /fw /t 1 這個cmd指令無法在電腦上執行
echo 按任意鍵返回
pause >nul

goto :input_option






