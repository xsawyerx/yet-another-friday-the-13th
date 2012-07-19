# create a date, add a month and see if it's Friday
# stupid, I know...
use strict;
use warnings;
use DateTime;

my $dt = DateTime->new(
    day  => 13,
    year => 2012,
);

my $count = 0;
while ( my $next_dt = $dt->add( months => 1 ) ) {
    if ( $next_dt->day_name eq 'Friday' ) {
        my $date = $next_dt->dmy('/');
        print "Friday the 13th on: $date\n";
    }

    # stop after 5 years
    $count++ == ( 12 * 5 ) and last;
}

