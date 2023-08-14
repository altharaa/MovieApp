import 'package:first_project/fix/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:first_project/fix/const.dart';
import 'package:first_project/lama/home_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {

  Widget inputText(String label, bool isObscure, String imageIcon, double sizedBoxHeight) {
    return Column(
      children: [
        SizedBox(height: sizedBoxHeight),
        Container(
          child: TextField(
            keyboardType: TextInputType.text,
            style: const TextStyle(color: kInputColor),
            obscureText: isObscure,
            decoration: InputDecoration(
              // contentPadding: const EdgeInsets.symmetric(vertical: 25.0),
              labelText: label,
              prefixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(imageIcon),
              ),
              border: OutlineInputBorder(
                // borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(35),
              ),
              // filled: true,
              // fillColor: kWhiteColor,
            ),
          ),
        ),
      ],
    );
  }
  
  Widget myText(String name, int fontSize) {
    return Container(
      child: Text(name,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: (fontSize.toDouble()),
          color: kWhiteColor,
        ),),
    );
  }

  @override
  Widget build(BuildContext context) {
    //Get the screen size
    Size size = MediaQuery.of(context).size;

    return Scaffold(
       body: Container(
         decoration: BoxDecoration(
           gradient: LinearGradient(colors: [g1,g2]),
         ),
         child: SingleChildScrollView(
           child: Padding(padding: EdgeInsets.all(size.height * 0.030),
             child: OverflowBar(
               children: [
                 SizedBox(height: 50), // Margin top for the image

                 Image.asset(image1),
                 myText("Hi there!", 20),
                 myText("Let's get started.", 34),
                 inputText("Username", false, userIcon, size.height * 0.024),
                 inputText("Password", true, keyIcon, size.height * 0.024),

                 // Add margin between inputText and ElevatedButton
                 SizedBox(height: 25),

                 ElevatedButton(
                   onPressed: () {
                     Navigator.push(
                       context,
                       MaterialPageRoute(builder: (context) => HomeScreen()),
                     );
                   },
                   style: ElevatedButton.styleFrom(
                     primary: kButtonColor,
                     shape: RoundedRectangleBorder(
                       borderRadius: BorderRadius.circular(37),
                     ),
                     minimumSize: Size(double.infinity, size.height * 0.080),
                   ),
                   child: const Text(
                     "Continue",
                     style: TextStyle(
                       color: kWhiteColor,
                       fontWeight: FontWeight.w700,
                       fontSize: 18,
                     ),
                   ),
                 ),

                 SizedBox(height: 25,),

                 Center(
                   child: Text(
                     "or",
                     style: TextStyle(
                       color: kWhiteColor,
                       fontWeight: FontWeight.w700,
                     ),
                   ),
                 ),

                 SizedBox(height: 25,),

                 Center(
                   child: Container(
                     width: 60,
                     height: 60,
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: Colors.white,
                     ),
                     child: Padding(
                       padding: const EdgeInsets.all(8.0),
                       child: Image.asset(
                         googleIcon, // Replace with the actual path to your icon asset
                         fit: BoxFit.contain,
                       ),
                     ),
                   ),
                 ),

                 SizedBox(height: size.height * 0.035),
               ],
             ),
           ),
         ),
       ),
    );
  }
}
