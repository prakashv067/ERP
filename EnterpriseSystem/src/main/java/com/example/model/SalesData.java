package com.example.model; // Adjust the package name as needed

public class SalesData {
    private String salespersonname;
    private double target;
    private int noofunits;
    private int noofunitsold;
    private boolean complete;

    // Default constructor
    public SalesData() {
    }

    // Getters and setters
    public String getSalespersonname() {
        return salespersonname;
    }

    public void setSalespersonname(String salespersonname) {
        this.salespersonname = salespersonname;
    }

    public double getTarget() {
        return target;
    }

    public void setTarget(double target) {
        this.target = target;
    }

    public int getNoofunits() {
        return noofunits;
    }

    public void setNoofunits(int noofunits) {
        this.noofunits = noofunits;
    }

    public int getNoofunitsold() {
        return noofunitsold;
    }

    public void setNoofunitsold(int noofunitsold) {
        this.noofunitsold = noofunitsold;
    }

    public boolean isComplete() {
        return complete;
    }

    public void setComplete(boolean complete) {
        this.complete = complete;
    }

    @Override
    public String toString() {
        return "SalesData{" +
                "salespersonname='" + salespersonname + '\'' +
                ", target=" + target +
                ", noofunits=" + noofunits +
                ", noofunitsold=" + noofunitsold +
                ", complete=" + complete +
                '}';
    }
}
