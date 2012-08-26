console.log("\nFriday the 13th for 13 years:");
console.log("-----------------------------");

var curyear = new Date(2012,1).getFullYear()

for (var year = 0, month = 0; year <= 13; year += 1 / 12, month += 1)
{
	var dateobj = new Date(curyear + Math.floor(year), month, 13);
	month = month != 0 && year <= 13 && month % 11 == 0 ? -1 : month;
	if (dateobj.getDay() == 5) console.log(dateobj.toLocaleDateString());
}