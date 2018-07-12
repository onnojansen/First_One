$path = $env:ProgramData + '\MRC_Custom'

Set-Location $path
    $j = 0
    foreach($_ in 0..255) {
        $protocol = "{0:x2}" -f $j
        $class = "08;06;$protocol"

        .\USBDeview.exe /remove_by_class $class
        .\USBDeview.exe /disable_enable_by_class $class

        $j++
        }