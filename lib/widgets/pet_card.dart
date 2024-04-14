import 'package:flutter/material.dart';
import 'package:hackathon_pet/models/pet.dart';

class PetCard extends StatelessWidget {
  final Pet pet;

  const PetCard({required this.pet});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(pet.imageUrl),
          Text(pet.name),
          Text(pet.breed),
          Text(pet.hairColor),
          Text('${pet.age} years old'),
          Text(pet.personality),
        ],
      ),
      margin: EdgeInsets.only(left: 40, right: 40),
    );
  }
}
