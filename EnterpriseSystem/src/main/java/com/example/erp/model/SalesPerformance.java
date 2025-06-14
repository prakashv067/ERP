package com.example.erp.model; // Adjust the package name as needed

public class SalesPerformance {

    private String salespersonName;
    private String target;
    private String noofunits;
    private String noofunitsold;
    private String complete;

    // Default constructor
    public SalesPerformance() {
    }

    // Parameterized constructor (optional)
    public SalesPerformance(String salespersonName, String target, String noofunits, String noofunitsold, String complete) {
        this.salespersonName = salespersonName;
        this.target = target;
        this.noofunits = noofunits;
        this.noofunitsold = noofunitsold;
        this.complete = complete;
    }

    // Getter and Setter for salespersonName
    public String getSalespersonName() {
        return salespersonName;
    }

    public void setSalespersonName(String salespersonName) {
        this.salespersonName = salespersonName;
    }

    // Getter and Setter for target
    public String getTarget() {
        return target;
    }

    public void setTarget(String target) {
        this.target = target;
    }

    // Getter and Setter for noOfUnits
    public String getNoOfUnits() {
        return noofunits;
    }

    public void setNoOfUnits(String noofunits) {
        this.noofunits = noofunits;
    }

    // Getter and Setter for noOfUnitsSold
    public String getNoOfUnitsSold() {
        return noofunitsold;
    }

    public void setNoOfUnitsSold(String noofunitsold) {
        this.noofunitsold = noofunitsold;
    }

    // Getter and Setter for completionStatus
    public String getCompletionStatus() {
        return complete;
    }

    public void setCompletionStatus(String complete) {
        this.complete = complete;
    }

    @Override
    public String toString() {
        return "SalesPerformance{" +
                "salespersonName='" + salespersonName + '\'' +
                ", target='" + target + '\'' +
                ", noofunits='" + noofunits + '\'' +
                ", noofunitsold='" + noofunitsold + '\'' +
                ", complete='" + complete + '\'' +
                '}';
    }
}
