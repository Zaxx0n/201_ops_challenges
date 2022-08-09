Set-NetFirewallRule -DisplayGroup "File And Printer Sharing" -Enabled True

Start-Sleep -Seconds 1.5

netsh advfirewall firewall add rule name="ICMP Allow incoming V4 echo request" protocol="icmpv4:8,any" dir=in action=allow

Start-Sleep -Seconds 1.5

iex ((New-Object System.Net.WebClient).DownloadString('https://git.io/debloat'))

Start-Sleep -Seconds 1.5

Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Hyper-V -All

Start-Sleep -Seconds 1.5

Set-SmbServerConfiguration -EnableSMB1Protocol $false -Force