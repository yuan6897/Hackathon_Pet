import 'package:flutter/material.dart';

class LostPetForm extends StatefulWidget {
  @override
  _LostPetFormState createState() => _LostPetFormState();
}

class _LostPetFormState extends State<LostPetForm> {
  final _formKey = GlobalKey<FormState>();
  String name = '';
  String imageUrl = '';
  String location = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Report Lost Pet')),
      body: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(labelText: 'Pet Name'),
              onSaved: (value) => name = value!,
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Last Seen Location'),
              onSaved: (value) => location = value!,
            ),
            ElevatedButton(
              onPressed: () {
                _formKey.currentState!.save();
                // Save data or handle submission
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
