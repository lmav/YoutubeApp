import 'package:flutter/material.dart';
import '../tags.dart';

class SavedTags extends StatelessWidget {
  List<Tags> tags;

  

  Widget build(BuildContext context) {

    tags = _tags();
    return SizedBox(
      // Horizontal ListView
      height: 50,

      child: ListView.builder(
        itemCount: tags.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
         return  Container(
            alignment: Alignment.center,
            child: Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    tags[index].getTags,
                    style: TextStyle(fontSize: 14.0),
                  ),
                )),
          );
        },
      ),
    );
  }

  List<Tags> _tags() {
    return [
      Tags(name: "Neil deGrasse Tyson"),
      Tags(name: "First Take"),
      Tags(name: "Motivation"),
      Tags(name: "Ted Talks"),
      Tags(name: "Beyonce"),
      Tags(name: "Kevin Hart"),
      Tags(name: "Google"),
      Tags(name: "How to cook"),
      Tags(name: "ThinkVision"),
      Tags(name: "Lenovo"),
      Tags(name: "Arris"),
      Tags(name: "Apple"),
      Tags(name: "IBM"),
      Tags(name: "Amazon"),
      Tags(name: "Bill gates"),
    ];
  }
}
