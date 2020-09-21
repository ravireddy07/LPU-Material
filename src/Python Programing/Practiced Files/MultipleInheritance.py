class Horse:
     
    maxHeight = 200; # centimeter
     
    def __init__(self, name, horsehair):
        self.name = name
        self.horsehair = horsehair
     
    def run(self):
        print ("Horse run")   
      
    def showName(self):
        print ("Name: (House's method): ", self.name)   
         
    def showInfo(self):
        print ("Horse Info")    
  
 
class Donkey:
     
    def __init__(self, name, weight):        
        self.name = name
        self.weight = weight    
         
         
    def run(self):
        print ("Donkey run")     
         
    def showName(self):        
        print ("Name: (Donkey's method): ", self.name)   
 
    def showInfo(self):
        print ("Donkey Info")               
   
# Mule class inherits from Horse and Donkey.
class Mule(Horse, Donkey):
     
    def __init__(self, name, hair, weight): 
        Horse.__init__(self, name, hair)  
        Donkey.__init__(self, name, weight)
         
     
    def run(self):   
        print ("Mule run")      
 
 
    def showInfo(self):
        print ("-- Call Mule.showInfo: --")
        Horse.showInfo(self)
        Donkey.showInfo(self)
 
# ---- Test ------------------------------------
# 'maxHeight' variable inherited from Horse class.
print ("Max height ", Mule.maxHeight)
 
mule = Mule("Mule", 20, 1000)
 
mule.run()
 
mule.showName() 
 
mule.showInfo()
