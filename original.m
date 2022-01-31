package Date;

import java.io.Console;
import java.security.cert.CRL;
import java.text.DateFormatSymbols;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.Month;
import java.time.YearMonth;
import java.time.ZoneId;
import java.time.format.TextStyle;
import java.util.Calendar;
import java.util.Locale;
import java.util.Scanner;

public class Date {
	private String month1;
	private static int day;
	private int year; // a four digit number.
	private Locale l;
	private TextStyle ts;
static Date Display = Date.Display;
	public  void DisplayDate () {
		var month = "January";
		var day = 2;
		var year = 2023;
	}

	public Date(int monthInt, int day, int year) {
		setDate(monthInt, day, year);
	}

	public Date(String monthString, int day, int year) {
		setDate(monthString, day, year);
	}

	public Date(int year) {
		setDate(1, 1, year);
	}

	

	public void setDate(int monthInt, int day, int year) {
		if (dateOK(monthInt, day, year)) {
			this.month1 = String(monthInt);
			this.day = day;
			this.year = year;
		} else {
			
			System.exit(0);
		}
	}

	public void setDate(String monthString, int day, int year) {
		if (dateOK(monthString, day, year)) {
			this.month1 = monthString;
			this.day = day;
			this.year = year;
		} else {
			System.out.println("Put date");
			System.exit(0);
		}
	}

	public void setDate(int year) {
		setDate(1, 1, year);
	}

	public void setYear(int year) {
		if ((year < 2020) || (year > 9999)) {
			System.out.println("Fatal Error");
			System.exit(0);
		} else
			this.year = year;
	}

	public void setMonth(int monthNumber) {
		if ((monthNumber <= 0) || (monthNumber > 12)) {
			System.out.println("Fatal Error");
			System.exit(0);
		} else
			month1 = String(monthNumber);
	}

	

	public String getMonth() {
		return month1;
	}

	public int getDay() {
		return day;
	}

	public int getYear() {
		return year;
	}

	public String toString() {
		return (month1 + " " + day + ", " + year);
	}

	public boolean equals(Date otherDate) {
		return ((month1.equals(otherDate.month1)) && (day == otherDate.day) && (year == otherDate.year));
	}

	public void var() {
		boolean tryAgain = true;
		Scanner keyboard = new Scanner(System.in);
		while (tryAgain) {
			System.out.println("Enter month, day, and year.");
			System.out.println("Do not use a comma.");
			String monthInput = keyboard.next();
			int dayInput = keyboard.nextInt();
			int yearInput = keyboard.nextInt();
			if (dateOK(monthInput, dayInput, yearInput)) {
				setDate(monthInput, dayInput, yearInput);
				tryAgain = false;
			} else
				System.out.println("Illegal date. Reenter input.");
		}
	
	}

	private boolean dateOK(int monthInt, int dayInt, int yearInt) {
		return ((monthInt >= 1) && (monthInt <= 12) && (dayInt >= 1) && (dayInt <= 31) && (yearInt >= 1000)
				&& (yearInt <= 9999));
	}

	private boolean dateOK(String monthString, int dayInt, int yearInt) {
		return (month(monthString) && (dayInt >= 1) && (dayInt <= 31) && (yearInt >= 1000) && (yearInt <= 9999));
	}

	private boolean month(String monthString) {
		return (month1.equals("January") || month1.equals("February") || month1.equals("March") || month1.equals("April")
				|| month1.equals("May") || month1.equals("June") || month1.equals("July") || month1.equals("August")
				|| month1.equals("September") || month1.equals("October") || month1.equals("November")
				|| month1.equals("December"));
	}
	public class ExactDate {
		public static void main(String[] args) {
		    int year = 2023;

		    System.out.printf("For the year %d:%n", year);
		    for (Month month : Month.values()) {
		      YearMonth ym = YearMonth.of(year, month);
		      System.out.printf("%s: %d days%n", month, ym.lengthOfMonth());
		    }
		  }
		}
	public String String(int month) {

		int daysInMonth = 0;
		switch (month) {
		case 1:
			return "January";
		case 2:
			return "February";
		case 3:
			return "March";
		case 4:
			return "April";
		case 5:
			return "May";
		case 6:
			return "June";
		case 7:
			return "July";
		case 8:
			return "August";
		case 9:
			return "September";
		case 10:
			return "October";
		case 11:
			return "November";
		case 12:
			return "December";
		default:
			System.out.println("Fatal Error");
			
			return "Error"; // to keep the compiler happy
		}
		   
		   
	}
}
