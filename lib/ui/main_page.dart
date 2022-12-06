import 'package:auth_firebase/model/user_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Just extends StatefulWidget {
  const Just({Key? key}) : super(key: key);

  @override
  State<Just> createState() => _JustState();
}

class _JustState extends State<Just> {
  final TextEditingController _textEditingController = TextEditingController();
  final GlobalKey _formKey = GlobalKey();
  final _formResult = SignupUser(name: 'shavkat');

  @override
  Widget build(BuildContext context) {
    return Stack(
      // <-- STACK AS THE SCAFFOLD PARENT
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background_image.jpg"),
              // <-- BACKGROUND IMAGE
              fit: BoxFit.cover,
            ),
          ),
        ),
        Scaffold(
          backgroundColor: Colors.black12,
          // <-- SCAFFOLD WITH TRANSPARENT BG
          appBar: AppBar(
            title: const Text(
              'Something',
              style: TextStyle(
                fontSize: 22,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
            backgroundColor: Colors.transparent,
            // <-- APPBAR WITH TRANSPARENT BG
            elevation: 0, // <-- ELEVATION ZEROED
          ),
          body: Form(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 40,vertical: MediaQuery.of(context).size.height * 0.3 ),
              children: [
                TextFormField(
                  onChanged: (e){
                    print(e);
                  },
                  validator: (String? value){
                    if(value!.isEmpty){
                      return 'Please enter name';
                    }
                    return null;
                  },
                  style: const TextStyle(color: Colors.white,fontSize: 18),
                  controller: _textEditingController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(


                      labelText: "Enter username",
                      labelStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.greenAccent, width: 3.0),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0)))),
                ),
                const SizedBox(height: 40),
                TextFormField(
                  controller: _textEditingController,
                  keyboardType: TextInputType.name,
                  decoration: InputDecoration(
                      labelText: "Enter age",
                      labelStyle: const TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.white),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Theme.of(context).primaryColor),
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20.0),
                        ),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.greenAccent, width: 3.0),
                          borderRadius:
                          BorderRadius.all(Radius.circular(20.0)))),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              print(_textEditingController);
            },
            autofocus: true,
            shape: RoundedRectangleBorder(
                side: const BorderSide(width: 2, color: Colors.white),
                borderRadius: BorderRadius.circular(100)),
            focusColor: Colors.red,
            backgroundColor: Colors.black26,
            clipBehavior: Clip.antiAlias,
            focusElevation: 3.2,
            splashColor: Colors.white12,
            elevation: 5,
            disabledElevation: 0,
            tooltip: 'Save',
            foregroundColor: Colors.indigo.shade400,
            icon: const Icon(
              CupertinoIcons.arrow_right_circle_fill,
              size: 36.0,
            ),
            label: const Text('NEXT'),
          ),
        ),
      ],
    );
  }
}
