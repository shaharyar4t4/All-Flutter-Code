import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.cyan,
      ),
      home: const MyHomePage(title: '_', ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});



  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
    }

  class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {

  return Scaffold(
  appBar: AppBar(

      title: const Text("Blog Page"),

         backgroundColor: Colors.cyan,

  ),

  body:
  Container(
    margin: EdgeInsets.only(top: 14.0),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //title
            Text('8 interesting places to visit in London', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.lightBlue,),),
            SizedBox(height: 8),
            //subtitle
            Text('8 Places to Visit in London', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            SizedBox(height: 8),
            //body
            Text("London, the vibrant capital of England, is a city brimming with history, culture, and an endless array of activities. Whether you're a first-time visitor or a seasoned traveler, there’s always something new to discover. In this blog, we’ll explore eight fascinating places that should top your list for a London City tour. Ready to explore? Let’s dive into the Top places in London!", style: TextStyle(fontSize: 14,),),
            SizedBox(height: 8),
            //subtitle
            Text('1. The British Museum', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            SizedBox(height: 8),
            Image.asset('assets/image/image1.jpg'),
            SizedBox(height: 8),
            Text('The British Museum is a must-visit for anyone interested in history and culture. Housing over eight million works, it offers a journey through time from ancient Egypt to contemporary art. Highlights include the Rosetta Stone, the Parthenon sculptures, and the Egyptian mummies.', style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 8),
            Text('2. The Tower of London', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            SizedBox(height: 8),
            Image.asset('assets/image/image2.jpg'),
            SizedBox(height: 8),
            Text('Steeped in history, the Tower of London is another iconic landmark. Once a royal palace, a prison, and even a zoo, it now houses the Crown Jewels. A London walking tour here is both educational and intriguing, as you’ll hear tales of its notorious past and the famous prisoners held within its walls.', style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 5),
            Text("The Beefeaters, or Yeoman Warders, provide entertaining tours filled with historical anecdotes. Don't miss the chance to see the ravens, as legend has it that if they ever leave, the Tower will fall. The Tower of London offers a unique glimpse into the city’s tumultuous history and is undoubtedly one of the Top places in London.", style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 8),
            Text('3. The Houses of Parliament and Big Ben', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            SizedBox(height: 8),
            Image.asset('assets/image/image3.jpg'),
            SizedBox(height: 8),
            Text('No London City tour is complete without visiting the Houses of Parliament and Big Ben. The striking Gothic architecture of the Parliament building is a sight to behold, especially when illuminated at night. Big Ben, the iconic clock tower, has been a symbol of London for over 150 years.', style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 5),
            Text("The Beefeaters, or Yeoman Warders, provide entertaining tours filled with historical anecdotes. Don't miss the chance to see the ravens, as legend has it that if they ever leave, the Tower will fall. The Tower of London offers a unique glimpse into the city’s tumultuous history and is undoubtedly one of the Top places in London.", style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 8),
            Text('Final Thoughts', style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),),
            SizedBox(height: 8),
            Text('London is a city that effortlessly blends the old with the new. Whether you’re marveling at ancient artifacts in the British Museum or enjoying a cutting-edge art exhibition at the Tate Modern, the city offers a rich tapestry of experiences.', style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 5),
            Text('No London City tour is complete without visiting the Houses of Parliament and Big Ben. The striking Gothic architecture of the Parliament building is a sight to behold, especially when illuminated at night. Big Ben, the iconic clock tower, has been a symbol of London for over 150 years.', style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 5),
            Text("The Beefeaters, or Yeoman Warders, provide entertaining tours filled with historical anecdotes. Don't miss the chance to see the ravens, as legend has it that if they ever leave, the Tower will fall. The Tower of London offers a unique glimpse into the city’s tumultuous history and is undoubtedly one of the Top places in London.", style: TextStyle(fontSize: 14 ),),
            SizedBox(height: 8),
          ],
        ),
      ),

    ),
  ),

    );
  }
}
