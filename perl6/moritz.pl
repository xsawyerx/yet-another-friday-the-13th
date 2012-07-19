say (2012..2017 X 1..12).map(-> $y, $m { Date.new($y, $m, 13) }).grep(*.day-of-week == 5)
