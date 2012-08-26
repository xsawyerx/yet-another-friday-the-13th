for(year=2012;year<=2017;year++)
    for(month=1;month<=12;month++)
        if((date=new Date(year,month,13)).getDay()==5)
            document.write(date+"<br>");
