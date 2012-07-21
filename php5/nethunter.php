<?php
$baseYear = 2012;
$endYear = $baseYear + 5;
$dt = DateTime::createFromFormat('d.m.Y', '13.01.' . $baseYear);
$interval = DateInterval::createFromDateString('1 month');

while($dt->format('Y') <= $endYear) {
	if (5 == $dt->format('N')) {
		echo $dt->format('D, d M Y') . PHP_EOL;	
	}
	$dt->add($interval);	
}
