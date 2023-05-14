import 'package:flutter_application_1/phone.dart';
import 'package:flutter_application_1/pp2fertizz/widget/fold_widget.dart';
import 'package:flutter/material.dart';
import '../screenferizz/product_list.dart';
import '../tp.dart';
import '/extensions/theme_x.dart';
import '/theme/theme.dart';
//import '/pp2fertizz/widget/about_widget.dart';
//import '/main_screen/widgets/topbar_widget.dart';

class prduct1 extends StatefulWidget {
  
  const prduct1(
      {Key? key,
      required this.image,
      required this.name,
      required this.price,
      required this.unit, required this.a1, required this.a2, required this.a3})
      : super(key: key);
  final String image;
  final String name;
  final double price;
  final String unit;
  final String a1;
  final String a2;
   final String a3;
  @override
  prduct1State createState() => prduct1State();
}

class prduct1State extends State<prduct1>
    with TickerProviderStateMixin {
  bool goAnimate = false;
  bool showText = false;
  bool about = false;
  double barHeight = 90;
  late AnimationController _animationController;
  
  

  @override
  void initState() {
    Future.delayed(const Duration(milliseconds: 200), () {
      goAnimate = true;
      setState(() {});
    });
    _animationController =
        AnimationController(vsync: this, duration: const Duration(milliseconds: 400));

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            left: 0,
            right: 0,
            
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  color: const Color(0xffe3e3e3),
                ),
              ),
            ),
         
          Positioned(
            top: context.height * .13,
            left: 0,
            right: 0,
            
              child: AnimatedOpacity(
                duration: kThemeAnimationDuration,
                opacity: about ? 0 : 1,
                child: SizedBox(
                    width: context.height * .4,
                    height: context.height * .4,
                    child:  Image(
                                image: NetworkImage(
                                    widget.image),
                                width: 120,
                                height: 120,
                                fit: BoxFit.fill,
                              ),),
              ),
            ),
        
          Positioned(
            top: context.height * .54,
            left: 0,
            right: 0,
            child: AnimatedOpacity(
              duration: kThemeAnimationDuration,
              opacity: about ? 0 : 1,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      widget.name,
                      style: context.headline4.copyWith(color: Colors.black),
                    ),
                  ),
                  Text(
                    '₹${widget.price.toStringAsFixed(2)}',
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.brown,
                    ),),
                 
                ],
              ),
            ),
          ),
               
          Positioned(
              left: 0,
              right: 0,
              bottom: context.height * .04,
              child: GestureDetector(
                onTap: () {
                  about = true;
                  _animationController.forward();

                  setState(() {});
                },
                child: Column(
                  children: const [
                    Text('ABOUT'),
                    Icon(
                      Icons.more_vert_outlined,
                    ),
                  ],
                ),
              )),
          AnimatedPositioned(
  curve: Curves.easeIn,
  left: 0,
  right: 0,
  top: about ? context.height - (context.height * .78) : context.height,
  duration: const Duration(milliseconds: 400),
  child: SingleChildScrollView(
    child: Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20)),
      width: context.width,
      height: context.height * 0.85,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 45),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.name,
              style: TextStyle(
                fontSize: 45,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              "ABOUT PRODUCT",
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Text(
              widget.a1,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          //const AboutImageList(),
          FoldWidget(
            title: 'BENEFITS',
            content: widget.a2,
          ),
          Divider(),
          FoldWidget(
            title: 'usage',
            content: widget.a3,
          ),
          Divider(),
          SizedBox(height: 45),
        ],
      ),
    ),
  ),
),

          AnimatedPositioned(
              onEnd: () {
                showText = true;
                setState(() {});
              },
              duration: Duration(
                milliseconds: about ? 480 : 300,
              ),
              bottom: about ? (context.height + 0) * .75 : context.height * .15,
              left: about && _animationController.isCompleted
                  ? 80
                  : goAnimate
                      ? context.width - (context.width - 88)
                      : context.width / 2,
              right: about && _animationController.isCompleted
                  ? 80
                  : goAnimate
                      ? context.width - (context.width - 88)
                      : context.width / 2,
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 800),
                width: about
                    ? context.width - 100
                    : goAnimate
                        ? context.width - 200
                        : 0,
                height: 48,
                decoration: BoxDecoration(
                    boxShadow: [
                      about && _animationController.isCompleted
                          ? const BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0.0, 3.0),
                              blurRadius: 8.0,
                            )
                          : const BoxShadow()
                    ],
                    color: ShopTheme.xBrown,
                    borderRadius: BorderRadius.circular(24)),
                child: AnimatedOpacity(
                  opacity: showText ? 1 : 0,
                  duration: kThemeAnimationDuration,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        about && _animationController.isCompleted
                            ? AnimatedContainer(
                                duration: kThemeAnimationDuration,
                              
                              )
                            : Container(),
                             ElevatedButton(
  onPressed: () {
    Navigator.push(context, MaterialPageRoute(builder: (context) => ProductList()));
  },
  child: Text('BOOK'),
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 12, 104, 26)),
  ),
),

                      /*ElevatedButton(
  style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
  onPressed: () {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Success'),
          content: const Text('Booked successfully'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  },
  child: const Text(
    'BOOK',
    style: TextStyle(color: Colors.black),
  ),
),*/


                      ],
                    ),
                  ),
                ),
              )),
          AnimatedPositioned(
            curve: Curves.ease,
            bottom: context.height * .15,
            left: goAnimate ? 30 : (context.width - 48) / 2,
            right: goAnimate ? (context.width - 78) : (context.width - 48) / 2,
            duration: const Duration(
              milliseconds: 1000,
            ),
            child: Hero(
              tag: 'menu',
              child: ClipOval(
                child: GestureDetector(
                  onTap: () {
                    if (about) {
                      about = !about;
                      _animationController.reverse();
                      setState(() {});
                    } else {
                      Navigator.pop(context);
                    }
                  },
                  child: Container(
                    width: 48,
                    height: 48,
                    color: ShopTheme.xBrown,
                    child: Center(
                      child: RotationTransition(
                        turns: Tween(begin: 0.0, end: -.25)
                            .animate(_animationController),
                        child: const Icon(
                          Icons.keyboard_backspace_rounded,
                          size: 28,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
         /* TopbarWidget(
            barHeight: barHeight,
            isBig: false,
          )*/
        ],
      ),
    );
  }
}
