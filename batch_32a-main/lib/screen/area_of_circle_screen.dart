import 'package:batch_32a/model/area_of_circle_model.dart';
import 'package:flutter/material.dart';

class AreaOfCircleScreen extends StatefulWidget {
  const AreaOfCircleScreen({super.key});

  @override
  State<AreaOfCircleScreen> createState() => _AreaOfCircleScreenState();
}

class _AreaOfCircleScreenState extends State<AreaOfCircleScreen> {
  double? r;
  double? area;
  double pi = 3.14;

  AreaOfCircleModel? areaOfCircleModel;
  final formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        title: const Text("Area of Circle"),
        backgroundColor: Colors.green,
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              TextFormField(
                onChanged: (value) {
                  r = int.parse(value) as double?;
                },
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15.0))
                  ),
                  labelText: 'Enter radius ',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Enter radius";
                  }
                  return null;
                },
              ),

              const SizedBox(height: 8),
              // Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    if (formkey.currentState!.validate()) {
                      //validate cha bhane ball code execute garne
                    }
                    setState(
                      () {
                        // //Al;gorith,m
                        // // Business logic

                        areaOfCircleModel = AreaOfCircleModel(r: r!);
                        area = areaOfCircleModel!.a();
                      },
                    );
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),

              // Display informatuion

              RichText(
                text: TextSpan(
                  text: 'A',
                  style: TextStyle(
                    color: Colors.yellow,
                    fontSize: 30,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'rea is :$area ',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
