package model;

public class Item {
    
    private FastFood fastfood;
    private int quantity;

    public Item(FastFood fastfood, int quantity) {
        this.fastfood = fastfood;
        this.quantity = quantity;
    }

    public Item() {
    }

    public Item(Item item, int i) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }
    



    public FastFood getFastfood() {
        return fastfood;
    }

    public void setFastfood(FastFood fastfood) {
        this.fastfood = fastfood;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }


    
}
