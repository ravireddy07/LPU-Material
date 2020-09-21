function convertToRoman(num) {
 var sid = [],def=[1,5,10,50,100,500,1000];
 var roman = {
     1:'I',
     5:'V',
     10:'X',
     50:'L',
     100:'C',
     500:'D',
     1000:'M'
 };
 var count = num.toString().length;
 var div,sen,temp,elm;
 // loop it based on the length of num..
 while(num>0){
     div = Math.pow(10,count-1);
     sen = Math.floor(num/div)*div;
     num = num%div;
     --count;
     temp = getPos(sen,def,div);
     console.log(sen+'  '+temp);
     // special case
     if(temp-sen===div){
         sid.push(roman[div]);
         sid.push(roman[temp]);
     }
     else{
         while(sen>=temp){
            elm = roman[temp] || roman[div];
            sid.push(elm);
            temp+=div;
        }
     }
     def.splice(def.indexOf(sen),1);
 }
 console.log(sid.join(''));
 return sid.join('');
}
function getPos(sen,def,div){
    def.push(sen); //pushed the number 
    def.sort((a,b)=> a-b);
    console.log(def);
    if(Math.abs(sen-def[def.indexOf(sen)+1])<=div)
         // we have the return that number;
         return def[def.indexOf(sen)+1];
    else
         // we have to send the previous number;
         return def[def.indexOf(sen)-1];
}
convertToRoman(99);
