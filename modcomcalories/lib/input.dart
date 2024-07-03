import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  String? selectedGender;
  String? selectedDrink;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calories'),
      ),
      body: Column(
        children: [
          // Age
          Text(
            'Select Gender : $selectedGender',
            style: TextStyle(fontSize: 40),
          ),
          Radio(
              value: 'Male',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              }),
          RadioListTile(
              title: Text('Femalesss'),
              value: 'Female',
              groupValue: selectedGender,
              onChanged: (value) {
                setState(() {
                  selectedGender = value!;
                });
              }),
          Slider(value: 1.0, onChanged: (value) {}),
          Text(
            'Select Drink : $selectedDrink',
            style: TextStyle(fontSize: 40),
          ),
          // tea Or Coffee
          RadioListTile(
              title: Text('Tea'),
              value: 'Tea',
              groupValue: selectedDrink,
              onChanged: (value) {
                setState(() {
                  selectedDrink = value!;
                });
              }),
          RadioListTile(
              title: Text('Cofee'),
              value: 'Coffee',
              groupValue: selectedDrink,
              onChanged: (value) {
                setState(() {
                  selectedDrink = value!;
                });
              }),

          OutlinedButton(
              onPressed: () {
                bool isvalid = true;
                if (isvalid && selectedGender != null) {
                  // procede
                }
              },
              child: Text('Check'))
        ],
      ),
    );
  }
}
