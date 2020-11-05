package com.designpatternsinjava.builderdesignpattern;

public class CompanyBuilder
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
 
    public CompanyBuilder build()
    {
        return new CompnayWage (company, totalWage);
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
        CompnayWage Obj = new CompanyBuilder().setCompany("Amazon").setTotal(25000).build();
        
        System.out.println(obj);
    }
}

