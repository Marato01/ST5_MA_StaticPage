import 'package:flutter/material.dart';
import '../cons/spacing.dart';
import '../widget/large_container.dart';
import '../widget/small_container.dart';
import '../widget/vertical_container.dart';
import 'drawer/menu.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Travel', style: TextStyle(fontWeight: FontWeight.bold),),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: Icon(Icons.notifications),
          )
        ],
        backgroundColor: Colors.limeAccent,
      ),

      //drawer
      drawer: const MenuDrawer(),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Spacing.vertical(context),
              //top container
              const LargeContainer(imagePath: 'assets/images/ankor.jpg'),
              Spacing.vertical(context),
              //title
              const Center(child: Text('Visiting Angkor Wat', style: TextStyle(fontWeight: FontWeight.bold),),),
              //content
              const Text('Angkor Wat is an architectural masterpiece and the largest religious monument in the world – covering an area four times the size of Vatican City. It was built by the Khmer King Suryavarman II in the first half of the 12th century, around the year 1110-1150, making Angkor Wat almost 900 years old.'),
              Spacing.vertical(context),
               //mid container
               Row(
                children: [
                  //right container
                  const VerticalContainer(imagePath: 'assets/images/ankor.jpg'),
                    Spacing.horizontal(context),
                  //left container
                  Column(children: [
                  const SmallContainer(imagePath: 'assets/images/ankor.jpg'),
                    Spacing.vertical(context),
                  const SmallContainer(imagePath: 'assets/images/ankor.jpg'),
                  ],)
                ],
              ),
              Spacing.vertical(context),
              const Text('Location in Siem Reap', style: TextStyle(fontWeight: FontWeight.bold),),
              Spacing.vertical(context),
              //bottom container
              const LargeContainer(imagePath: 'assets/images/taprom.jpg'),
            ],
          ),
        ),
      ),
    );
  }
}


