import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
    debugShowCheckedModeBanner: false,
    home:  MyApp(
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
   const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
var onPressed;
//Icon heart = Icons.favorite_border as Icon;
bool is_favorite = false;
bool isFavorite = false;
int num = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(onPressed: onPressed, icon: Icon(Icons.arrow_circle_left_outlined,color: Colors.black,size: 30.0,)),
          title: Align(
            alignment: Alignment.center,
            child: Text('Details',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 40.0,
            ),
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(onPressed:() {
            setState(() {
              is_favorite = !is_favorite;
            });
          }, icon: Icon(
            is_favorite? Icons.favorite:Icons.favorite_border,
            color: Colors.red,size: 30.0,))
          ],
        ),
        body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20.0),
          child: Column(
            children: [
              Center(child: Image.asset('images/chair.webp',height: 300.0,)),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Chair',
                    style: TextStyle(
                      color: Colors.grey[600],
                      fontWeight: FontWeight.bold,
                      fontSize: 40.0,
                    ),
                  ),
                  Text(
                    '\$515',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0,
                    ),
                  )
                ],
              ),
              Text(
                'Minimalist Style with pillow',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0,
                  color: Colors.black,
                ),
                
              ),
              Text(
                'Loren ipsun dolor sit anet, consectetur adipisci elit, sed eiusnod tenpor incidunt'
                'ut labore et dolore nagna aliqua. Ut enin ad ninin venian, quis nostrun exercitationen'
                'ullan corporis suscipit laboriosan, nisi ut aliquid ex ea connodi consequatur.',
                style: TextStyle(color: const Color.fromARGB(255, 44, 42, 42),
                fontSize: 20.0,),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                   // color: Colors.blue[900],
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.blue),
                  ),
                  Container(
                   // color: Colors.blue[900],
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.red),
                  ),
                  Container(
                   // color: Colors.blue[900],
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.green),
                  ),
                  Container(
                   // color: Colors.blue[900],
                    height: 60.0,
                    width: 60.0,
                    decoration: BoxDecoration(shape: BoxShape.circle,color: Colors.yellow),
                  ),
                  SizedBox(
                    width: 50.0,
                  ),
                  Container(
                    width: 200.0,height: 70.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.black,style: BorderStyle.solid),),
                    child: Row(
                      mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: 
                        (){
                          setState(() {
                            num--;
                          });
                        }
                        , icon: Icon(Icons.remove),iconSize: 40.0,),
                      
                       Text(
                        '$num' ,
                        style: TextStyle(fontSize: 40.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black), ),
                      
                       IconButton(onPressed: 
                        (){
                          setState(() {
                            num++;
                          });
                        }
                        , icon: Icon(Icons.add),iconSize: 40.0,),
                      ],
                    ),
                    
                  ),
                ],
              ),
              SizedBox(
                height: 30.0
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 60.0,
                    height: 60.0,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),border: Border.all(color: Colors.white,style: BorderStyle.solid),
                     boxShadow: [
                   BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Shadow color with transparency
                      blurRadius: 10, // Softness of the shadow
                      spreadRadius: 2, // How much the shadow spreads
                      offset: Offset(4, 4), // Shadow position (X, Y)
                    ),
                  ],),
                    child:
                   IconButton(onPressed: () {
            setState(() {
              isFavorite = !isFavorite;
            });
          },
                    icon: Icon(
                    isFavorite?Icons.favorite: Icons.favorite_border,
                    color: Colors.red,size: 30.0,)
                   ),
                   ),
                  
                 Container(
                        height: 90.0,
                        width: 400.0,
                        alignment: Alignment.center,
                       // color: Colors.black,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.black),
                        child: Text('Add to Cart',
                       
                        style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0
                        ),),
                 )
                ],
              ),
            ],
          ),
        )
      ),
      ),
    );
  }
}

