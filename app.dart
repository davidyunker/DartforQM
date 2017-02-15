
import "dart:html";

void main() {

querySelector("#parseBtn").onClick.listen(parseText);
parseText();

}

void parseText ()
{
  int tStartCounter = 0;
  int eEndCounter = 0;
  int bothCounter = 0;
  var preambleNow = querySelector('#preamble').text.toLowerCase();

  print("Hi Christian!");
  var preambleList = preambleNow.split(" ");


    for (var i = 0; i < preambleList.length; i++)

      if (preambleList[i].startsWith("t")){
        tStartCounter += 1;
        }


    for (var i = 0; i < preambleList.length; i++)

        if  (preambleList[i].endsWith("e")) {
        eEndCounter += 1;
        }


      for (var i = 0; i < preambleList.length; i++)


      if (preambleList[i].startsWith("t") && preambleList[i].endsWith("e")) {
        bothCounter+= 1;
      }







   console.log(eEndCounter);
   console.log(tStartCounter);
   console.log(bothCounter);
  querySelector('#endE').text = eEndCounter;
  querySelector('#startT').text = tStartCounter;
  querySelector('#both').text = bothCounter;
}




