# vimfiles以下全削除
rm $HOME/vimfiles

New-Item -ItemType Directory -Force $env:USERPROFILE\.tmp\vimbackup
Copy-Item -Path ..\vimrc\.vimrc -Destination $env:USERPROFILE\_vimrc -Force
Copy-Item -Path ..\vimrc\.vimrc.pluginconfig -Destination $env:USERPROFILE\.vimrc.pluginconfig -Force
Copy-Item -Path ..\vimrc\.vimrc.expandcommands -Destination $env:USERPROFILE\.vimrc.expandcommands -Force

# オートパス通し
$file = "$HOME\.vimrc.expandcommands"
$oldString = "LIBRARY_PATH"
$newString = ((Get-ChildItem -Path C:\users -Directory -Recurse | Where-Object {$_.Name -eq "InTheBloom_Library"}) | Select-Object -First 1).FullName
(Get-Content $file) | Foreach-Object {$_ -replace $oldString, $newString} | Set-Content $file
(Get-Content -Path $file) -replace "oldstring", "newstring"

if ([string]::IsNullOrEmpty($newString)) {
    $fileContent = Get-Content -Path $file
        $newContent = foreach ($line in $fileContent) {
            if ($line -match $oldString) {
                '" ' + $line
            } else {
                $line
            }
        }
    $newContent | Set-Content -Path $file
}

iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni $HOME/vimfiles/autoload/plug.vim -Force
