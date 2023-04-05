<?php

function calculatePi($n)
{
    $maxRand = mt_getrandmax();
    $counter = 0;
    for ($i = 0; $i < $n; $i++) {
        $x = mt_rand() / $maxRand;
        $y = mt_rand() / $maxRand;

        if ($x * $x + $y * $y < 1.0) {
            $counter++;
        }
    }
    return 4.0 * $counter / $n;
}

$number_of_iterations = 1000000000;
echo calculatePi($number_of_iterations);
