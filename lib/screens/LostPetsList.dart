import 'package:flutter/material.dart';
import 'package:hackathon_pet/data/pet_data.dart';
import 'package:hackathon_pet/models/pet.dart';

class LostPetsList extends StatelessWidget {
  final List<Pet> lostPets = pets.where((pet) => pet.isLost).toList();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Lost Pets')),
      body: ListView.builder(
        itemCount: lostPets.length,
        itemBuilder: (context, index) {
          Pet pet = lostPets[index];
          return ListTile(
            title: Text(pet.name),
            subtitle:
                Text('Last seen: ${pet.lastSeenLocation} on ${pet.lostDate}'),
            leading: Image.asset(pet.imageUrl),
          );
        },
      ),
    );
  }
}
