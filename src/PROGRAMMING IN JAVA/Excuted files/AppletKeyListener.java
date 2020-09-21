import java.applet.Applet;

import java.awt.Graphics;

import java.awt.event.KeyListener;

import java.awt.event.KeyEvent;
 

public class AppletKeyListener extends Applet implements KeyListener
{

	char ch;
  
	String str = "hello";
  
	public void init()            // link the KeyListener with Applet
  
	{

    	addKeyListener(this);
  
	}
  			        // override all the 3 abstract methods of KeyListener interface 
  	public void keyPressed(KeyEvent e) 
  	{  showStatus("Key down"); }
  
	public void keyReleased(KeyEvent e)  { 
	  showStatus("Key up");}
  
	public void keyTyped(KeyEvent e)  
  
	{   
    
		ch = e.getKeyChar();
    
		if(ch == 'a')
      
			str = "a for apple";    
    
		else if(ch == 'e')
      
			str = "e for elephant";    
    
		else if(ch == 'i')
      
			str = "i for igloo";    
    
		else if(ch == 'o')
      
			str = "o for ox";    
    
		else if(ch == 'u')
      
			str = "u for umbrella";    
    
		else
      
			str = "Type only vowels a, e, i, o, u only";    
  
    
		repaint();
  
	}    
 


  
	public void paint(Graphics g)
  {
    
		g.drawString(str, 100, 150);
    
		//showStatus("You typed " + ch + " character");
  
}

}

/*<applet code="AppletKeyListener.class" height="400" width="400"> </applet>*/