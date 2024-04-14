import 'package:flutter/material.dart';
import 'pettinder.dart'; // Replace with the actual import path
import 'pet_owner_community_screen.dart'; // Replace with the actual import path
import 'stray_dog_adoption_screen.dart'; // Replace with the actual import path

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pet Community'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.push(
            //       context,
            //       MaterialPageRoute(builder: (context) => PetTinderScreen()),
            //     );
            //   },
            //   child: Text('Pet Tinder'),
            // ),
            SizedBox(height: 20), // Provides spacing between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PetOwnerCommunityScreen()),
                );
              },
              child: Text('Pet Owner Community'),
            ),
            SizedBox(height: 20), // Provides spacing between the buttons
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StrayDogAdoptionScreen()),
                );
              },
              child: Text('Stray Dog Adoption / Lost and Found'),
            ),
            SizedBox(height:20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PetTinder()),
                );
              },
              child: Text('Pet Tinder'),
            ),


          ],
        ),
      ),
    );
  }
}
// import 'package:flutter/material.dart';
// import 'package:flutter_tindercard/flutter_tindercard.dart';
// import 'package:hackathon_pet/data/pet_data.dart';
// import 'package:hackathon_pet/widgets/pet_card.dart';

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     CardController controller;
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Pet Tinder'),
//       ),
//       body: TinderSwapCard(
//         orientation: AmassOrientation.BOTTOM,
//         totalNum: pets.length,
//         stackNum: 3,
//         swipeEdge: 4.0,
//         maxWidth: MediaQuery.of(context).size.width * 0.9,
//         maxHeight: MediaQuery.of(context).size.height * 0.9,
//         minWidth: MediaQuery.of(context).size.width * 0.8,
//         minHeight: MediaQuery.of(context).size.height * 0.8,
//         cardBuilder: (context, index) => PetCard(pet: pets[index]),
//         cardController: controller = CardController(),
//         swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
//           /// Get swiping card's alignment
//           if (align.x < 0) {
//             //Card is LEFT swiping
//           } else if (align.x > 0) {
//             //Card is RIGHT swiping
//           }
//         },
//         swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
//           // Get orientation & index of swiped card!
//         },
//       ),
//     );
//   }
// }
