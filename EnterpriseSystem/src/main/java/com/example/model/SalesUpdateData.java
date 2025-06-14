package com.example.model; // Adjust the package name as needed

public class SalesUpdateData {

    private String salespersonName;
    private double target;
    private int numberOfUnits;
    private int numberOfUnitsSold;
    private boolean isComplete;

    // Default constructor
    public SalesUpdateData() {
    }

    // Getter and Setter for salespersonName
    public String getSalespersonName() {
        return salespersonName;
    }

    public void setSalespersonName(String salespersonName) {
        this.salespersonName = salespersonName;
    }

    // Getter and Setter for target
    public double getTarget() {
        return target;
    }

    public void setTarget(double target) {
        this.target = target;
    }

    // Getter and Setter for numberOfUnits
    public int getNumberOfUnits() {
        return numberOfUnits;
    }

    public void setNumberOfUnits(int numberOfUnits) {
        this.numberOfUnits = numberOfUnits;
    }

    // Getter and Setter for numberOfUnitsSold
    public int getNumberOfUnitsSold() {
        return numberOfUnitsSold;
    }

    public void setNumberOfUnitsSold(int numberOfUnitsSold) {
        this.numberOfUnitsSold = numberOfUnitsSold;
    }

    // Getter and Setter for isComplete
    public boolean isComplete() {
        return isComplete;
    }

    public void setComplete(boolean isComplete) {
        this.isComplete = isComplete;
    }

	@Override
	public String toString() {
		return "SalesUpdateData [salespersonName=" + salespersonName + ", target=" + target + ", numberOfUnits="
				+ numberOfUnits + ", numberOfUnitsSold=" + numberOfUnitsSold + ", isComplete=" + isComplete + "]";
	}
}
