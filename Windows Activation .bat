@echo off
title Windows Key Activation Tool
chcp 65001 >nul
color 0A
mode con:cols=120 lines=60

:: Kiểm tra quyền Admin
net session >nul 2>&1
if %errorlevel% NEQ 0 (
    echo [!] Hãy chạy script bằng quyền Administrator.
    pause
    exit /b
)

setlocal enabledelayedexpansion

:: =========================
:: Nhúng toàn bộ danh sách key vào đây
:: =========================

set /a count=0

:: Windows 11
set /a count+=1
set "list[%count%]=Windows 11 Home|YTMG3-N6DKC-DKB77-7M9GH-8HVX7"
set /a count+=1
set "list[%count%]=Windows 11 Home N|4CPRK-NM3K3-X6XXQ-RXX86-WXCHW"
set /a count+=1
set "list[%count%]=Windows 11 Home Single Language|BT79Q-G7N6G-PGBYW-4YWX6-6F4BT"
set /a count+=1
set "list[%count%]=Windows 11 Home Country Specific|N2434-X9D7W-8PF6X-8DV9T-8TYMD"
set /a count+=1
set "list[%count%]=Windows 11 Pro|VK7JG-NPHTM-C97JM-9MPGT-3V66T"
set /a count+=1
set "list[%count%]=Windows 11 Pro N|2B87N-8KFHP-DKV6R-Y2C8J-PKCKT"
set /a count+=1
set "list[%count%]=Windows 11 Pro for Workstations|DXG7C-N36C4-C4HTG-X4T3X-2YV77"
set /a count+=1
set "list[%count%]=Windows 11 Pro for Workstations N|WYPNQ-8C467-V2W6J-TX4WX-WT2RQ"
set /a count+=1
set "list[%count%]=Windows 11 Pro Education|8PTT6-RNW4C-6V7J2-C2D3X-MHBPB"
set /a count+=1
set "list[%count%]=Windows 11 Pro Education N|GJTYN-HDMQY-FRR76-HVGC7-QPF8P"
set /a count+=1
set "list[%count%]=Windows 11 Education|YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY"
set /a count+=1
set "list[%count%]=Windows 11 Education N|84NGF-MHBT6-FXBX8-QWJK7-DRR8H"
set /a count+=1
set "list[%count%]=Windows 11 Enterprise|XGVPP-NMH47-7TTHJ-W3FW7-8HV2C"
set /a count+=1
set "list[%count%]=Windows 11 Enterprise N|WGGHN-J84D6-QYCPR-T7PJ7-X766F"
set /a count+=1
set "list[%count%]=Windows 11 Enterprise G N|FW7NV-4T673-HF4VX-9X4MM-B4H4T"

:: Windows 10
set /a count+=1
set "list[%count%]=Windows 10 Home|46J3N-RY6B3-BJFDY-VBFT9-V22HG"
set /a count+=1
set "list[%count%]=Windows 10 Home N|PGGM7-N77TC-KVR98-D82KJ-DGPHV"
set /a count+=1
set "list[%count%]=Windows 10 Pro|RHGJR-N7FVY-Q3B8F-KBQ6V-46YP4"
set /a count+=1
set "list[%count%]=Windows 10 Pro N|RHGJR-N7FVY-Q3B8F-KBQ6V-46YP4"
set /a count+=1
set "list[%count%]=Windows 10 SL|GH37Y-TNG7X-PP2TK-CMRMT-D3WV4"
set /a count+=1
set "list[%count%]=Windows 10 CHN SL|68WP7-N2JMW-B676K-WR24Q-9D7YC"
set /a count+=1
set "list[%count%]=Windows 10 Pro for Workstations|DXG7C-N36C4-C4HTG-X4T3X-2YV77"
set /a count+=1
set "list[%count%]=Windows 10 Pro Education|8PTT6-RNW4C-6V7J2-C2D3X-MHBPB"
set /a count+=1
set "list[%count%]=Windows 10 Pro Education N|GJTYN-HDMQY-FRR76-HVGC7-QPF8P"
set /a count+=1
set "list[%count%]=Windows 10 Education|YNMGQ-8RYV3-4PGQ3-C8XTP-7CFBY"
set /a count+=1
set "list[%count%]=Windows 10 Education N|84NGF-MHBT6-FXBX8-QWJK7-DRR8H"
set /a count+=1
set "list[%count%]=Windows 10 Enterprise|XGVPP-NMH47-7TTHJ-W3FW7-8HV2C"
set /a count+=1
set "list[%count%]=Windows 10 Enterprise G N|FW7NV-4T673-HF4VX-9X4MM-B4H4T"
set /a count+=1
set "list[%count%]=Windows 10 Enterprise N|WGGHN-J84D6-QYCPR-T7PJ7-X766F"
set /a count+=1
set "list[%count%]=Windows 10 Enterprise S|NK96Y-D9CD8-W44CQ-R8YTK-DYJWX"

