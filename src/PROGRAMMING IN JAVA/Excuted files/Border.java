//Border Layout    
import java.awt.*;  
    import javax.swing.*;  
      
    public class Border {  
    JFrame f;  //object with class
    Border(){  
        f=new JFrame();  
          
        JButton b1=new JButton("UP");;  //button object with JButton class
        JButton b2=new JButton("DOWN");;  
        JButton b3=new JButton("RIGHT");  
        JButton b4=new JButton("LEFT"); 
        JButton b5=new JButton("CENTER"); 
          
        f.add(b1,BorderLayout.NORTH);  //add() method for sticking the buttons with BorderLayout
        f.add(b2,BorderLayout.SOUTH);  
        f.add(b3,BorderLayout.EAST);  
        f.add(b4,BorderLayout.WEST);  
        f.add(b5,BorderLayout.CENTER);  
          
        f.setSize(500,1000); // for size 
        f.setVisible(true);  // for visibility
    }  
    public static void main(String[] args) {  
        new Border();  
    }  
    }  
