package model;

public class ChartModel {

    String col1;
    String col2;
    String date;

    public ChartModel() {
    }

    public ChartModel(String col1, String col2, String date) {
        this.col1 = col1;
        this.col2 = col2;
        this.date = date;
    }

    public String getCol1() {
        return col1;
    }

    public void setCol1(String col1) {
        this.col1 = col1;
    }

    public String getCol2() {
        return col2;
    }

    public void setCol2(String col2) {
        this.col2 = col2;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }
}
