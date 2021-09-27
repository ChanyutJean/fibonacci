<?php 
    if ($argv[1] < 1 || $argv[1] > 92) {
        throw new Exception("Index must be a positive integer between 1 and 92.");
    } 
    $previous = 1;
    $current = 1;
    $next = 0;
    for ($iteration = 2; $iteration < $argv[1]; $iteration++) {
        $next = $previous + $current;
        $previous = $current;
        $current = $next;
    }
    echo $current;
    echo "\n";
?>