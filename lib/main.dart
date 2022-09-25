// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:handy_window/handy_window.dart';
import 'package:random_password_generator/random_password_generator.dart';
import 'package:window_size/window_size.dart';
import 'dart:io';

 void main()
 {
 WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Poseidon');
    setWindowMaxSize(const Size(590, 490));
    setWindowMinSize(const Size(490, 450));
  }


  runApp(MyApp());
 }


class passvariables{//Not Ready yet 
  bool _isWithLetters = true;
  bool _isWithUppercase = false;
  bool _isWithNumbers = false;
  bool _isWithSpecial = false;
  double _numberCharPassword = 8;
  String password = ''; 



}



class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
 @override 
 Widget build(BuildContext context){
  return MaterialApp (
  
    
    title: 'Poseidon',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
    home: MyHomePage(),
    debugShowCheckedModeBanner: true,
  );
 }
}

class MyHomePage extends StatefulWidget{
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>{
 @override
 Widget build(BuildContext context){
  return Scaffold(
   backgroundColor: Color.fromARGB(255, 189, 217, 250),
   appBar: AppBar(
    title: Text('Poseidon Password Generator'),
   ),
   body: Container(
        margin: const EdgeInsets.all(20.0),
        child: Center(
        child: Column(
        children:  [
          
            Align(
             alignment: Alignment.topLeft,
             child: Digit_Number(),
           ),
          
          Align(
             alignment: Alignment.center,
             child: AllowNumbers(),
            ),
          
          Align(
            alignment: Alignment.center,
            child: AllowUpper(),
          ),
          Align(
           alignment: Alignment.center,
           child: AllowSymbols(),
          ),
          Align(
            alignment: Alignment.center,
            child: AllowSmallLetters(),
          ),
    
          Align(
            alignment: Alignment.bottomCenter,
            child: LastButton(),
          ),
    
         
      ],
    ),
    ),
   ),
  );
 }
}









class LastButton extends StatelessWidget{
  
  @override
  Widget build(BuildContext context){
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center ,
    children: [
      
      ElevatedButton(
      onPressed: () {
        showDialog(context: context,
         builder: (context) => AlertDialog(
          backgroundColor: Color.fromARGB(255, 189, 217, 250),
          title: const Text("Your Password: "),
          content: Text("mak._password"),
          
          ),
         );
      }, 
      child: const Text("Generate Password")),
      
     
    ],

  );
 } 
}



//How many digits the password should have 
class Digit_Number extends StatefulWidget{
  @override
  State<Digit_Number> createState() => _Digit_NumberState();
}
class _Digit_NumberState extends State<Digit_Number>{
  
  var passwordlenght ; 
  TextEditingController textController = TextEditingController();
  void dispose() {
    textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context){
  
   return Column(
     crossAxisAlignment: CrossAxisAlignment.center ,
    children: [
    SizedBox(
      height: 60.0,
      width: 550.0,
      child: 
    TextField(
     controller: textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Integers Only',
        labelText: "Type Password Lenght",
        
      ),
      onChanged: (value){
        setState(() {});
      }
    ),
    ),
    ],
   );
  }
}




//Checkboxes 


class AllowSmallLetters extends StatefulWidget{
  
 @override
 State<AllowSmallLetters> createState() => _AllowSmallLettersState(); 
}

class _AllowSmallLettersState extends State<AllowSmallLetters>{
  
  bool? check1 = true;
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
          value: check1,
          onChanged: (bool? value){
            setState((){
              check1 = value;
            });
              
            
            
          }
        ),
        Text('Add Small Letters'),
      ],
    );
  }
}



class AllowSymbols extends StatefulWidget{
  
 @override
 State<AllowSymbols> createState() => _AllowSymbolsState(); 
}

class _AllowSymbolsState extends State<AllowSymbols>{
  
  bool? check2 = true;
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
          value: check2,
          onChanged: (bool? value){
            setState((){
              check2 = value;
            });
              
            
            
          }
        ),
        Text('Add Symbols'),
      ],
    );
  }
}


class AllowUpper extends StatefulWidget{
  
 @override
 State<AllowUpper> createState() => _AllowUpperState(); 
}

class _AllowUpperState extends State<AllowUpper>{
  
  bool? check3 = true;
  @override
    Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
          value: check3,
          onChanged: (bool? value){
            setState((){
              check3 = value;
            });
              
            
            
          }
        ),
        Text('Add Capital Letters'),
      ],
    );
  }
}


class AllowNumbers extends StatefulWidget{
  
 @override
 State<AllowNumbers> createState() => _AllowNUmbersState(); 
}

class _AllowNUmbersState extends State<AllowNumbers>{
  
  bool? check4 = true;
  @override
  Widget build(BuildContext context){
    return Row(
      children: [
        Checkbox(
          value: check4,
          onChanged: (bool? value){
            setState((){
              check4 = value;
            });
              
            
            
          }
        ),
        Text('Add Numbers'),
      ],
    );
  }
}


















