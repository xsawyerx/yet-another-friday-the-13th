import java.util.Date;
public class Fri13 {
	public static void main(String[] args) {
		Date date;
		for(int year=112;year<=117;year++)
			for(int month=0;month<12;month++)
				if((date=new Date(year,month,13)).getDay()==5)
					System.out.println(date);
	}
}
