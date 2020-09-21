    import java.awt.*;  
    import java.awt.event.*;  
      
    import javax.swing.*;  
      
    public class CardLayoutExample extends JFrame implements ActionListener{  //ActionListener interface for Button event
    CardLayout card;  //CardLayout class
    JButton b1,b2,b3;  
    Container c;  // Container class
        CardLayoutExample(){  //constructor
              
            c=getContentPane();  
            card=new CardLayout(10,10);  //Constructor CardLayout with parameters
    //create CardLayout object with 10 hor space and 10 ver space  
            c.setLayout(card);  
              
            b1=new JButton("Btech");  
            b2=new JButton("Bpharm");  
            b3=new JButton("Mtech");  
            b1.addActionListener(this);  
            b2.addActionListener(this);  
            b3.addActionListener(this);  
                  
            c.add(b1);c.add(b2);c.add(b3);  
                              
        }  
        public void actionPerformed(ActionEvent e) {  //actionPerformed is abstract method of ActionListener interface and ActionEvent is class
        card.next(c);  // card object .next() return with new card from container
        }  
      
        public static void main(String[] args) {  
            CardLayoutExample cl=new CardLayoutExample();  
            cl.setSize(400,400);  // for size
            cl.setVisible(true);  // for visibility
            
        }  
    }  
