import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home: kienCard() ,
  debugShowCheckedModeBanner: false,
));

class kienCard extends StatefulWidget {
  @override
  State<kienCard> createState() => _kienCardState();
}

class _kienCardState extends State<kienCard> {

  // define a state to change:

  int kienLevel = 1;

  @override
  Widget build(BuildContext context) {

    return  Scaffold(

        backgroundColor: Colors.blueGrey ,

        appBar: AppBar(

                  title: Text('I am Flutter',style: TextStyle(fontFamily:'Schyler', fontSize: 30.0, color: Colors.white)),
                  centerTitle: true,
                  elevation: 0.0,    // to drop shadow to 0
                   backgroundColor: Colors.blue,
               ),

// add button to click on bottom :
    
        floatingActionButton: FloatingActionButton(
            onPressed: (){
    //           kienLevel ++;   // no increase after Click

              setState(() {
                //  kienLevel++; or kienLevel += 1, 2, 3....
                kienLevel *= 2 ;
                    });
               },

                child: Icon(Icons.add, size: 70,),
                backgroundColor: Colors.greenAccent,

         ),

        body : Padding(padding: EdgeInsets.fromLTRB(10.0, 40.0, 10.0, 10.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,    // move column to left side
            mainAxisAlignment: MainAxisAlignment.start,  // column in center

            children: <Widget>[
              //avatar 'CircleAvarta :

              Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/man.jpg'),
                  maxRadius: 60.0,
                ),
              ),

//Divider is to create a gap between picture and text 'my profile :

              Divider(

                height: 40.0,
                color: Colors.white70,
              ),

              Center(child: Text('My profile', style: TextStyle(fontFamily:'Schyler',fontSize: 30.0,color: Colors.yellow),)),

              SizedBox(height: 10.0,),  // create a gap between
          //    Image(image: AssetImage('images/zibra.jpg'),),

              SizedBox(height: 10.0,),  // create a gap between column

              Text("Full Name :", style: TextStyle(fontSize: 50.0, color: Colors.red, letterSpacing: 2.0),),
              Text("New Number: $kienLevel", style: TextStyle(fontSize: 60.0, fontWeight: FontWeight.bold, color: Colors.yellow,),),

              Row(
                  children:<Widget> [
                    Text('Enter your email : ', style: TextStyle(fontSize: 30, color: Colors.red),),
                    SizedBox(width: 40.0,),  // create a gap between Row
                    Icon(Icons.email_outlined, size: 30,)
                      ],
                  ),
                 ],
              ),
          ),
    );
  }
}
// added StatefullWidget :

class Test extends StatefulWidget {
     // const ({super.key});

  @override
  State<Test> createState() => _State();
}

class _State extends State<Test> {

   int counter = 1;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
