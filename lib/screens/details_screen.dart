import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hive_sample/database/Functions/Modals/modals.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.data});
  final StdModal data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Student Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          right: 30,
          left: 30,
          bottom: 30,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(
                height: 50,
              ),
              Center(
                child: CircleAvatar(
                  backgroundImage: FileImage(File(data.photo)),
                  radius: 77,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              containerdata(textdata: 'Name : ${data.name}'),
              const SizedBox(
                height: 30,
              ),
              containerdata(textdata: 'Age : ${data.age}'),
              const SizedBox(
                height: 30,
              ),
              containerdata(textdata: 'Email : ${data.email}'),
              const SizedBox(
                height: 30,
              ),
              containerdata(textdata: 'Phone Number : ${data.number}'),
            ],
          ),
        ),
      ),
    );
  }

  Widget containerdata({required String textdata}) {
    return Container(
      decoration: BoxDecoration(
        color: const Color.fromARGB(136, 208, 197, 197),
        borderRadius: BorderRadius.circular(30),
      ),
      height: 40,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(textdata),
      ),
    );
  }
}
