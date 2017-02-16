
import "dart:html";



void main() {
  // The biggest learning curve for the Dart version of the project was the syntax, including
  // the main method.



  querySelector("#parseBtn").onClick.listen(parseText);
  //another change for me in terms of syntax was handling event listeners.

  }

  void parseText (MouseEvent event) {
    var tStartCounter = 0;
    var eEndCounter = 0;
    var bothCounter = 0;
    var preambleNow = querySelector('#preamble').text.toLowerCase().replaceAll(",", "");

    print("I'm really enjoying learning about Dart!");
    var preambleList = preambleNow.split(" ");


      for (var i = 0; i < preambleList.length; i++)
        {
             if (preambleList[i].startsWith("t") && preambleList[i].endsWith("e")) {
              bothCounter+= 1;
              tStartCounter += 1;
              eEndCounter += 1;


              }

            else if (preambleList[i].startsWith("t")){
              tStartCounter += 1;
              }

            else if  (preambleList[i].endsWith("e")) {
              eEndCounter += 1;
              }
            else {
              print("Word I don't care about");
              }

        }

       print(eEndCounter);
       print(tStartCounter);
       print(bothCounter);
      querySelector('#endE').text = eEndCounter;
      querySelector('#startT').text = tStartCounter;
      querySelector('#both').text = bothCounter;

  }




