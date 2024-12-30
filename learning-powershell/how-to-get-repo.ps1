# https://www.bing.com/search?q=how+to+clone+a+github+repository+without+git+using+powershell+script
# 
# real example:
#   https://github.com/stleary/JSON-java/tree/20231013
#   https://github.com/stleary/JSON-java/archive/refs/tags/20231013.zip
# Define the repository details
# $owner = "stleary" # "repository-owner"
$repo = "Newtonsoft.Json" # "JSON-java" # "repository-name"
# $branch = "main"  # You can change this to any branch or tag you want to download
# $branch = "tree/20231013" # "main"  # You can change this to any branch or tag you want to download

# Construct the URL for the ZIP file
# $zipUrl = "https://github.com/$owner/$repo/archive/refs/heads/$branch.zip"
# $zipUrl = "https://github.com/stleary/JSON-java/archive/refs/tags/20231013.zip"
$zipUrl = "https://github.com/JamesNK/Newtonsoft.Json/archive/refs/tags/13.0.3.zip"

# notify end-user
Write-Output "Downloading desired source code."
Write-Output ".>.>.. " + $zipUrl

# Define the destination path for the ZIP file and the extraction path
# $zipPath = "$env:TEMP\$repo.zip"
# $extractPath = "$env:TEMP\$repo"

$zipPath = "C:\repos\GitLab\.sandbox\$repo.zip"
$extractPath = "C:\repos\GitLab\.sandbox\$repo"

# Download the ZIP file
Invoke-WebRequest -Uri $zipUrl -OutFile $zipPath

# Extract the ZIP file
Expand-Archive -Path $zipPath -DestinationPath $extractPath -Force

# Clean up the ZIP file
#Remove-Item -Path $zipPath

Write-Output "Repository cloned to: $extractPath"
pause
