import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_sample/database/Functions/Modals/modals.dart';
import 'package:image_picker/image_picker.dart';

import '../../database/Functions/functons_db.dart';
import '../screen1.dart';

class Editpage extends StatefulWidget {
  const Editpage({super.key, required this.stddata});
  final StdModal stddata;

  @override
  State<Editpage> createState() => _EditpageState();
}

class _EditpageState extends State<Editpage> {
  void addimage({required ImageSource imgsource}) async {
    // ignore: unused_local_variable
    final file = await ImagePicker().pickImage(source: imgsource);

    setState(() {
      imagefile = file!.path;
    });
  }

  TextEditingController? _namecontroler;
  TextEditingController? _agecontroler;
  TextEditingController? _emailcontroler;
  TextEditingController? _numbercontroler;

  @override
  void initState() {
    _namecontroler = TextEditingController(text: widget.stddata.name);
    _agecontroler = TextEditingController(text: widget.stddata.age);
    _emailcontroler = TextEditingController(text: widget.stddata.email);
    _numbercontroler = TextEditingController(text: widget.stddata.number);
    imagefile = widget.stddata.photo;
    super.initState();
  }

  String? imagefile;
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
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
                CircleAvatar(
                  backgroundImage: (imagefile == null)
                      ? AssetImage('asset/img/avatarr.jpg')
                      : FileImage(File(imagefile!)) as ImageProvider,
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
                      addimage(imgsource: ImageSource.gallery);
                    },
                    icon: const Icon(
                      Icons.add_a_photo_outlined,
                    ),
                  ),
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
    setState(() {
      imagefile = null;
    });
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
        submitclick(widget.stddata.key);
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
