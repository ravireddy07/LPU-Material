class Item(object):
             def __init__(self,n,v,w):
                          self.name=n
                          self.value=float(v)
                          self.weight=float(w)
             def getName(self):
                          return self.name
             def getValue(self):
                          return self.value
             def getWeight(self):
                          return self.weight
             def __str__(self):
                          result='<'+self.name+','+str(self.value)+','+str(self.weight)+'>'
                          return result

def value(item):
             return item.getValue()
def weightInverse(item):
             return 1.0/item.getWeight()
def density(item):
             return item.getValue()/item.getWeight()
def buildItems():
             names=['clock','painting','radio','vase','book','computer']
             values=[175,90,20,50,10,200]
             weights=[10,9,4,2,1,20]
             Items=[]
             for i in range(len(values)):
                          Items.append(Item(names[i],values[i],weights[i]))
             return Items

            
# greedy algorithm
def greedy(items,maxWeight,keyFunction):
             """ Assume items a list, maxWeight>=0,keyFunction maps
             elements of items to floats"""
             itemscopy=sorted(items,key=keyFunction,reverse=True)
             result=[]
             totalValue=0.0
             totalWeight=0.0
             for i in range(len(itemscopy)):
                          if (totalWeight+itemscopy[i].getWeight())<=maxWeight:
                                       result.append(itemscopy[i])
                                       totalWeight+=itemscopy[i].getWeight()
                                       totalValue+=itemscopy[i].getValue()
             return (result,totalValue)
def testGreedy(items,constraint,keyFunction):
             taken,val=greedy(items,constraint,keyFunction)
             print ('Total Value of items taken=',val)
             for item in taken:
                          print (' ',item)
def testGreedys(a):
             maxWeight=a
             items=buildItems()
             print ('use greedy by value to fill knapsack of size',maxWeight)
             testGreedy(items,maxWeight,value)
             print( '\n use greedy by Weight to fill knapsack of size',maxWeight)
             testGreedy(items,maxWeight,weightInverse)
             print ('\n use greedy by density to fill knapsack of size',maxWeight)
             testGreedy(items,maxWeight,density)
testGreedys(30)
