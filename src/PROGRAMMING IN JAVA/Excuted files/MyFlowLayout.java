// flowLayout   
 import java.awt.*;  
    import javax.swing.*;  
      
    public class MyFlowLayout{  
    JFrame f;  
    MyFlowLayout(){  
        f=new JFrame();  
          
        JButton b1=new JButton("1");  //buttons
        JButton b2=new JButton("2");  
        JButton b3=new JButton("3");  
        JButton b4=new JButton("4");  
        JButton b5=new JButton("5");  

                  
        //f.add(b1);
f.add(b2);f.add(b3);f.add(b4);f.add(b5); // add() for sticking the buttons

          
        f.setLayout(new FlowLayout(FlowLayout.CENTER));  
        //setting flow layout of  alignment .. use RIGHT & LEFT 
      
        f.setSize(300,300);  // for size
        f.setVisible(true);  // for visibility
    }  
    public static void main(String[] args) {  
        new MyFlowLayout(); 
        
 
    }  
    }  
