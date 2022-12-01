import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_sample/bloc%20functions/bloc/addstd/add_std_bloc.dart';
import 'package:hive_sample/bloc%20functions/bloc/editstd/editstd_bloc.dart';
import 'package:hive_sample/database/Functions/Modals/modals.dart';
import 'package:hive_sample/screens/screen1.dart';
import 'package:image_picker/image_picker.dart';

import '../database/Functions/functons_db.dart';

class ScreenTwo extends StatelessWidget {
  ScreenTwo({super.key});

  String? imagefile;

  final _namecontroler = TextEditingController();

  final _agecontroler = TextEditingController();

  final _emailcontroler = TextEditingController();

  final _numbercontroler = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  void addimage(
      {required ImageSource imgsource, required BuildContext context}) async {
    final file = await ImagePicker().pickImage(source: imgsource);

    if (file == null) {
      return;
    }
    imagefile = file.path;
    BlocProvider.of<AddStdBloc>(context).add(Addphoto(image: imagefile!));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add Student'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          bottom: 30,
          left: 30,
          right: 30,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 40,
                ),
                BlocBuilder<AddStdBloc, AddStdState>(
                  builder: (context, state) {
                    return CircleAvatar(
                      backgroundImage: (imagefile == null)
                          ? const AssetImage('asset/img/avatarr.jpg')
                          : FileImage(File(state.photo)) as ImageProvider,
                      radius: 90,
                      child: IconButton(
                        onPressed: () {
                          addimage(
                              imgsource: ImageSource.gallery, context: context);
                        },
                        icon: const Icon(
                          Icons.add_a_photo_outlined,
                        ),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                textField(
                  validatertext: 'Name',
                  labelText: 'Name',
                  prefixicon: Icons.person,
                  mycontroler: _namecontroler,
                  txttype: TextInputType.name,
                ),
                textField(
                  validatertext: 'Age',
                  labelText: 'Age',
                  prefixicon: Icons.numbers,
                  mycontroler: _agecontroler,
                  txttype: TextInputType.number,
                ),
                textField(
                  validatertext: 'Email',
                  labelText: 'Email',
                  prefixicon: Icons.email_outlined,
                  mycontroler: _emailcontroler,
                  txttype: TextInputType.emailAddress,
                ),
                textField(
                  validatertext: 'Phone Number',
                  labelText: 'Phone Number',
                  prefixicon: Icons.phone_android_rounded,
                  mycontroler: _numbercontroler,
                  txttype: TextInputType.number,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      addStdButtonclick(context);
                    }
                    //
                  },
                  child: const Text('Add Students'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  textField(
      {required String validatertext,
      required String labelText,
      required IconData prefixicon,
      required TextEditingController mycontroler,
      required TextInputType txttype}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextFormField(
        keyboardType: txttype,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'user $validatertext is empty';
          } else {
            return null;
          }
        },
        controller: mycontroler,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          prefixIcon: Icon(prefixicon),
          labelText: labelText,
        ),
      ),
    );
  }

  void addStdButtonclick(BuildContext context) async {
    final name = _namecontroler.text.trim();
    final age = _agecontroler.text.trim();
    final email = _emailcontroler.text.trim();
    final number = _numbercontroler.text.trim();

    if (name.isEmpty ||
        age.isEmpty ||
        email.isEmpty ||
        number.isEmpty ||
        imagefile!.isEmpty) {
      return;
    }

    final stddata = StdModal(
      name: name,
      age: age,
      email: email,
      number: number,
      photo: imagefile!,
    );

    submitalert(context, stddata);
  }

  void submitalert(BuildContext context, StdModal stddata) {
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
        // Navigator.of(context).pushAndRemoveUntil(
        //   MaterialPageRoute(builder: (builder) => FirstScreen()),
        //   (route) => false,
        // );
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Yes"),
      onPressed: () {
        addstd(stddata);

        Navigator.pop(context);
        _namecontroler.clear();
        _agecontroler.clear();
        _emailcontroler.clear();
        _numbercontroler.clear();
        imagefile = 'asset/img/avatarr.jpg';
        BlocProvider.of<AddStdBloc>(context).add(Addphoto(image: imagefile!));

        // setState(() {
        //   imagefile = null;
        // });

        // Navigator.of(context).pushAndRemoveUntil(
        //   MaterialPageRoute(builder: (builder) => FirstScreen()),
        //   (route) => false,
        // );
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("Conform Submision "),
      content: const Text("Are you sure to conform "),
      actions: [
        cancelButton,
        continueButton,
      ],
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
