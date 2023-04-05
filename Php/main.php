<?php

function calculate_pi($n) {

$max_rand = mt_getrandmax();
    $counter = 0;
    for ($i = 0; $i < $n; $i++){
        $x = mt_rand()/$max_rand; 
        $y = mt_rand()/$max_rand;

        if ($x*$x + $y*$y < 1.0){
            $counter++;
        }
    }
    return 4.0 * $counter / $n;
}


$number_of_iterations = 1000000000;

echo calculate_pi($number_of_iterations);


?>