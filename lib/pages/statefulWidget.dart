import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class statefullwidgetscreen extends StatefulWidget {
  const statefullwidgetscreen({super.key});

  @override
  State<statefullwidgetscreen> createState() => _statefullwidgetscreenState();
}

class _statefullwidgetscreenState extends State<statefullwidgetscreen> {
  int mycounter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(

        title:  Text(
          "This is statefullwidgetscreen"
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children:[
            Text("${mycounter}" ,style: TextStyle(fontSize: 25)),
            SizedBox(height: 20,),
            Row(
              children:[
                Expanded(
                  child: MaterialButton(
                    color : Colors.blue,
                    onPressed: (){
                      mycounter++;
                      setState(() {

                      });
                    },
                    child: const Icon(Icons.add),

                  )
                ),
                SizedBox(width: 20,),
                Expanded(
                  child: MaterialButton(
                    color : Colors.lightGreenAccent,
                    onPressed: (){
                      mycounter--;
                      setState(() {

                      });
                    },
                    child: const Icon(Icons.remove),
                  )
                ),
              ]
            )
          ]
        )
      )
    );
  }
}
