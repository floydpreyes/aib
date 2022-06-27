#Script to setup golden image with Azure Image Builder

#Create temp folder
if(Get-Item -Path 'C:\temp' -ErrorAction SilentlyContinue){

}else{
    New-Item -Path 'C:\temp' -ItemType Directory -Force | Out-Null
}

<#
#Install Azure Data Studio
Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?linkid=2198663' -OutFile 'c:\temp\ads.exe'
Invoke-Expression -Command 'c:\temp\ads.exe /verysilent /MERGETASKS=!runcode'

#Start sleep
Start-Sleep -Seconds 10
#>

Write-Host "Installing DAX Studio"
#Install DAX Studio
Invoke-WebRequest -Uri 'https://github.com/DaxStudio/DaxStudio/releases/download/v2.17.3/DaxStudio_2_17_3_setup.exe' -OutFile 'c:\temp\dax.exe'
Invoke-Expression -Command 'c:\temp\dax.exe /VERYSILENT /MERGETASKS=desktopicon /NORESTART /ALLUSERS'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing Google Chrome"
#Install Google Chrome
Invoke-WebRequest 'http://dl.google.com/chrome/install/375.126/chrome_installer.exe'  -OutFile 'c:\temp\chrome.exe'
Invoke-Expression -Command 'c:\temp\chrome.exe /silent /install'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing LastPass"
#Install LastPass
Invoke-WebRequest -Uri 'https://download.cloud.lastpass.com/windows_installer/lastpass_x64.exe' -OutFile 'c:\temp\lastpass.exe'
Invoke-Expression -Command 'c:\temp\lastpass.exe --silinstall --userinstallie --userinstallff --userinstallchrome'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing Azure CLI"
#Install Azure CLI
Invoke-WebRequest -Uri 'https://aka.ms/installazurecliwindows' -OutFile 'c:\temp\azcli.msi'
Invoke-Expression -Command 'msiexec.exe /i c:\temp\azcli.msi /quiet'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing Azure Storage Explorer"
#Install Azure Storage Explorer
Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?LinkId=708343&clcid=0x409' -OutFile 'c:\temp\storageexplorer.exe'
Invoke-Expression -Command 'c:\temp\storageexplorer.exe /VERYSILENT /NORESTART /ALLUSERS'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing PowerBIx64"
#Install PowerBI x64
Invoke-WebRequest -Uri 'https://download.microsoft.com/download/8/8/0/880BCA75-79DD-466A-927D-1ABF1F5454B0/PBIDesktopSetup_x64.exe' -OutFile 'c:\temp\powerbi.exe'
Invoke-Expression -Command 'c:\temp\powerbi.exe -q -norestart ACCEPT_EULA=1'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing SSMS"
#Install SSMS
Invoke-WebRequest -Uri 'https://aka.ms/ssmsfullsetup' -OutFile 'c:\temp\ssms-setup-enu.exe'
Invoke-Expression -Command 'c:\temp\ssms-setup-enu.exe /install /quiet /norestart'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing Tabular Editor"
#Install Tabular Editor
Invoke-WebRequest -Uri 'https://cdn.tabulareditor.com/files/latest/TabularEditor.3.x64.msi' -OutFile 'c:\temp\tabular.msi'
Invoke-Expression -Command 'MsiExec.exe /i c:\temp\tabular.msi ALLUSERS=1 /qn'

#Start sleep
Start-Sleep -Seconds 10

Write-Host "Installing WinMerge"
#Install WinMerge
Invoke-WebRequest -Uri 'https://github.com/WinMerge/winmerge/releases/download/v2.16.20/WinMerge-2.16.20-x64-Setup.exe' -OutFile 'c:\temp\winmerge.exe'
Invoke-Expression -Command 'c:\temp\winmerge.exe /VERYSILENT /NORESTART'

#Start sleep
Start-Sleep -Seconds 10