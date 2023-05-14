import 'package:flutter_application_1/providerfertizz/cartprovider.dart';

import 'package:flutter_application_1/screenferizz/product_list.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class cartd extends StatelessWidget {
  const cartd({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
   return ChangeNotifierProvider(
       create: (_) => CartProvider(),
     child: Builder(builder: (BuildContext context){
       return MaterialApp(
         title: 'Flutter Demo',
         debugShowCheckedModeBanner: false,
         theme: ThemeData(
           primarySwatch: Colors.green,
         ),
         home: const ProductList(),
       );
     }),

   );
  }
}