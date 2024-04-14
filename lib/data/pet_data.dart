import 'package:hackathon_pet/models/pet.dart';

final List<Pet> pets = [
  Pet(
    id: '1',
    name: 'Buddy',
    imageUrl: 'assets/images/buddy.jpg',
    breed: 'Golden Retriever',
    hairColor: 'Golden',
    age: 3,
    personality: 'Friendly and Energetic',
    isLost: true,
    lastSeenLocation: 'Central Park, NYC',
    lostDate: DateTime(2024, 4, 10),
  ),
  // Add more pets here
];
