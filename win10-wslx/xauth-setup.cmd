powershell "wsl --exec echo 'WSL Loaded'"
powershell -command "New-Item -Type File -Path ~\.Xauthority -ErrorAction Ignore"
powershell "& \"C:\Program Files\VcXsrv\xauth.exe\" add \"$((Get-NetIPAddress -AddressFamily IPv4 -InterfaceAlias \"vEthernet (WSL)\").IPAddress):0\" . $(wsl mcookie)"
