import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  String currentDisplay = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Container(
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Color.fromARGB(202, 108, 128, 126),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    width: 600,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                    alignment: Alignment.centerRight,
                    child: Text("$currentDisplay",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 8,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                    )
                  ),
                ),
              ]),
          ),
        ),



        // BOTTOM



        Expanded(
          flex: 6,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    ElevatedButton(
                      child: Text("AC",
                        style: TextStyle(fontSize: 30)
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Color(0xffb6C807E),
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          currentDisplay = "";
                        });
                      }
                    ),

                    ElevatedButton(
                      child: Text("C",
                        style: TextStyle(fontSize: 30)
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Color(0xffb6C807E),
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          if(currentDisplay != ""){
                          currentDisplay = currentDisplay.substring(0, currentDisplay.length - 1);
                          }
                        });
                      }
                    ),

                    ElevatedButton(
                      child: Text("%",
                        style: TextStyle(fontSize: 30, color: Color(0xffb33998F))
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.white,
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay + "%";
                        });
                      }
                    ),

                    ElevatedButton(
                      child: Text("÷",
                        style: TextStyle(fontSize: 30, color: Color(0xffb33998F))
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.white,
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay + "/";
                        });
                      }
                    ),

                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("7", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"7";
                        });
                      }
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("8", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"8";
                        });
                      }
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("9", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"9";
                        });
                      }
                    ),

                    ElevatedButton(
                      child: Text("×",
                        style: TextStyle(fontSize: 30, color: Color(0xffb33998F))
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.white,
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay + "/";
                        });
                      }
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("4", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"4";
                        });
                      }
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("5", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"5";
                        });
                      }
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("6", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"6";
                        });
                      }
                    ),

                    ElevatedButton(
                      child: Text("-",
                        style: TextStyle(fontSize: 30, color: Color(0xffb33998F))
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.white,
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay + "-";
                        });
                      }
                    ),
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("1", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"1";
                        });
                      }
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("2", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"2";
                        });
                      }
                    ),
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("3", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"3";
                        });
                      }
                    ),

                    ElevatedButton(
                      child: Text("+",
                        style: TextStyle(fontSize: 30, color: Color(0xffb33998F))
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.white,
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay + "+";
                        });
                      }
                    ),
                  ],
                ),

Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("00", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"00";
                        });
                      }
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text("0", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+"0";
                        });
                      }
                    ),

                    TextButton(
                      style: TextButton.styleFrom(
                        shape: CircleBorder(),
                        minimumSize: Size(70, 70),
                      ),
                      child: Text(".", 
                        style: TextStyle(fontSize: 35, color: Color(0xffbDADEE1) )),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay+".";
                        });
                      }
                    ),

                    ElevatedButton(
                      child: Text("=",
                        style: TextStyle(fontSize: 30, color: Color(0xffb33998F))
                      ),
                      style: ElevatedButton.styleFrom(
                        shape: CircleBorder(),
                        primary: Colors.white,
                        minimumSize: Size(70, 70),
                      ),
                      onPressed: (){
                        setState((){
                          currentDisplay = currentDisplay + "=";
                        });
                      }
                    ),
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ],
    );

  }
}

