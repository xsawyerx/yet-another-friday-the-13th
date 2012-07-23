require 'date'

startYear = 2012
endYear = startYear + 5
dt = Date.new(startYear, 1, 13)

while dt.year <= endYear
	dt = dt >> 1
	if dt.wday == 5
		puts dt.strftime('%a, %d/%m/%Y')
	end
end
