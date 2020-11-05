public class EmployeeWage
{
    static int calculateWage(int userHours, int userDays, int wagePerHour)
    {
        int TotalWage = 0;
        
        int maximumHours = 100;
        int maximumDays = 20;
        
         if(userHours <= maximumHours && userDays <= maximumDays)
        {
            TotalWage = userHours * wagePerHour;
        }   
        return TotalWage;
    }
    
     public static void main(String []args)
     {
        int TotalWage = 0;
        
        System.out.println("TCS");
        int userHours = 80;
        int userDays = 18;
        int wagePerHour = 10;
        TotalWage = calculateWage(userHours, userDays, wagePerHour); 
        System.out.println(TotalWage);
        
        System.out.println("Infosys");
        userHours = 82;
        userDays = 15;
        wagePerHour = 12;
        TotalWage = calculateWage(userHours, userDays, wagePerHour); 
        System.out.println(TotalWage);
        
        
        System.out.println("AMD");
        userHours = 70;
        userDays = 19;
        wagePerHour = 20;
        TotalWage = calculateWage(userHours, userDays, wagePerHour); 
        System.out.println(TotalWage);
        
        
        System.out.println("Caapgemini");
        userHours = 87;
        userDays = 19;
        wagePerHour = 15;
        TotalWage = calculateWage(userHours, userDays, wagePerHour); 
        System.out.println(TotalWage);
     }
}
