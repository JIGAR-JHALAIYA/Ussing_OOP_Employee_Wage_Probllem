import java.util.Scanner;
public class HelloWorld{

     public static void main(String []args)
     {
        int TotalWage = 0 
        int maximumHours = 100;
        int maximumDays = 20;
        
        int userHours = 80;
        int userDays = 18;
        
        Scanner sc= new Scanner(System.in); 
        System.out.print("Enter Maximum Hours : ");  
        userHours= sc.nextInt();
        
        System.out.print("Enter Maximum Days : ");  
        userDays= sc.nextInt();
        
        if(userHours <= maximumHours && userDays <= maximuDays)
        {
            TotalWage = maximumHours * 8;
        }        
        
        System.out.println(TotalWage);
     }
}
