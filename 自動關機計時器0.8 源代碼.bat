::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCuDJN9FGMvN6ifSjegLwamGjlLWbQMOZh17JITi3CrX/nY5X01GcK5L1s0ElB/6DysL1UPI65Obo1yibQBU
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
::cxY6rQJ7JhzQF1fEqQJgZkM0
::ZQ05rAF9IBncCkqN+0xwdVsEAlzi
::ZQ05rAF9IAHYFVzEqQK4z9HRp/ELy5c8z0qUIAB9FggCW4VNGrpf
::eg0/rx1wNQPfEVWB+kM9LVsJDIxl9u5R8zzrFG4yEGJPSsvktmfGsN+VgtQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQK4z9HRp/ELy5c8z0qUIAB9FggCW4VNGrpf
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATEcZ7lrf6/xeJlfO5f7jLoF28sJ2JKbS0=
::ZQ0/vhVqMQ3MEVWAtB9wrceByeFptY1dRjD5AG8PEG1QasXQm4I=
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRkAKZ233NNXQQDCtKFEjn38bz8zZydIwg==
::Zh4grVQjdCuDJN9FGMvN6ifSjegLwamGjlLWbQMOZh17JITi3CrX/nY5X01GcK5L1s0DvxPGI/OtZE3F85OQlpRSjIrNYT4M7iqAL8L8
::YB416Ek+ZG8=
::
::
::978f952a14a936cc963da21a135fa983

# If you see garbled characters, please ensure the file is opened with the Big5 encoding format. 
# The original code uses Big5 encoding, not UTF-8.
#
# If you view the file of this code and see garbled characters, it means that your Unicode encoding format is wrong. The Unicode encoding format of the original code is Big5, not UTF-8.

@echo off
:input_0000
cls


