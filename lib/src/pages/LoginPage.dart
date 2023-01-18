import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:task1/src/util/CustomColors.dart';

import 'AfterLoginPage.dart';

class LoginPage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() =>_LoginPageState();
}
class _LoginPageState extends State<LoginPage>
{
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.c1,
          body:Column(
            children: [
              Stack(
                children:[
                Padding(
                  padding:  const EdgeInsets.only(top: 20),
                  child: Container(
                  width: MediaQuery.of(context).size.width /2,
                  height: MediaQuery.of(context).size.height/4,
                  decoration: BoxDecoration(
                    color: CustomColors.c5.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(100)
                  ),
                  child:ClipOval(
                    child: Image.network('https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg'),
                    ),
                  ),
                ),  //ImageUploaded
                ]
              ),
              Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Email',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: CustomColors.c4,
                        ),
                        child: const TextField(
                          style: TextStyle(
                              color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.email,
                              color: Colors.white,
                            ),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.0,
                              fontSize: 20
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      const Text(
                        'Password',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,

                        ),
                      ),
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: CustomColors.c4,
                        ),
                        child:const TextField(
                          style: TextStyle(
                            color: Colors.white,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            prefixIcon: Icon(
                              Icons.lock,
                              color: Colors.white,
                            ),
                            hintText: 'Password',
                            hintStyle: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.0,
                                fontSize: 20
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 35),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context,
                              MaterialPageRoute(
                                  builder: (context) => AfterLoginPages()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Colors.green,
                          ),
                          child: const Center(
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Text(
                                'Log In',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }

}