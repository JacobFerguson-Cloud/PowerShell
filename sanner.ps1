$folders = Get-ChildItem -Path "C:\Users"

$largeFolders = @()

foreach ($folder in $folders) {
    $size = (Get-ChildItem -Path $folder.fullname -file -Recurse | Measure-Object -Property Length -Sum).Sum
    $sizeinMB = $size / 1MB
    if ($sizeInMB -gt (1028 * 5)) {
        $insideFolders = Get-ChildItem -Path $folder.FullName -Recurse -Directory
        foreach ($insideFolder in $insideFolders) {
            $size = (Get-ChildItem -Path $insideFolder.FullName -File | Measure-Object -Property Length -Sum).sum 
            $sizeinMB = $size / 1MB
            if ($sizeInMB -gt (1028 * 5)) {
                $entry = New-Object -TypeName pscustomobject
                Add-Member -InputObject $entry -MemberType NoteProperty -Name "FolderName" -Value $insidefolder.fullname
                Add-Member -InputObject $entry -MemberType NoteProperty -Name "SizeInMB" -Value ([Math]::Round($sizeInMB, 2))
                $largeFolders += $entry
            }
        }

    }
}





$largeFolders