color 04
rem 用戶選擇是否要啟動自動關機計時器
echo === 自動關機計時器0.8 ===
echo **腳本目的**
echo 這個腳本用於設定並啟動自動關機計時器，讓您在特定時間內關閉或重新啟動電腦，或者是特定的進程關閉時自動關閉電腦，進入電腦的BIOS設定
echo -----------------------------------------------------------------------------
echo **執行要求**
echo 請確保以「系統管理員身份運行」此腳本，因為它需要訪問關閉電腦的功能。
echo -----------------------------------------------------------------------------
echo 總共有6個功能
echo 1. 定時關閉電腦
echo 2. 定時重新啟動電腦
echo 3. 關閉已經在 CMD 或是 Powershell 執行的 shutdown 自動關機指令
echo 4. 偵測到特定的進程關閉時 自動關閉電腦
echo 5. 進入電腦的BIOS設定
echo 6. 倒數計時執行CMD指令
echo -----------------------------------------------------------------------------
echo === 重要提示 ===
echo **系統管理員權限**
echo 由於腳本涉及關閉電腦的功能，請確保您以系統管理員身份運行此腳本。
echo **腳本安全性**
echo 1.這個腳本本身是安全的，它只執行設定和計時的操作，不會對系統造成損害，也不會竊取您的個人資料。
echo 2.但是，請確保您從可靠的來源獲取腳本，並在執行前檢查其內容。
echo 3.如果你是專業的程序員或是對Cmd命令提示字元比較了解的，有需要查看源代碼 
echo   您可以去這裡查看源代碼。
echo   網址: ( https://github.com/china4696/Windows-Auto-Shutdown-Timer-0.7-CMD )
echo   按 N 打開這個網址
echo 4.此腳本的源代碼是公開，並沒有逆向編程設計，這意味著任何人都可以修改這個腳本，請在正規的網站上下載這個腳本以免被植入木馬程式
echo === 請在確保安全後執行腳本 ===
echo 按Y確認
choice /C yn /N
if %errorlevel% equ 2 (
    start https://github.com/china4696/Windows-Auto-Shutdown-Timer-0.7-CMD
    cls
    goto input_0000
)

cls
:check_admin
color 04
net session >nul 2>&1
if %errorlevel% neq 0 (
    echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8
echo 設定選項
echo 1. 定時關閉電腦
echo 2. 定時重新啟動電腦
echo 3. 關閉已經在 CMD 或是 Powershell 執行的 shutdown 自動關機指令
echo 4. 偵測到特定的進程關閉時 自動關閉電腦
echo 5. 進入電腦的BIOS設定
echo 6. 顯示說明
echo 7. 倒數計時執行CMD指令
echo 8. 退出
echo 在鍵盤[1, 2, 3 ,4 ,5 ,6 ,7,8]中輸入菜單選項
choice /C 12345678 /N
if %errorlevel% equ 1 goto input_shutdown_time
if %errorlevel% equ 2 goto input_restart_time
if %errorlevel% equ 3 goto :input_7777
if %errorlevel% equ 4 goto :fhdgthdhzththzthzt
if %errorlevel% equ 5 goto :input_4442
if %errorlevel% equ 6 goto :input_0000
if %errorlevel% equ 7 goto :input_777777
if %errorlevel% equ 8 goto exit
:input_shutdown_time

rem 設定關機時間 
cls
color 04
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
echo 確認是否要關閉已經執行的自動關機指令
echo 1. YES
echo 2. NO
echo 在鍵盤[1, 2]中輸入菜單選項
choice /C 12 /N

if %errorlevel% equ 1 goto :input_99999
if %errorlevel% equ 2 goto :input_option




:input_99999
cls
echo 自動關機計時器0.8 
shutdown -s -t 999999
shutdown -a
cls
echo 已經關閉設定好的定時關機指令
echo 按任意鍵繼續.....
pause >nul
 goto :input_option


exit









@echo off
:fhdgthdhzththzthzt
cls
rem 偵測到特定的進程關閉的時候，電腦就會自動關機。
echo 自動關機計時器0.8 
rem 設定要偵測的進程名稱。
echo 設定要偵測的進程名稱
echo 偵測到特定的進程關閉的時候，電腦就會自動關機
echo 請按ctrl+shift+esc 在你的 工作管理員 Task Manager 尋找你要偵測的進程，通常都是:[軟體名稱].exe
echo 有分英文字母的大小寫還有空格加特殊的符號，最好直接用複製貼上的方式來輸入
echo 當偵測到指定的進程關閉沒有在運行時 此電腦將在5分鐘後進行關機
set /p processName=請輸入要偵測的進程名稱：

rem 顯示用戶輸入的進程名稱
echo 自動關機計時器0.8 
echo 你輸入的進程名稱為：%processName%

rem 檢查用戶輸入的進程是否正在運行
tasklist | find /i "%processName%" >nul
if errorlevel 1 (
    cls
    echo 自動關機計時器0.8 
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
    echo 自動關機計時器0.8 
    echo 進程 %processName% 已關閉。
    goto check123111111111
) else (
    cls
    echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
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
echo 自動關機計時器0.8 
echo 抱歉你的電腦好像不支援使用這項功能進入BIOS界面
echo 原因如下
echo 1.
shutdown /r /fw /t 1
echo 2.
echo 又或者是 shutdown /r /fw /t 1 這個cmd指令無法在電腦上執行
echo 按任意鍵返回
pause >nul

goto :input_option


exit

:input_777777
cls
echo 請輸入倒數計時結束後要執行的指令（例如 shutdown /s /f /t 0 或其他指令）:
echo 目前只支援cmd命令提示字元的指令
echo 使用此功能必需小心，請不要隨意執行來路不明的指令，嚴重的話可能會損壞你的系統  
echo 軟件預設為「以系統管理員身份執行指令」
set /p command=請輸入指令並按 Enter: 

)

:input_time
cls
echo 請輸入倒數時間（秒），確認計時結束後執行以下指令：
echo 指令: %command%
set /p time=請輸入倒數時間（秒）: 


set /a hours=%time% / 3600
set /a minutes=(%time% %% 3600) / 60
set /a seconds=%time% %% 60

rem 顯示時間格式，並要求用戶確認
cls
echo === 倒數計時設定確認 ===
echo 計時將設定為:
echo %hours% 小時 %minutes% 分鐘 %seconds% 秒
echo 將執行指令: %command%
echo -----------------------------
echo 是否正確？（Y/N）
choice /C yn /N
if %errorlevel% equ 2 (

    goto :input_time
)

set /a count=%time%
goto :start_countdown

:start_countdown
cls
set /a hours=%count% / 3600
set /a minutes=(%count% %% 3600) / 60
set /a seconds=%count% %% 60

echo === 自動關機計時器0.8  ===
echo 倒數時間: %hours% 小時 %minutes% 分鐘 %seconds% 秒
echo 將執行指令: %command%
echo ---------------------------------------------
if %count% leq 0 (
    echo 正在執行指令...
    call :execute_command
    exit
)

rem 倒數提醒
if %count%==600 start "Countdown Reminder" mshta "javascript:alert('您的電腦將在 10 分鐘後執行指令');close();"
if %count%==300 start "Countdown Reminder" mshta "javascript:alert('您的電腦將在 5 分鐘後執行指令');close();"
if %count%==60 start "Countdown Reminder" mshta "javascript:alert('您的電腦將在 1 分鐘後執行指令');close();"

set /a count-=1
timeout /t 1 /nobreak >nul
goto :start_countdown

:execute_command
rem 執行用戶的指令，並檢查執行結果
%command%
set result=%errorlevel%

rem 顯示執行結果
if %result% equ 0 (
    echo 指令執行結果 
    
) else (
    pause
    goto :input_option

    
)

pause
goto :input_option

exit