<?php
for($counter = 1; true; $counter++) {
    $output = "";
    if($counter % 3 == 0) {
        $output .= "Fizz";
    }
    if($counter % 5 == 0) {
        $output .= "Buzz";
    }
    if($output = "") {
        $output = "$counter";
    }
    echo $output
}
?>