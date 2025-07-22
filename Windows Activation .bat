@echo off
chcp 65001 >nul
title Windows Key Tool Menu - By Lê Minh Võ
color 0A
mode con:cols=130 lines=60
setlocal enabledelayedexpansion

:: Kiểm tra quyền Admin
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    echo [!] Vui lòng chạy script bằng quyền Administrator.
    pause
    exit /b
)

:: ===============================
:menu
cls
echo =============================================================
echo                      CÔNG CỦ KÍCH HOẠT WINDOWS
echo                       Thiết kế bởi Lê Minh Võ
echo =============================================================
echo.
echo [1]  Kích hoạt key từ danh sách đầy đủ

echo [2]  Kiểm tra trạng thái bản quyền hiện tại (/xpr)
echo [0]  Thoát
echo.
set /p menu_choice=Chọn chức năng bạn muốn sử dụng: 

if "%menu_choice%"=="1" goto active_key
if "%menu_choice%"=="2" goto check_status
if "%menu_choice%"=="0" exit
echo.
echo  Lựa chọn không hợp lệ!
pause
goto menu

:: ===============================
:check_status
cls
echo =============================================================
echo  TRẠNG THÁI BẢN QUYỀN 

echo =============================================================
cscript //nologo slmgr.vbs /xpr
echo.
echo.
pause
goto menu

:: ===============================
:active_key
cls
echo =============================================================
echo  DANH SÁCH TẤT CẢ CÁC PHIÊN BẢN WINDOWS HỖ TRỢ KÍCH HOẠT
echo =============================================================

set /a count=0
:: DANH SÁCH FULL (Cắt bớt trong ví dụ, sẽ được thay bằng danh sách đầy đủ khi chèn)
:: --- Windows 11 ---
set /a count+=1 & set "list[%count%]=Windows 11 Home|YTMG3-N6DKC-DKB77-7M9GH-8HVX7"
set /a count+=1 & set "list[%count%]=Windows 11 Home N|4CPRK-NM3K3-X6XXQ-RXX86-WXCHW"
set /a count+=1 & set "list[%count%]=Windows 11 Home Single Language|BT79Q-G7N6G-PGBYW-4YWX6-6F4BT"
set /a count+=1 & set "list[%count%]=Windows 11 Home Country Specific|N2434-X9D7W-8PF6X-8DV9T-8TYMD"
set /a count+=1 & set "list[%count%]=Windows 11 Pro|VK7JG-NPHTM-C97JM-9MPGT-3V66T"
set /a count+=1 & set "list[%count%]=Windows 11 Pro N|2B87N-8KFHP-DKV6R-Y2C8J-PKCKT"
set /a count+=1 & set "list[%count%]=Windows 11 Pro for Workstations|DXG7C-N36C4-C4HTG-X4T3X-2YV77"
set /a count+=1 & set "list[%count%]=Windows 11 Pro for Workstations N|WYPNQ-8C467-V2W6J-TX4WX-WT2RQ"
set /a count+=1 & set "list[%count%]=Windows 11 Pro Education|8PTT6-RNW4C-6V7J2-C2D3X-MHBPB"
set /a count+=1 & set "list[%count%]=Windows 11 Pro Education N|GJTYN-HDMQY-FRR76-HVGC7-QPF8P"
set /a count+=1 & set "list[%count%]=Windows 11 Education|YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY"
set /a count+=1 & set "list[%count%]=Windows 11 Education N|84NGF-MHBT6-FXBX8-QWJK7-DRR8H"
set /a count+=1 & set "list[%count%]=Windows 11 Enterprise|XGVPP-NMH47-7TTHJ-W3FW7-8HV2C"
set /a count+=1 & set "list[%count%]=Windows 11 Enterprise N|WGGHN-J84D6-QYCPR-T7PJ7-X766F"
set /a count+=1 & set "list[%count%]=Windows 11 Enterprise G N|FW7NV-4T673-HF4VX-9X4MM-B4H4T"

