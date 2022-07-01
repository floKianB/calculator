import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  Calculator({Key? key}) : super(key: key);

  @override
  State<Calculator> createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  bool mode = true;
  String currentDisplay = "";
  String result = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 1,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:[
                Icon(
                  Icons.menu,
                  size: 50,
                ),
                
                TextButton(
                  child: Icon(
                    mode == true ? Icons.nightlight_outlined : Icons.nightlight,
                    size: 40,
                    color: Colors.black,
                  ),
                  onPressed: (){
                    setState((){
                      mode = mode == true ? mode = false : mode = true;
                    });
                  },
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 25, vertical: 20),
            decoration: BoxDecoration(
              color: Color.fromARGB(202, 108, 128, 126),
              borderRadius: BorderRadius.circular(15),
            ),
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    width: 500,
                    alignment: Alignment.centerRight,
                    child: Text("$currentDisplay",
                      style: TextStyle(
                        fontSize: 25,
                        color: Color.fromARGB(201, 197, 230, 226)
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    alignment: Alignment.centerRight,
                    child: Text("$result",
                      style: TextStyle(
                        fontSize: 45,

                      ),
                    ),
                  ),
                ),
              ]
            ),
          ),
        ),



        // BOTTOM



        Expanded(
          flex: 7,
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
                          currentDisplay = currentDisplay + "*";
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

