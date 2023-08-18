import 'dart:io';
import 'dart:math';

import 'package:flutter/material.dart';

import '../Utils/global.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Home Page",
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Form(
                key: formKey,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("English"),
                        TextFormField(
                          onSaved: (val) {
                            Global.s1 = val;
                          },
                          decoration: InputDecoration(
                            hintText: "s1",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Gujarati"),
                        TextFormField(
                          onSaved: (val) {
                            Global.s2 = val;
                          },
                          decoration: InputDecoration(
                            hintText: "s2",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Science"),
                        TextFormField(
                          onSaved: (val) {
                            Global.s3 = val;
                          },
                          decoration: InputDecoration(
                            hintText: "s3",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Chemistry"),
                        TextFormField(
                          onSaved: (val) {
                            Global.s4 = val;
                          },
                          decoration: InputDecoration(
                            hintText: "s4",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Text("Math"),
                        TextFormField(
                          onSaved: (val) {
                            Global.s5 = val;
                          },
                          decoration: InputDecoration(
                            hintText: "s5",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            formKey.currentState!.save();
                            Navigator.pushReplacementNamed(
                                context, 'all_Quotes');
                          },
                          child: const Text("Submit"),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