:: --- Windows 10 ---
set /a count+=1 & set "list[%count%]=Windows 10 Home|46J3N-RY6B3-BJFDY-VBFT9-V22HG"
set /a count+=1 & set "list[%count%]=Windows 10 Home N|PGGM7-N77TC-KVR98-D82KJ-DGPHV"
set /a count+=1 & set "list[%count%]=Windows 10 Pro|RHGJR-N7FVY-Q3B8F-KBQ6V-46YP4"
set /a count+=1 & set "list[%count%]=Windows 10 Pro N|RHGJR-N7FVY-Q3B8F-KBQ6V-46YP4"
set /a count+=1 & set "list[%count%]=Windows 10 SL|GH37Y-TNG7X-PP2TK-CMRMT-D3WV4"
set /a count+=1 & set "list[%count%]=Windows 10 CHN SL|68WP7-N2JMW-B676K-WR24Q-9D7YC"
set /a count+=1 & set "list[%count%]=Windows 10 Pro for Workstations|DXG7C-N36C4-C4HTG-X4T3X-2YV77"
set /a count+=1 & set "list[%count%]=Windows 10 Pro Education|8PTT6-RNW4C-6V7J2-C2D3X-MHBPB"
set /a count+=1 & set "list[%count%]=Windows 10 Pro Education N|GJTYN-HDMQY-FRR76-HVGC7-QPF8P"
set /a count+=1 & set "list[%count%]=Windows 10 Education|YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY"
set /a count+=1 & set "list[%count%]=Windows 10 Education N|84NGF-MHBT6-FXBX8-QWJK7-DRR8H"
set /a count+=1 & set "list[%count%]=Windows 10 Enterprise|XGVPP-NMH47-7TTHJ-W3FW7-8HV2C"
set /a count+=1 & set "list[%count%]=Windows 10 Enterprise N|WGGHN-J84D6-QYCPR-T7PJ7-X766F"
set /a count+=1 & set "list[%count%]=Windows 10 Enterprise S|NK96Y-D9CD8-W44CQ-R8YTK-DYJWX"
set /a count+=1 & set "list[%count%]=Windows 10 Enterprise G N|FW7NV-4T673-HF4VX-9X4MM-B4H4T"

:: --- Windows Server ---
set /a count+=1 & set "list[%count%]=Windows Server 2016 Datacenter|CB7KF-BWN84-R7R2Y-793K2-8XDDG"
set /a count+=1 & set "list[%count%]=Windows Server 2016 Standard|WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
set /a count+=1 & set "list[%count%]=Windows Server 2016 Essentials|JCKRF-N37P4-C2D82-9YXRT-4M63B"
set /a count+=1 & set "list[%count%]=Windows Server 2019 Datacenter|WMDGN-G9PQG-XVVXX-R3X43-63DFG"
set /a count+=1 & set "list[%count%]=Windows Server 2019 Standard|N69G4-B89J2-4G8F4-WWYCC-J464C"
set /a count+=1 & set "list[%count%]=Windows Server 2019 Essentials|WVDHN-86M7X-466P6-VHXV7-YY726"

:: --- Windows 8 ---
set /a count+=1 & set "list[%count%]=Windows 8|46V6N-VCBYR-KT9KT-6Y4YF-QGJYH"
set /a count+=1 & set "list[%count%]=Windows 8 Professional|V7C3N-3W6CM-PDKR2-KW8DQ-RJMRD"
set /a count+=1 & set "list[%count%]=Windows 8 N|7QNT4-HJDDR-T672J-FBFP4-2J8X9"
set /a count+=1 & set "list[%count%]=Windows 8 Professional N|4NX4X-C98R3-KBR22-MGBWC-D667X"
set /a count+=1 & set "list[%count%]=Windows 8 Single Language|NH7GX-2BPDT-FDPBD-WD893-RJMQ4"

for /L %%i in (1,1,%count%) do (
    for /f "tokens=1,2 delims=|" %%a in ("!list[%%i]!") do (
        echo [%%i] %%a
    )
)

echo.
set /p "choice=Nhập số tương ứng phiên bản muốn kích hoạt (ENTER quay lại menu): "
if "%choice%"=="" goto menu
if not defined list[%choice%] (
    echo  Số không hợp lệ!
    pause
    goto active_key
)

for /f "tokens=1,2 delims=|" %%a in ("!list[%choice%]!") do (
    set "selected_name=%%a"
    set "selected_key=%%b"
)

cls
echo =============================================================
echo  KÍCH HOẠT: !selected_name!
echo  Key: !selected_key!
echo =============================================================
cscript //nologo slmgr.vbs /ipk !selected_key!
cscript //nologo slmgr.vbs /ato

echo.
echo  Trạng thái (/dli):
cscript //nologo slmgr.vbs /dli

echo.
echo  Trạng thái hạn sử dụng (/xpr):
cscript //nologo slmgr.vbs /xpr

echo.
echo  Lưu log...
(
    echo ===============================
    echo Thời gian: %DATE% %TIME%
    echo Phiên bản: !selected_name!
    echo Key: !selected_key!
    echo Máy: %COMPUTERNAME%
    echo ===============================
) >> activation_log.txt

echo  Đã lưu log vào activation_log.txt
pause
goto menu
