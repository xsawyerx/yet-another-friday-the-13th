use DateTime ();
use Set::CrossProduct ();

say $_->ymd for
  grep { 5 == $_->day_of_week }
  map { DateTime->new( ( qw( year month day ), @$_ )[ 0, 3, 1, 4, 2, 5 ] ) }
  Set::CrossProduct
    ->new( [ [ 2012 .. 2020 ], [ 1 .. 12 ], [13] ] )
    ->combinations;

