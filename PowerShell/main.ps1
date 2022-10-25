$number_of_iteration = 1000000
$counter = 0

for ($i = 0; $i -lt $number_of_iteration; $i++) {
    $x = Get-Random -Minimum 0.0 -Maximum 1.0
    $y = Get-Random -Minimum 0.0 -Maximum 1.0

    if ($x * $x + $y * $y -lt 1) {
        $counter = $counter + 1
    }
}

$result = 4 * $counter / $number_of_iteration

Write-Output $result