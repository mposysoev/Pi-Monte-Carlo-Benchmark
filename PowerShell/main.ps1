$number_of_iterations = 1000000
$counter = 0

for ($i = 0; $i -lt $number_of_iterations; $i++) {
    $x = Get-Random -Minimum 0.0 -Maximum 1.0
    $y = Get-Random -Minimum 0.0 -Maximum 1.0

    if ($x * $x + $y * $y -lt 1.0) {
        $counter = $counter + 1
    }
}

$result = 4.0 * $counter / $number_of_iteration

Write-Output $result