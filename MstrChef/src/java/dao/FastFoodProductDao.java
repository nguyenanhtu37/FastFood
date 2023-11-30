package dao;

import database.DatabaseInfor;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;
import model.Account;
import model.Category;
import model.FastFood;

public class FastFoodProductDao {
    Connection connection;
    PreparedStatement preparedStatement;
    ResultSet resultSet;
    
    public ArrayList<FastFood> getFastFoodList(){
        ArrayList<FastFood> fastfood = new ArrayList<>();
        try {
            String query = "select * from Product";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                FastFood fastfoods = new FastFood(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),resultSet.getDouble(4), resultSet.getString(5), resultSet.getString(6));
                fastfood.add(fastfoods);
                
            }
        } catch (Exception e) {
        }
        return fastfood;
        
    }
    
    public ArrayList<Category> getCategories(){
        ArrayList<Category> categories = new ArrayList<>();
        try {
            String query = "select * from Category";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                Category category = new Category(resultSet.getInt(1), resultSet.getString(2));
                categories.add(category);
            }
        } catch (Exception e) {
        }
        return categories;
    }
    
    public FastFood getLatestFastFood(){
        try {
             String query = "select top 1 * from Product\n" +
                            "order by productID desc";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                return new FastFood(resultSet.getInt(1), resultSet.getString(2),resultSet.getString(3), resultSet.getDouble(4),
                                  resultSet.getString(5), resultSet.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public ArrayList<FastFood> getFastFoodByCategoryId(String cateId){
        ArrayList<FastFood> fastfood = new ArrayList<>();
        try {
            String query = "select * from Product where cateId = ?";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, cateId );
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                FastFood fastfoods  = new FastFood(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),resultSet.getDouble(4)
                        , resultSet.getString(5), resultSet.getString(6));
                fastfood.add(fastfoods);
            }
        } catch (Exception e) {
        }
        return fastfood;
    }
    
     public FastFood getFastFoodByItsId(String productId){
        try {
             String query = "select * from Product\n" +
                            "where productId = ?";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, productId);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                return new FastFood(resultSet.getInt(1), resultSet.getString(2),resultSet.getString(3), resultSet.getDouble(4),
                                  resultSet.getString(5), resultSet.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
     
     public ArrayList<FastFood> getFastFoodBySearchName(String productName){
        ArrayList<FastFood> fastfood = new ArrayList<>();
        try {
            String query = "select * from Product\n" +
                            "where [productName] like ?";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, "%" + productName + "%");
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                FastFood fastfoods = new FastFood(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),resultSet.getDouble(4)
                        , resultSet.getString(5), resultSet.getString(6));
                fastfood.add(fastfoods);
            }
        } catch (Exception e) {
        }
        return fastfood;
    }
     
     public Account loginByUserPass(String username, String password){
        try {
             String query = "select * from Account\n" +
                            "where [username] = ?\n" +
                            "and [password] = ?";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                return new Account(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getInt(4));
                        
            }
        } catch (Exception e) {
        }
        return null;
    }
     
     public Account checkAccountExist(String username){
        try {
             String query = "select * from Account\n" +
                            "where [username] = ?";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                return new Account(resultSet.getInt(1),
                        resultSet.getString(2),
                        resultSet.getString(3),
                        resultSet.getInt(4));
                        
            }
        } catch (Exception e) {
        }
        return null;
    }
     
    public void signUpCustomer(String username, String password){
        try {
             String query = "insert into Account\n" +
                            "values (?,?,0,0)";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, username);
            preparedStatement.setString(2, password);
            preparedStatement.executeUpdate();
            
        } catch (Exception e) {
        }
    }       
    
public List<FastFood> getFastFoodBySellId(int sell_ID) {
    List<FastFood> list = new ArrayList<>();
    try {
        String query = "SELECT * FROM Product WHERE sell_ID = ?";
        connection = DatabaseInfor.makeConnection();
        preparedStatement = connection.prepareStatement(query);
        preparedStatement.setInt(1, sell_ID); // Sử dụng tham số sell_ID trong truy vấn
        resultSet = preparedStatement.executeQuery();
        while (resultSet.next()) {
            FastFood fastfoods = new FastFood(resultSet.getInt(1), resultSet.getString(2),
                    resultSet.getString(3), resultSet.getDouble(4), resultSet.getString(5), resultSet.getString(6));
            list.add(fastfoods);
        }
    } catch (Exception e) {
        // Xử lý ngoại lệ (hiện tại không có mã xử lý nào)
        e.printStackTrace();
    }
    return list;

        
    }
     
    
      public void deleteProduct(String productId){
        try {
             String query = "delete from Product\n" +
                            "where productId = ?";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, productId);
            preparedStatement.executeUpdate();
            
        } catch (Exception e) {
        }
    }
      
      public void addProduct(String productName, String productImage, String productPrice, String title, String productDescription, String category,int sellId){
        try {
             String query = "INSERT [dbo].Product ([name], [image], [price], [title], [description], [cateId], [sell_ID])\n" +
                            "VALUES (?,?,?,?,?,?,?)";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, productName);
            preparedStatement.setString(2, productImage);
            preparedStatement.setString(3, productImage);
            preparedStatement.setString(4, title);
            preparedStatement.setString(5, productDescription  );
            preparedStatement.setString(6, category);
            preparedStatement.setInt(7, sellId);
            preparedStatement.executeUpdate();
            
        } catch (Exception e) {
        }
    }
      
      public void editProduct(String productName, String productImage, String productPrice, String title,String productDescription, String category,String productId){
        try {
             String query = "update ProductJerseys\n" +
                            "set [name] = ?,\n" +
                            "[image] = ?,\n" +
                            "[price] = ?,\n" +
                            "[title] = ?,\n" +
                            "[description] = ?,\n" +
                            "[cateId] = ?\n" +
                            "where  id = ?";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setString(1, productName);
            preparedStatement.setString(2, productImage);
            preparedStatement.setString(3, productPrice);
            preparedStatement.setString(4, title);
            preparedStatement.setString(5, productDescription);
            preparedStatement.setString(6, category);
            preparedStatement.setString(7, productId);
            preparedStatement.executeUpdate();
            
        } catch (Exception e) {
        }
    }
      
    public int countAllProduct(){
        String query = "select count(*) from Product";
        try {
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            resultSet = preparedStatement.executeQuery();
            while (resultSet.next()) {
                return resultSet.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }
    
    public ArrayList<FastFood> pagingFastFood(int count){
        ArrayList<FastFood> fastfoods = new ArrayList<>();
        try {
            String query = "select * from Product\n" +
                            "order by productId\n" +
                            "offset ? rows fetch next 9 rows only";
            connection = DatabaseInfor.makeConnection();
            preparedStatement = connection.prepareStatement(query);
            preparedStatement.setInt(1, (count-1)*9 );
            resultSet = preparedStatement.executeQuery();
            while(resultSet.next()){
                FastFood fastfood = new FastFood(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3),resultSet.getDouble(4)
                        , resultSet.getString(5), resultSet.getString(6));
                fastfoods.add(fastfood);
            }
        } catch (Exception e) {
        }
        return fastfoods;
    }

                
}
