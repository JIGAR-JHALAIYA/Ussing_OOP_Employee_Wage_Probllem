package com.designpatternsinjava.builderdesignpattern;
import java.util.ArrayList;

class CompanyBuilder
{
    String company;
    int totalWage;
 
    public CompanyBuilder setCompany(String company)
    {
        this.company = company;
        return this;
    }

    public CompanyBuilder setTotalWage(int totalWage)
    {
        this.totalWage = totalWage;
        return this;
    }
 
    public CompnayWage build()
    {
        return new CompnayWage(company, totalWage);
    }
}

class CompnayWage
{
    String company;
    int totalWage;

    CompnayWage(String company, int totalWage)
    {
        this.company=company;
        this.totalWage=totalWage;
    }
    
    public String getCompny()
    {
        return company;
    }
    
    public int getTotalWage()
    {
        return totalWage;
    }

    public String toString()
    {
        return "Company="+company+"\n TotalWage="+totalWage;
    }
}

public class EmployeeWagedemo
{
    public static void main(String args[])
    {
        ArrayList<CompnayWage> CompnayWageArrayList = new ArrayList<CompnayWage>();
        
        CompnayWage Obj1 = new CompanyBuilder().setCompany("Amazon").setTotalWage(25000).build();
        CompnayWageArrayList.add(Obj1);
        
        CompnayWage Obj2 = new CompanyBuilder().setCompany("TCS").setTotalWage(22000).build();
         CompnayWageArrayList.add(Obj2);
        
        CompnayWage Obj3 = new CompanyBuilder().setCompany("Infosys").setTotalWage(23000).build();
         CompnayWageArrayList.add(Obj3);
         
        CompnayWage Obj4 = new CompanyBuilder().setCompany("ISRO").setTotalWage(45000).build();
         CompnayWageArrayList.add(Obj4);
         
        CompnayWage Obj5 = new CompanyBuilder().setCompany("AMD").setTotalWage(15000).build();
         CompnayWageArrayList.add(Obj5);
        
        String CompnyName = "ISRO"
        for (int i = 0; i < CompnayWageArrayList.size(); i++)
        {
            if(CompnayWageArrayList.get(i).getCompny() == CompnyName)
            {
              System.out.println(CompnayWageArrayList.get(i).getTotalWage);
              break;
            }
            
        }
        //System.out.println(obj);
    }
}