:: Windows Server
set /a count+=1
set "list[%count%]=Windows Server 2016 Datacenter|CB7KF-BWN84-R7R2Y-793K2-8XDDG"
set /a count+=1
set "list[%count%]=Windows Server 2016 Standard|WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY"
set /a count+=1
set "list[%count%]=Windows Server 2016 Essentials|JCKRF-N37P4-C2D82-9YXRT-4M63B"
set /a count+=1
set "list[%count%]=Windows Server 2019 Datacenter|WMDGN-G9PQG-XVVXX-R3X43-63DFG"
set /a count+=1
set "list[%count%]=Windows Server 2019 Standard|N69G4-B89J2-4G8F4-WWYCC-J464C"
set /a count+=1
set "list[%count%]=Windows Server 2019 Essentials|WVDHN-86M7X-466P6-VHXV7-YY726"

:: Windows 8
set /a count+=1
set "list[%count%]=Windows 8|46V6N-VCBYR-KT9KT-6Y4YF-QGJYH"
set /a count+=1
set "list[%count%]=Windows 8 Professional|V7C3N-3W6CM-PDKR2-KW8DQ-RJMRD"
set /a count+=1
set "list[%count%]=Windows 8 N|7QNT4-HJDDR-T672J-FBFP4-2J8X9"
set /a count+=1
set "list[%count%]=Windows 8 Professional N|4NX4X-C98R3-KBR22-MGBWC-D667X"
set /a count+=1
set "list[%count%]=Windows 8 Single Language|NH7GX-2BPDT-FDPBD-WD893-RJMQ4"

:: =========================
:: Hiển thị menu chọn
:: =========================

cls
echo ============================================================
echo                 CÔNG CỤ KÍCH HOẠT WINDOWS
echo ============================================================
echo Thông tin hệ điều hành:
systeminfo | findstr /B /C:"OS Name" /C:"OS Version"
echo ------------------------------------------------------------
echo.

for /L %%i in (1,1,%count%) do (
    for /f "tokens=1,2 delims=|" %%a in ("!list[%%i]!") do (
        echo [%%i] %%a
    )
)

echo.
set /p "choice=Nhập số phiên bản Windows bạn muốn kích hoạt: "
if not defined list[%choice%] (
    echo [!] Số không hợp lệ.
    pause
    exit /b
)

:: Tách key từ lựa chọn
for /f "tokens=1,2 delims=|" %%a in ("!list[%choice%]!") do (
    set "chosen=%%a"
    set "key=%%b"
)

cls
echo ------------------------------------------------------------
echo Đang kích hoạt: !chosen!
echo Sử dụng key: !key!
echo ------------------------------------------------------------

:: Gán key
cscript //nologo slmgr.vbs /ipk !key!

:: Kích hoạt online
cscript //nologo slmgr.vbs /ato

:: Kiểm tra trạng thái
echo.
echo Trạng thái kích hoạt:
cscript //nologo slmgr.vbs /dli

pause
exit /b
