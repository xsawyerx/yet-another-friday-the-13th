# http://irclog.perlgeek.de/perl6/2012-07-18#i_5825118
for n in $(seq 1 2000); do date -d "$n days"; done | grep 'Fri ... 13'
