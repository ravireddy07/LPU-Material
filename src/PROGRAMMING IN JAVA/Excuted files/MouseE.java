import java.awt.*;        // for GUI
import java.awt.event.*;  // for event
import java.applet.*;    // for applet
public class MouseE extends Applet implements MouseListener,MouseMotionListener // MouseListener MouseMotionListener both are interfaces.These r event handlersfor various mouse events.
{String msg ="";
  int mx=0,my=0;   // Coordinates of mouse
  public void init()      //here applet like to register itself as a listener for events.
  {addMouseListener(this); // members of component class superclass of Applet..both r  as source & Listener for events. 
    addMouseMotionListener(this);
  }
  // mouseClicked is a method of MouseEvent class ( subclass of InputEvent class)
  public void mouseClicked(MouseEvent me)
  {mx=0;my=10;   // msg will print on x axis and y axis of applet screen
    msg="Mouse clicked";
    repaint();}
    
    // mouseEntered is a method of MouseEvent class ( subclass of InputEvent class)
  public void mouseEntered(MouseEvent me)
  {mx=0;my=10;msg="Mouse entered"; // msg will print on x axis and y axis of applet screen
    repaint();}
    // mouseExited is a method of MouseEvent class ( subclass of InputEvent class)
    public void mouseExited(MouseEvent me)
    {mx=0;my=10;msg="Mouse exited";
      repaint();
    }
    // mouseReleased is a method of MouseEvent class ( subclass of InputEvent class)
    public void mouseReleased(MouseEvent me)
    {mx=me.getX(); // return X and Y coordinates of Mouse when event occured
      my=me.getY();
      msg="Up";    // print UP as soon as Mouse realse
      repaint();
    }
    // mousePressed is a method of MouseEvent class ( subclass of InputEvent class)
    public void mousePressed(MouseEvent me)
    {mx=me.getX(); // return X and Y coordinates of Mouse when event occured
      my=me.getY();
      msg="Down";     // print Down when Mouse pressed
      repaint();
      
    }
// mouseDragged is a method of MouseEvent class ( subclass of InputEvent class)
  public void mouseDragged(MouseEvent me)
  { mx=me.getX(); // return object with X & Y coordinates of Mouse when event( dragging) occured
    my=me.getY();
    msg="*"; // print * as u  like to  dragg the mouse
    showStatus("Dragging mouse at"+ mx +","+ my); //print x axis & y axis while mouse dragging on statusBar.
    repaint();
  }
// me.getX() and me.getY -->  return object with x axis and y axis of Mouse while it is moving...(me is object of MouseEvent class )
  // mouseMoved is a method of MouseEvent class ( subclass of InputEvent class)
  public void mouseMoved(MouseEvent me)
  {showStatus("Moving mouse at "+ me.getX() + ","+ me.getY());}
  


public void paint(Graphics g)
{g.drawString(msg,mx,my);}
}
/*<applet code="MouseE" width=300 height=300>
  </applet>*/