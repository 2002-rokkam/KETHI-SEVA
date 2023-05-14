// ignore_for_file: deprecated_member_use, prefer_collection_literals

import 'dart:typed_data';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/fertiz.dart';
import 'package:flutter_application_1/main1.dart';
import 'package:flutter_application_1/wether.dart';
import 'package:tflite/tflite.dart';
import 'package:tflite_flutter/tflite_flutter.dart';
//import 'package:firebase_ml_custom/firebase_ml_custom.dart';

import 'firebase_options.dart';
import 'views/farm.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
   // This widget is the root of your application.
 



 @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Flutter Demo',
     theme: ThemeData(
       
       primarySwatch: Colors.green,
      ),
      home: const MyHomePage(title: 'FARMERS'),
     
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
  final _key7 = GlobalKey<FormState>();
  final _key6 = GlobalKey<FormState>();
  final _key5 = GlobalKey<FormState>();
  final _key4 = GlobalKey<FormState>();
  final _key3 = GlobalKey<FormState>();
  final _key2 = GlobalKey<FormState>();
  final _key1 = GlobalKey<FormState>();


  TextEditingController nitrogenController =  TextEditingController();
  TextEditingController pottasiumController =  TextEditingController();
  TextEditingController phosphorousController =  TextEditingController();
  TextEditingController tempController =  TextEditingController();
  TextEditingController humidityController =  TextEditingController();
  TextEditingController phController =  TextEditingController();
  TextEditingController rainfallController =  TextEditingController();

  late List<String> cropTypes;
  late Interpreter interpreter;

@override
  void initState(){
    super.initState();
    loadmodel();
  }

  loadmodel() async{
    Tflite.close();
    try {
    interpreter = await Interpreter.fromAsset('modelNeura.tflite');
    cropTypes=['coffee','rice','maize','chickpea','kidneybeans','lentil','pomegranate','orange','cotton','jute'];
    print(interpreter);
    print('Loaded successfully');
    } catch (e){
      print("Failed to load: $e ");
    }
  }

  void runInference(){
    if(interpreter== null){
      print("Model is not loaded");
      return;
    }
    double nitrogen = double.parse(nitrogenController.text);
    double pottasium = double.parse(pottasiumController.text);
    double phosphorous = double.parse(phosphorousController.text);
    double temp = double.parse(tempController.text);
    double humidity = double.parse(humidityController.text);
    double ph = double.parse(phController.text);
    double rainfall = double.parse(rainfallController.text);

    var inputData=[[nitrogen,pottasium,phosphorous,temp,humidity,ph,rainfall]];
    print(inputData);
    var outputData= List.filled(cropTypes.length, 0.0).reshape([1,cropTypes.length]);
    

    interpreter.run(inputData, outputData);

    print(outputData);

    double maxOutputValue= outputData[0][0];
    int predictedCropIndex=0;

    for(int i=0;i<outputData[0].length;i++){
      if(outputData[0][i]>maxOutputValue){
        maxOutputValue=outputData[0][i];
        predictedCropIndex=i;
      }
    }
    print(predictedCropIndex);

    /*var predictedCropIndex = outputData[0].indexWhere((value)=>(value-outputData[0].reduce((a,b)=>(a as double)>(b as double)?a:b)).abs()<0.01);
    print(predictedCropIndex);*/
    var predictedCropType = cropTypes[predictedCropIndex];

    showDialog(
      context: context,
       builder: (BuildContext context) {
         return AlertDialog(
          title: Text('Predicted crop'),
          content: Text('The predicted crop is: $predictedCropType'),
          actions: [
            TextButton(onPressed: (){
              Navigator.of(context).pop();
            }, child:Text('OK'))
          ],
         );
       });
       
  }


  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();

    Tflite.close();
  }
 
  @override

  Widget build(BuildContext context) {
    
    Border borderRadius;

    return Container(
       decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage('assets/images/8.jpg'),fit: BoxFit.cover)
       ),
    
     child :Scaffold(
      backgroundColor: Colors.transparent,
      //appBar: AppBar(
        //title: Text(widget.title),
     // ),
      body: SingleChildScrollView(
        
          child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget>[
            
            //Image.asset('assets/images/logo.png', fit:BoxFit.cover,),

            Form(
              key: _key1,
              child: Container(
              padding: const EdgeInsets.only(left: 55, top: 227, right: 55),
              child: TextFormField(
                controller: nitrogenController,
                 validator: (value) {
                  if(value==null || value.isEmpty){
                    return 'Please enter value';
                  }
                  return null;
                },
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.green, width: 2),
                  ),
                  filled: true,
                 fillColor: Color.fromARGB(255, 189, 243, 191),
                  labelText: 'Enter Nitrogen %  ',
                  hintText: 'Usually 0-140',
                ),
               
              ),
            ),
            ),
 Form(
  key: _key2,
   child: Container(
    padding: const EdgeInsets.only(left: 55, top: 7, right: 55),
    child: TextFormField(
      controller: pottasiumController,
       validator: (value) {
        if(value==null || value.isEmpty){
          return 'Please enter value';
        }
        return null;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 189, 243, 191),
        labelText: 'Enter Potassium %  ',
        hintText: 'Usually 5-85',
      ),
      /*onChanged: (value) {
        setState(() {
             try {
        pottasium = double.parse(value);
      } catch (e) {
        // Handle parsing error, e.g., show an error message to the user
        print("K Errr");
      }
          // Do something with the value entered by the user
        });
      },*/
    ),
 ),
 ),
