import 'dart:js_interop';

import 'package:flutter/material.dart';
import 'package:hackathon_pet/models/pet.dart';
import 'screens/home_screen.dart'; // Import the HomeScreen
import 'package:hackathon_pet/screens/pet_owner_community_screen.dart';
import 'package:hackathon_pet/screens/stray_dog_adoption_screen.dart';
import 'package:hackathon_pet/screens/LostPetsList.dart';

// import 'package:hackathon_pet/screens/pettinder.dart';
import 'widgets/pet_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Pet App',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}

// class PetListScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     List<Pet> pets = [
//       Pet(
//           id: 'some_id_value',
//           name: 'Fluffy',
//           breed: 'Golden Retriever',
//           hairColor: 'Golden',
//           age: 3,
//           personality: 'Friendly',
//           imageUrl: 'assets/images/fluffy.jpg',
//           lostDate: DateTime.parse("2012-02-27")),
//     ];

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pets'),
//       ),
//       body: ListView.builder(
//         itemCount: pets.length,
//         itemBuilder: (context, index) {
//           return PetCard(pet: pets[index]);
//         },
//       ),
//     );
//   }
// }


