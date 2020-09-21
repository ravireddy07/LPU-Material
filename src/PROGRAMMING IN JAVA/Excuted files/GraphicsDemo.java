    import java.applet.Applet;  
    import java.awt.*;  
      
    public class GraphicsDemo extends Applet{  
      
    public void paint(Graphics g){  
    g.setColor(Color.red);  
    g.drawString("Welcome",50, 50);  //drawString(msg, xaxis, y axis)
    g.drawLine(20,30,20,300);  //drawLine( x axis, y axis, x2 axis, y2 axis)
    g.drawRect(70,100,30,30);  //drawRect( x axis,y axis,width hieght)
    g.fillRect(170,100,30,30); //fillRect( x axis, y axis, width,hieght) 
    g.drawOval(70,200,30,30);  //drawOval( x axis, y axis, width,hieght) 
      
    g.setColor(Color.pink);  
    g.fillOval(170,200,30,30);  //fillOval( x axis, y axis, width,hieght) 
    g.drawArc(90,150,30,30,30,270);  //drawArc( x axis, y axis, width,hieght, int start angle, int arc angle) 
    g.fillArc(270,150,30,30,0,180);  //fillArc( x axis, y axis, width,hieght, int start angle, int arc angle) 
      
    }  
    }  

/*<applet code="GraphicsDemo" width="500",height="500">
</applet>*/
