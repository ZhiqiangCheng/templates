@echo off
@echo 请以管理员身份运行
set /p portRemark=请输入端口备注:
set /p port=请输入端口号:
powershell -command "New-NetFirewallRule -DisplayName '%portRemark%' -Direction Inbound -Action Allow -RemoteAddress Any -Protocol TCP -LocalPort %port%"
pause