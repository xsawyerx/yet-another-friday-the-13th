for year in [2012..2017]
	for month in [1..12]
		document.write date + "<br />" if ((date = new Date(year, month, 13)).getDay() == 5)
