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
#>

#Start sleep
Start-Sleep -Seconds 10

#Install DAX Studio
Invoke-WebRequest -Uri 'https://github.com/DaxStudio/DaxStudio/releases/download/v2.17.3/DaxStudio_2_17_3_setup.exe' -OutFile 'c:\temp\dax.exe'
Invoke-Expression -Command 'c:\temp\dax.exe /VERYSILENT /MERGETASKS=desktopicon /NORESTART'

#Install Google Chrome
Invoke-WebRequest -Uri 'https://www.google.com/intl/en/chrome/thank-you.html?standalone=1&statcb=1&installdataindex=empty&defaultbrowser=0#' -OutFile 'c:\temp\chrome.exe'
Invoke-Expression -Command 'c:\temp\chrome.exe /silent /install'

#Install LastPass
Invoke-WebRequest -Uri 'https://download.cloud.lastpass.com/windows_installer/LastPassInstaller.exe' -OutFile 'c:\temp\lastpass.exe'
Invoke-Expression -Command 'c:\temp\lastpass.exe --silinstall --userinstallie --userinstallff --userinstallchrome'

#Install Azure CLI
Invoke-WebRequest -Uri 'https://aka.ms/installazurecliwindows' -OutFile 'c:\temp\azcli.msi'
Invoke-Expression -Command 'msiexec.exe c:\temp\azurecli.msi /quiet'

#Install Azure Storage Explorer
Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?LinkId=708343&clcid=0x409' -OutFile 'c:\temp\storageexplorer.exe'
Invoke-Expression -Command 'c:\temp\storageexplorer.exe /VERYSILENT /NORESTART /ALLUSERS'

#Install ODBC SQL
Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?linkid=2186919' -OutFile 'c:\temp\msodbcsql.msi'
Invoke-Expression -Command 'MsiExec.exe /i c:\temp\msodbcsql.msi IACCEPTMSODBCSQLLICENSETERMS=YES /qn'

#Install OLE DB driver SQL
Invoke-WebRequest -Uri 'https://go.microsoft.com/fwlink/?linkid=2186934' -OutFile 'c:\temp\msoledbsql.msi'
Invoke-Expression -Command 'MsiExec.exe /i c:\temp\msoledbsql.msi IACCEPTMSOLEDBSQLLICENSETERMS=YES /qn'

#Install PowerBI x64
Invoke-WebRequest -Uri 'https://www.microsoft.com/en-us/download/confirmation.aspx?id=58494&6B49FDFB-8E5B-4B07-BC31-15695C5A2143=1' -OutFile 'c:\temp\powerbi.exe'
Invoke-Expression -Command 'c:\temp\powerbi.exe -q -norestart ACCEPT_EULA=1'

#Install SQL 2012 Native client
Invoke-WebRequest -Uri 'https://www.microsoft.com/en-us/download/confirmation.aspx?id=50402&6B49FDFB-8E5B-4B07-BC31-15695C5A2143=1' -OutFile 'c:\temp\sqlncli.msi'
Invoke-Expression -Command 'MsiExec.exe /i c:\temp\sqlncli.msi IACCEPTMSOLEDBSQLLICENSETERMS=YES /qn'

#Install SSMS
Invoke-WebRequest -Uri 'https://docs.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16' -OutFile 'c:\temp\ssms.exe'
Invoke-Expression -Command 'c:\temp\ssms.exe /Quiet SSMSInstallRoot=%systemdrive%\SSMSto'

#Install Visual Studio tools
Invoke-WebRequest -Uri 'https://download.microsoft.com/download/0/6/6/0660AD34-264B-4ED2-B975-ABFE255DAD47/vsta_setup.exe' -OutFile 'c:\temp\vsta_setup.exe'
Invoke-Expression -Command 'c:\temp\vsta_setup.exe /quiet /norestart'

#Install Tabular Editor
Invoke-WebRequest -Uri 'https://cdn.tabulareditor.com/files/latest/TabularEditor.3.x64.msi' -OutFile 'c:\temp\tabular.msi'
Invoke-Expression -Command 'MsiExec.exe /i c:\temp\tabular.msi ALLUSERS=1 /qn'

#Install WinMerge
Invoke-WebRequest -Uri 'https://github.com/WinMerge/winmerge/releases/download/v2.16.20/WinMerge-2.16.20-x64-Setup.exe' -OutFile 'c:\temp\winmerge.exe'
Invoke-Expression -Command 'c:\temp\winmerge.exe /VERYSILENT /NORESTART'


