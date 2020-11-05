package com.designpatternsinjava.builderdesignpattern;

interface ICompanyBuilder 
{
  public CompnayWage build();
}

class CompanyBuilder implements ICompanyBuilder
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

    public String toString()
    {
        return "Company="+company+"\n TotalWage="+totalWage;
    }
}

public class EmployeeWagedemo
{
    public static void main(String args[])
    {
        Vector<CompnayWage> CompnayWageVec = new Vector<CompnayWage>(5);
        
        CompnayWage Obj1 = new CompanyBuilder().setCompany("Amazon").setTotalWage(25000).build();
        CompnayWageVec.add(Obj1);
        
        CompnayWage Obj2 = new CompanyBuilder().setCompany("TCS").setTotalWage(22000).build();
         CompnayWageVec.add(Obj2);
        
        CompnayWage Obj3 = new CompanyBuilder().setCompany("Infosys").setTotalWage(23000).build();
         CompnayWageVec.add(Obj3);
         
        CompnayWage Obj4 = new CompanyBuilder().setCompany("ISRO").setTotalWage(45000).build();
         CompnayWageVec.add(Obj4);
         
        CompnayWage Obj5 = new CompanyBuilder().setCompany("AMD").setTotalWage(15000).build();
         CompnayWageVec.add(Obj5);
        
        
        //System.out.println(obj);
    }
}
