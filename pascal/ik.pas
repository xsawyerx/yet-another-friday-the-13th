program friday13;
uses sysutils;

const
  startYr    : word = 2012;
  startCount = 0;
  endCount   = 5;

var
  dt          : TDateTime;
  year, month : word;

begin
  for year in [startCount..endCount] do
    for month in [1..12] do
      begin
        dt := EncodeDate(startYr + year, month, 13);
        if DayOfWeek(dt) = 6 then
          writeln(FormatDateTime('DDDD, DD-MM-YYYY',dt));
      end;
end.
