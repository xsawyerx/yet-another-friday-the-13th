use Date::Calc qw(Day_of_Week);

foreach my $year ( 2012 .. 2017 ) {
    foreach my $month ( 1 .. 12 ) {
        if ( Day_of_Week( $year, $month, 13 ) == 5 ) {
            printf "%d-%.2d-13\n", $year, $month;
        }
    }
}

