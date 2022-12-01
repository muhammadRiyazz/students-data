import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_sample/bloc%20functions/bloc/editstd/editstd_bloc.dart';
import 'package:hive_sample/database/Functions/Modals/modals.dart';
import 'package:image_picker/image_picker.dart';

import '../../database/Functions/functons_db.dart';
import '../screen1.dart';

class Editpage extends StatelessWidget {
  Editpage({super.key, required this.stddata});
  final StdModal stddata;

  TextEditingController? _namecontroler;

  TextEditingController? _agecontroler;

  TextEditingController? _emailcontroler;

  TextEditingController? _numbercontroler;

  String? imagefile;

  void myinitState() {
    _namecontroler = TextEditingController(text: stddata.name);
    _agecontroler = TextEditingController(text: stddata.age);
    _emailcontroler = TextEditingController(text: stddata.email);
    _numbercontroler = TextEditingController(text: stddata.number);
    imagefile = stddata.photo;
  }

  void addimage(
      {required ImageSource imgsource, required BuildContext context}) async {
    final file = await ImagePicker().pickImage(source: imgsource);
    imagefile = file!.path;

    BlocProvider.of<EditstdBloc>(context).add(Updatedphoto(photo: imagefile!));
  }

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    myinitState();
    BlocProvider.of<EditstdBloc>(context).add(Updatedphoto(photo: imagefile!));

    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(
                  height: 40,
                ),
                BlocBuilder<EditstdBloc, EditstdState>(
                  builder: (context, state) {
                    return CircleAvatar(
                      backgroundImage: FileImage(File(state.photo)),
                      radius: 70,
                      child: IconButton(
                        onPressed: () {
                          // var snackBar = SnackBar(
                          //   content: Text('ssssss'),
                          //   action: SnackBarAction(
                          //     label: 'Undo',
                          //     onPressed: () {},
                          //   ),
                          // );
                          // ScaffoldMessenger.of(context).showSnackBar(snackBar);
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
                textField(
                  validatertext: 'Name',
                  labeltext: 'Name',
                  icon: Icons.person,
                  myeditcontroller: _namecontroler!,
                  txttype: TextInputType.name,
                ),
                textField(
                  validatertext: 'Age',
                  labeltext: 'Age',
                  icon: Icons.numbers,
                  myeditcontroller: _agecontroler!,
                  txttype: TextInputType.number,
                ),
                textField(
                  validatertext: 'Email',
                  labeltext: 'Email',
                  icon: Icons.email_outlined,
                  myeditcontroller: _emailcontroler!,
                  txttype: TextInputType.emailAddress,
                ),
                textField(
                  validatertext: 'Phone Number',
                  labeltext: 'Phone Number',
                  icon: Icons.phone,
                  myeditcontroller: _numbercontroler!,
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
                      submitalert(context);
                    }
                  },
                  child: const Text('Submit'),
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
      required String labeltext,
      required IconData icon,
      required TextEditingController myeditcontroller,
      required TextInputType txttype}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: TextFormField(
        keyboardType: txttype,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'user $validatertext is empty';
          } else {
            return null;
          }
        },
        controller: myeditcontroller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(30),
            ),
          ),
          prefixIcon: Icon(icon),
          labelText: labeltext,
        ),
      ),
    );
  }

  void submitclick(int key) async {
    final name = _namecontroler!.text.trim();
    final age = _agecontroler!.text.trim();
    final email = _emailcontroler!.text.trim();
    final number = _numbercontroler!.text.trim();

    if (name.isEmpty ||
        age.isEmpty ||
        email.isEmpty ||
        number.isEmpty ||
        imagefile!.isEmpty) {
      return;
    }
    final stddata = StdModal(
        name: name, age: age, email: email, number: number, photo: imagefile!);
    editdata(key, stddata);
    _namecontroler!.clear();
    _agecontroler!.clear();
    _emailcontroler!.clear();
    _numbercontroler!.clear();
    // setState(
    //   () {
    //     imagefile = null;
    //   },
  }

  void submitalert(BuildContext context) {
    Widget cancelButton = TextButton(
      child: const Text("Cancel"),
      onPressed: () {
        Navigator.pop(context);
      },
    );
    Widget continueButton = TextButton(
      child: const Text("Yes"),
      onPressed: () async {
        submitclick(stddata.key);
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (ctx1) => FirstScreen()),
            (route) => false);
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
