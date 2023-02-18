use strict;
use warnings;

sub calculate_pi {
    my $n       = shift;
    my $counter = 0;

    for my $i ( 0 .. $n ) {
        my $x = rand();
        my $y = rand();
        if ( $x * $x + $y * $y < 1.0 ) {
            $counter += 1;
        }
    }
    return 4.0 * $counter / $n;
}

my $number_of_iterations = 1000000000;
my $result               = calculate_pi($number_of_iterations);
printf "%f \n", $result
