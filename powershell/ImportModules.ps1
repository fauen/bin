if ($args[0]) {
    foreach ($i in Get-ChildItem $args[0]) {
        Import-Module $i
    }
}
else {
    foreach ($i in Get-ChildItem ".\modules\") {
        Import-Module $i
    }
}