from dateutil import rrule
from datetime import date, datetime, timedelta

startYear = date.today().year
endYear = startYear + 5

for dt in rrule.rrule(rrule.MONTHLY, dtstart=datetime(startYear, 1, 13), until=datetime(endYear, 12, 13)):
	if dt.isoweekday() == 5:
		print dt.strftime('%a, %d/%m/%Y')
