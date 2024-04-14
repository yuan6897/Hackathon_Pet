class Pet {
  final String id;
  final String name;
  final String imageUrl;
  final String breed;
  final String hairColor;
  final int age;
  final String personality;
  final bool isLost;
  final String lastSeenLocation;
  final DateTime lostDate;

  Pet({
    required this.id,
    required this.name,
    required this.imageUrl,
    required this.breed,
    required this.hairColor,
    required this.age,
    required this.personality,
    this.isLost = false,
    this.lastSeenLocation = '',
    required this.lostDate,
  });
}
