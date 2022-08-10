function Get-ips {ipconfig /all} 
Get-ips > network.report.txt
$Path = "network.report.txt"  
Select-String -Path "$Path" -Pattern "Ipv4 Address" 
Remove-Item -Path $Path