#$f='008'
$f = Read-Host -Prompt 'input folder name'
New-Item -ItemType directory -Path ./$f'rezip'
$folders=Get-ChildItem ./$f/* | Select-Object BaseName
$folders | ForEach-Object {$b=$_.BaseName;& 'C:\Program Files\7-Zip\7z.exe' a -tzip ./$f'rezip'/$b.zip ./$f/$b/*}