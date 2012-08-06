require 'date'

startYear = 2012
endYear = startYear + 5
dt = Date.new(startYear, 1, 13)

while dt.year <= endYear
    if dt.wday == 5
        puts dt.strftime('%a, %d/%m/%Y')
    end
    dt = dt >> 1
end
