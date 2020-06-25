package library;
import java.io.*;
import java.sql.*;
import java.util.ArrayList;
public class LIBList {
    private ArrayList<Integer> idList = new ArrayList<Integer>(); 
    private ArrayList<String> nameList = new ArrayList<String>();   
    private ArrayList<String> writerList = new ArrayList<String>();   
    private ArrayList<Integer> priceList = new ArrayList<Integer>();         
    private ArrayList<Integer> lendList = new ArrayList<Integer>(); 	
    private ArrayList<Integer> numberList = new ArrayList<Integer>();                              
    public LIBList() {
    }
    public void setId(int index, Integer id) {
        this.idList.add(index, id);
    }
    public void setName(int index, String name) {
        this.nameList.add(index, name);
    }
    public void setWriter(int index, String writer) {
        this.writerList.add(index, writer);
    }
    public void setPrice(int index, Integer price) {
        this.priceList.add(index, price);
    }
    public void setLend(int index, Integer lend) {
        this.lendList.add(index, lend);
    }
    public void setNumber(int index, Integer number) {
        this.numberList.add(index, number);
    }
    public Integer[] getId() {
         return idList.toArray(new Integer[idList.size()]);
    }
    public String[] getName() {
         return nameList.toArray(new String[nameList.size()]);
    }
    public String[] getWriter() {
         return writerList.toArray(new String[writerList.size()]);
    }
    public Integer[] getPrice() {
         return priceList.toArray(new Integer[priceList.size()]);
    }
    public Integer[] getLend() {
         return lendList.toArray(new Integer[lendList.size()]);
    }
    public Integer[] getNumber() {
        return numberList.toArray(new Integer[numberList.size()]);
   }
    public int getListSize() {       
         return idList.size();
    }
}
