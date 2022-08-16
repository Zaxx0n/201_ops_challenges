Get-Process | Sort-Object CPU -Descending
Get-Process | Sort-Object ID -Descending
Get-Process | Sort-Object WorkingSet -Descending | Select-Object -First 5
Start-Process -file iexplore 'https://owasp.org/www-project-top-ten/'
Start-Sleep -Seconds .5
for($i=0; $i -le 10; $i++) {Start-Process -file iexplore -arg 'https://owasp.org/www-project-top-ten/'}
Start-Sleep -Seconds 5 
Stop-Process -name msedge -Force
Stop-Process -id 8288 -Force