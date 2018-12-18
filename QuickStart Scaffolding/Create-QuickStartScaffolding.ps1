#This script is meant to create the folder and file structure for a new QuickStart 
#This script is meant to be run on someone's local machine to create the scaffolding, and then pushed up to the GitHub repository
#This script takes input from the user for QuickStart name and local path for where to create the files

#Name of the QuickStart
$QSName = "TestQS"
#Replace Azure with AWS for AWS QuickStarts.  This is the location you have cloned the GitHub repository to on your local machine
$Path = "C:\SiriusCloud\Sirius-Cloud\Azure QuickStarts" 

$QSPath = "$($Path)\$($QSName)"
$SamplePath = "$($Path)\Sample"

#Create QuickStart Folder
New-Item -ItemType Directory -Path $QSPath

#Create the rest of the folders and root files for the QuickStart
New-Item -ItemType Directory -Path $QSPath\ARM -Force
New-Item -ItemType Directory -Path $QSPath\DOCS -Force
Copy-Item -Path "$SamplePath\scenario.md" -Destination "$QSPath\scenario.md" -Force
Copy-Item -Path "$SamplePath\readme.md" -Destination "$QSPath\readme.md" -Force

#Populate the ARM folder
New-Item -ItemType File -Path $QSPath\ARM\azuredeploy.json -Force
New-Item -ItemType File -Path $QSPath\ARM\azuredeploy.parameters.json -Force
Copy-Item -Path "$SamplePath\ARM\deploy.ps1" -Destination "$QSPath\ARM\deploy.ps1" -Force
Copy-Item -Path "$SamplePath\ARM\readme.md" -Destination "$QSPath\ARM\readme.md" -Force

#Populate the Docs Folder
Copy-Item -Path "$SamplePath\DOCS\Azure Blob Storage for File Upload and Download (FTP).docx" -Destination "$QSPath\DOCS\$($QSName).docx" -Force
Copy-Item -Path "$SamplePath\DOCS\Azure Blob Storage for File Upload and Download.vsdx" -Destination "$QSPath\DOCS\$($QSName).vsdx" -Force
Copy-Item -Path "$SamplePath\DOCS\Scope of Services - Azure Blob Storage for File Upload and Download.docx" -Destination "$QSPath\DOCS\Scope of Services - $($QSName).docx" -Force
Copy-Item -Path "$SamplePath\DOCS\ServiceEstimate - LOE - Azure Blob Storage for File Upload and Download.xlsx" -Destination "$QSPath\DOCS\ServiceEstimate - LOE - $($QSName).xlsx" -Force
