import java.util.*;
import java.io.*;
import java.lang.*;


//max[][] - denotes maximum resources that will be required by processes
//allocate[][] - denotes currently allocated resources to processes
//avail[][] - denotes resources available in the system


public class Bankers
{
    private int need[][],allocate[][],max[][],avail[][],numproces,numrecorce;
     
    private void inumprocesut()
	{
     Scanner sc=new Scanner(System.in);
     System.out.print("Enter no. of processes and Respective Resources : ");
     numproces=sc.nextInt();  //Number of process
     numrecorce=sc.nextInt();  //Number of resources
	 
     need=new int[numproces][numrecorce];  //initializing arrays
	 
     max=new int[numproces][numrecorce];
	 
     allocate=new int[numproces][numrecorce];
	 
     avail=new int[1][numrecorce];
      
     System.out.println("Enter the Allocation Matrix: ");
     for(int i=0;i<numproces;i++)
          for(int j=0;j<numrecorce;j++)
         allocate[i][j]=sc.nextInt();  //allocation matrix
       
     System.out.println("Enter the Max Matrix : ");
     for(int i=0;i<numproces;i++)
          for(int j=0;j<numrecorce;j++)
         max[i][j]=sc.nextInt();  //max matrix
       
        System.out.println("Enter the Available Matrix : ");
        for(int j=0;j<numrecorce;j++)
         avail[0][j]=sc.nextInt();  //available matrix
         
        sc.close();
    }
     
    private int[][] calc_need(){
       for(int i=0;i<numproces;i++)
         for(int j=0;j<numrecorce;j++)  //calculating need matrix
          need[i][j]=max[i][j]-allocate[i][j];
        
       return need;
    }
  
    private boolean check(int i){
       //checking if all resources for ith process can be allocated
       for(int j=0;j<numrecorce;j++) 
       if(avail[0][j]<need[i][j])
          return false;
    
    return true;
    }
 
    public void isSafe()
	{
       inumprocesut();
       calc_need();
       boolean done[]=new boolean[numproces];
       int j=0;
 
       while(j<numproces)
	   {  //until all process allocated
       boolean allocated=false;
       for(int i=0;i<numproces;i++)
        if(!done[i] && check(i))
		{  //trying to allocate
            for(int k=0;k<numrecorce;k++)
            avail[0][k]=avail[0][k]-need[i][k]+max[i][k];
            System.out.println("Allocated process : "+i);
            allocated=done[i]=true;
               j++;
        }
          if(!allocated) break;  //if no allocation
       }
       if(j==numproces)  //If all processes are allocated,Then
        System.out.println("\nSafely allocated");
       else
        System.out.println("All proceess cant be allocated safely");
    }
     
    public static void main(String args[])
	{
       new Bankers().isSafe();
    }
}

/*
Expected Output:-

Enter no. of processes and resources : 3 4
Enter allocation matrix -->
1 2 2 1
1 0 3 3
1 2 1 0
Enter max matrix -->
3 3 2 2
1 1 3 4
1 3 5 0
Enter available matrix -->
3 1 1 2
Allocated process : 0
Allocated process : 1
Allocated process : 2
Safely allocated
*/