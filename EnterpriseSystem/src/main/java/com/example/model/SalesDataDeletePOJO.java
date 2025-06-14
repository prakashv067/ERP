package com.example.model; // Adjust the package name as needed

public class SalesDataDeletePOJO {

    private String salespersonName;

    // Getter for salespersonName
    public String getSalespersonName() {
        return salespersonName;
    }

    // Setter for salespersonName
    public void setSalespersonName(String salespersonName) {
        this.salespersonName = salespersonName;
    }

	@Override
	public String toString() {
		return "SalesDataDeletePOJO [salespersonName=" + salespersonName + "]";
	}
}
