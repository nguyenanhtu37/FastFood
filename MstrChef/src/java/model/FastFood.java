package model;

public class FastFood {
    private int id;
    private String name;
    private String image;
    private double price;
    private String title;
    private String desciption;

    public FastFood(int id, String name, String image, double price, String title, String desciption) {
        this.id = id;
        this.name = name;
        this.image = image;
        this.price = price;
        this.title = title;
        this.desciption = desciption;
    }

    public FastFood() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDesciption() {
        return desciption;
    }

    public void setDesciption(String desciption) {
        this.desciption = desciption;
    }
    
    @Override
    public String toString() {
        return "FastFood{" + "id=" + id + ", name=" + name + ", image=" + image + ", price=" + price + ", title=" + title + ", desciption=" + desciption + '}';
    }
    
    
}
