import 'package:flutter/material.dart';
import 'package:hackathon_pet/models/pet.dart';

class PetTinder extends StatefulWidget {
  @override
  _PetTinderState createState() => _PetTinderState();
}

class _PetTinderState extends State<PetTinder> {
  List<Pet> pets = []; // This would be filled with actual pet data
  List<Pet> filteredPets = [];
  String selectedBreed = 'All';
  int selectedAge = 0;
  String selectedColor = 'All';

  @override
  void initState() {
    super.initState();
    // Initialize pets list with actual data
    filteredPets = pets;
  }

  void filterPets() {
    setState(() {
      filteredPets = pets.where((pet) {
        return (selectedBreed == 'All' || pet.breed == selectedBreed) &&
               (pet.age == selectedAge || selectedAge == 0) &&
               (selectedColor == 'All' || pet.hairColor == selectedColor);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Tinder'),
      ),
      body: Column(
        children: [
          // Filters
          DropdownButton<String>(
            value: selectedBreed,
            onChanged: (value) {
              if (value != null) {
                setState(() {
                  selectedBreed = value;
                  filterPets();
                });
              }
            },
            items: ['All', 'Labrador', 'Beagle', 'Bulldog'] // Add all relevant breeds here
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          // List of Pets
          Expanded(
            child: ListView.builder(
              itemCount: filteredPets.length,
              itemBuilder: (context, index) {
                final pet = filteredPets[index];
                return ListTile(
                  leading: Image.network(pet.imageUrl),
                  title: Text('${pet.breed}, ${pet.age} years old'),
                  subtitle: Text('${pet.hairColor}, ${pet.personality}'),
                  onTap: () {
                    // Handle the tap event
                    // Maybe navigate to a detail page or like/dislike action
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
