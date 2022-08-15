Get-EventLog -LogName System -After (Get-Date).AddHours(-24) | Out-File -FilePath C:\Users\Zaxxon\OneDrive\Desktop\last_24.txt

Get-EventLog -LogName System -EntryType Error | Out-File -FilePath C:\Users\Zaxxon\OneDrive\Desktop\errors.txt

Get-EventLog -LogName System -InstanceId 16

Get-EventLog -LogName System -Newest 20

Get-EventLog -LogName System -Newest 500 | Select-Object -Property Source