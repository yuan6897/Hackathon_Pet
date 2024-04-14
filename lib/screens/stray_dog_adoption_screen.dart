import 'package:flutter/material.dart';
import 'package:hackathon_pet/models/pet.dart';

class StrayDogAdoptionScreen extends StatefulWidget {
  @override
  _StrayDogAdoptionScreenState createState() => _StrayDogAdoptionScreenState();
}

class _StrayDogAdoptionScreenState extends State<StrayDogAdoptionScreen> {
  List<Pet> dogs = [];  // This would be filled with actual dog data
  List<Pet> filteredDogs = [];
  String selectedBreed = 'All';
  int selectedAge = 0;
  String selectedColor = 'All';

  @override
  void initState() {
    super.initState();
    // Initialize dogs list with actual data
    filteredDogs = dogs;
  }

  void filterDogs() {
    setState(() {
      filteredDogs = dogs.where((dog) {
        return (selectedBreed == 'All' || dog.breed == selectedBreed) &&
               (dog.age == selectedAge || selectedAge == 0) &&
               (selectedColor == 'All' || dog.hairColor == selectedColor);
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stray Dog Adoption'),
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
                  filterDogs();
                });
              }
            },
            items: ['All', 'Labrador', 'Beagle', 'Bulldog']
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          // List of Dogs
          Expanded(
            child: ListView.builder(
              itemCount: filteredDogs.length,
              itemBuilder: (context, index) {
                final dog = filteredDogs[index];
                return ListTile(
                  leading: Image.network(dog.imageUrl),
                  title: Text('${dog.breed}, ${dog.age} years old'),
                  subtitle: Text('${dog.hairColor}, ${dog.personality}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
