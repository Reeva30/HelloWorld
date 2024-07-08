$qtVersionName = "6.6.1"
$qtPath = "${{ github.workspace }}\ThirdParty\Qt\6.6.1\msvc2019_64"
$devenvPath = "C:\Program Files\Microsoft Visual Studio\2022\Enterprise\Common7\IDE\devenv.com"

Write-Output "Adding Qt version $qtVersionName at path $qtPath using $devenvPath"

# Running the command to add Qt version
$addQtVersionCmd = "$devenvPath -Command `"Qt5VSAddin.QtVersionManager.AddQtVersion('$qtPath', '$qtVersionName')`""
Invoke-Expression $addQtVersionCmd | Tee-Object -Variable output
Write-Output $output

Write-Output "Setting default Qt version"

# Running the command to set the default Qt version
$setDefaultQtVersionCmd = "$devenvPath -Command `"Qt5VSAddin.QtVersionManager.SetDefaultQtVersion('$qtVersionName')`""
Invoke-Expression $setDefaultQtVersionCmd | Tee-Object -Variable output
Write-Output $output

Write-Output "Qt version configured"
