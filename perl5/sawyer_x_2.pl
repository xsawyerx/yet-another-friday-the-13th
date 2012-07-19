# check every year for the 13th and see if it's Friday
use strict;
use warnings;
use DateTime;

foreach my $year ( 2012 .. 2020 ) {
    foreach my $month ( 1 .. 12 ) {
        my $dt = DateTime->new(
            day => 13, month => $month, year => $year
        );

        if ( $dt->day_name eq 'Friday' ) {
            print $dt->dmy('/'), "\n";
        }
    }
}

