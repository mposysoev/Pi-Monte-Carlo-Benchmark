$counter = 0

for ($i = 0; $i -lt 1000000; $i++) {
    $x = Get-Random -Minimum 0.0 -Maximum 1.0
    $y = Get-Random -Minimum 0.0 -Maximum 1.0

    if ($x * $x + $y * $y -lt 1.0) {
        $counter = $counter + 1
    }
}

$result = 4.0 * $counter / 1000000.0

Write-Output $result
