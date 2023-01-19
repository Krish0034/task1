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
  late TextEditingController controller1;
  late TextEditingController controller2;
  @override
  void initState()
  {
    super.initState();
    controller1=TextEditingController();
    controller2=TextEditingController();
  }
  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    controller1.dispose();
    controller2.dispose();
    super.dispose();
  }
  String email='admin';
  String password='admin';
  @override
  Widget build(BuildContext context)
  {
    return SafeArea(
        child: Scaffold(
          backgroundColor: CustomColors.c1,
          body:SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
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
                  ), //ImageUploaded
                  ]
                ),
                Container(
                    width: double.infinity,
                    height: 500,
                    decoration: BoxDecoration(
                      color: CustomColors.c9,
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
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: const Text(
                            'Email',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            ),
                          ),
                        ),
                        const SizedBox(height: 10),
                        Container(
                          margin: EdgeInsets.only(left: 15,right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: CustomColors.c1,
                          ),
                          child:TextField(
                            cursorHeight: 28,
                            controller: controller1,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.email,
                                color: Colors.black26,
                              ),
                              hintText: 'Enter Email',
                              hintStyle: TextStyle(
                                color: Colors.black26,
                                letterSpacing: 1.0,
                                fontSize: 20
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Padding(
                          padding:  EdgeInsets.only(left: 15),
                          child: const Text(
                            'Password',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,

                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        Container(
                          margin: EdgeInsets.only(left: 15,right: 15),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: CustomColors.c1,
                          ),
                          child: TextField(
                            controller: controller2,
                            cursorHeight: 28,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 25
                            ),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.lock,
                                color: Colors.black26,
                              ),
                              hintText: 'Enter Password',
                              hintStyle: TextStyle(color: Colors.black26,
                                  letterSpacing: 1.0,
                                  fontSize: 20
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 35),
                        Padding(
                          padding: const EdgeInsets.only(left: 15,right: 15),
                          child: GestureDetector(
                            onTap: () {
                              if(email==controller1.text && password==controller2.text) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => AfterLoginPages()));
                              }
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
                        ),
                      ],
                    ),
                  ),
                ),
            ],
        ),
          ),
      ),
    );

  }

}