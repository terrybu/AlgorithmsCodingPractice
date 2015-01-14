
public class SalaryWorker {

	DayOfWeek day;
	
	public SalaryWorker() {
		this.day = null; 
	}
	
	void printWhatHeIsThinking() {
		
		switch (this.day) {
		case MONDAY: {
			System.out.println("AHHHH I WANNA JUMP CLIFF MONDAY!");
			break;
		}
		case WEDNESDAY: {
			System.out.println("WHENS THE WEEK OVER ITS ONLY WED!@?");
			break;
		}
		case FRIDAY: {
			System.out.println("YAY!!! FRIDAY!!");
			break;
		}
		default:
			System.out.println("I'm okay on this day");
			break;
		}
		
	}
	
}