Form(
  key: _key3,
  child:   Container(
  
    padding: const EdgeInsets.only(left: 55, top: 7, right: 55),
  
    child: TextFormField(
  
      controller: phosphorousController,
  
       validator: (value) {
  
        if(value==null || value.isEmpty){
  
          return 'Please enter value';
  
        }
  
        return null;
  
      },
  
      decoration: const InputDecoration(
  
        border: OutlineInputBorder(
  
          borderSide: BorderSide(color: Colors.green, width: 2),
  
        ),
  
        filled: true,
  
        fillColor: Color.fromARGB(255, 189, 243, 191),
  
        labelText: 'Enter Phosphorus %  ',
        hintText: 'Usually 5-80',
  
      ),
  
      /*onChanged: (value) {
  
        setState(() {
  
             try {
  
        phosporous = double.parse(value);
  
      } catch (e) {
  
        // Handle parsing error, e.g., show an error message to the user
  
        print("P Errr");
  
      }
  
          // Do something with the value entered by the user
  
        });
  
      },*/
  
    ),
  
  ),
),
Form(
  key:_key4,
  child:   Container(
  
    padding: const EdgeInsets.only(left: 55, top: 7, right: 55),
  
    child: TextFormField(
  
      controller: tempController,
  
       validator: (value) {
  
        if(value==null || value.isEmpty){
  
          return 'Please enter value';
  
        }
  
        return null;
  
      },
  
      decoration: const InputDecoration(
  
        border: OutlineInputBorder(
  
          borderSide: BorderSide(color: Colors.green, width: 2),
  
        ),
  
        filled: true,
  
        fillColor: Color.fromARGB(255, 189, 243, 191),
  
        labelText: 'Enter Temperature(in C)  ',
        hintText: 'Usually 10-38',
  
      ),
  
     /* onChanged: (value) {
  
        setState(() {
  
             try {
  
        temp = double.parse(value);
  
      } catch (e) {
  
        // Handle parsing error, e.g., show an error message to the user
  
        print("Temp Errr");
  
      }
  
          // Do something with the value entered by the user
  
        });
  
      },*/
  
    ),
  
  ),
),

          Form(
            key: _key5,
            child: Container(
            padding: const EdgeInsets.only(left: 55, top: 7, right: 55),
            child: TextFormField(
              controller: humidityController,
               validator: (value) {
                if(value==null || value.isEmpty){
                  return 'Please enter value';
                }
                return null;
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green, width: 2),
                ),
                filled: true,
                fillColor: Color.fromARGB(255, 189, 243, 191),
                labelText: 'Enter Humidity%  ',
                hintText: 'Usually 14-98',
              ),
              /*onChanged: (value) {
                setState(() {
             try {
                humidity = double.parse(value);
              } catch (e) {
                // Handle parsing error, e.g., show an error message to the user
                print("Humidity Errr");
              }
                  // Do something with the value entered by the user
                });
              },*/
            ),
          ),
          ),
 Form(
  key: _key6,
   child: Container(
    padding: const EdgeInsets.only(left: 55, top: 7, right: 55),
    child: TextFormField(
      controller: phController,
       validator: (value) {
        if(value==null || value.isEmpty){
          return 'Please enter value';
        }
        return null;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 189, 243, 191),
        labelText: 'Enter PH  ',
        hintText: 'Usually 4-9',
      ),
      /*onChanged: (value) {
        setState(() {
             try {
        ph = double.parse(value);
      } catch (e) {
        // Handle parsing error, e.g., show an error message to the user
        print("Ph Errr");
      }
          // Do something with the value entered by the user
        });
      },*/
    ),
 ),
 ),
 Form(
  key: _key7,
   child: Container(
    padding: const EdgeInsets.only(left: 55, top: 7, right: 55),
    child: TextFormField(
      controller: rainfallController,
      validator: (value) {
        if(value==null || value.isEmpty){
          return 'Please enter value';
        }
        return null;
      },
      decoration: const InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.green, width: 2),
        ),
        filled: true,
        fillColor: Color.fromARGB(255, 189, 243, 191),
        labelText: 'Enter Rainfall  ',
        hintText: 'Usually 35-300',
      ),
      /*onChanged: (value) {
        setState(() {
             try {
        rainfall = double.parse(value);
      } catch (e) {
        // Handle parsing error, e.g., show an error message to the user
        print("Rainfa Errr");
      }
          // Do something with the value entered by the user
        });
      },*/
    ),
 ),
 ),

            Container(

                padding: const EdgeInsets.only(left: 25,top: 28,right: 25),
                child: ClipRRect(borderRadius: BorderRadius.circular(5),
                
                // ignore: sort_child_properties_last
                child: ElevatedButton(
                  onPressed: () { 
                    if(_key7.currentState!.validate()&_key6.currentState!.validate()& _key5.currentState!.validate()& _key4.currentState!.validate()&_key3.currentState!.validate()&_key2.currentState!.validate()&_key1.currentState!.validate()){
                      submitForm();
                    }
                    //runInference();
                    //predict();
                    //Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
                   }, 
                child: (
                  Text('submit',style: TextStyle(color: Colors.black),)
                
                ),
                ),
                
                )
            ),
            /*_load==false 
            ? 
             Text(predicted[0]['confidence'].toString()):Container()*/
          ]       
        ),
        
      ),
        
    )
    
     )
     );
  }
  void submitForm(){
    Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp1()));
  }
}
