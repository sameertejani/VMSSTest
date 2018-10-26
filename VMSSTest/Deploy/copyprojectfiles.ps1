$rootdir = (Resolve-Path .\).Path
Write-Output "current directory is  $rootdir."

$sourceRoot = "$($rootdir)\VMSSTest\VMSSTest.Api\bin\Release\netcoreapp2.1\publish"
$destinationRoot = "c:\vmsstest"

Write-Output "Copy from $sourceRoot to $destinationRoot."

# Copy files from publish directory
Copy-Item -Path $sourceRoot -Recurse -Destination $destinationRoot -Container