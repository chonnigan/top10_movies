
import 'package:flutter/material.dart';
import 'package:top10_movies/Movie_detail.dart';

class Movie extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                crossAxisCount: 1,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 1.5,
                children: <Widget>[
                  _buildCard('The Con-Heartist', 'assets/thecon.jpg', context,
                      'Ina, whose ex-boyfriend runs off, leaving her in debt, manages to catch on a cunning con artist who tries to con her. '
                          'But instead of turning him to the police, she hires this con artist to swindle her ex-boyfriend to get revenge.'),
                  _buildCard('Red Notice', 'assets/rednotice.jpg', context,
                      'An Interpol agent tracks the world most wanted art thief.'),
                  _buildCard('Riam Fighting Angel', 'assets/riam.jpg', context,
                      'After her darling family got kidnapped by group of brutal gangsters, with the objective of forcing her to marry their boss, '
                          'so Riam has to find the way to rescue her family members and to get herself out from this crazy / deadly circumstance.'),
                  _buildCard('Wish Dragon', 'assets/dragon.png', context,
                      'Determined teen Din is longing to reconnect with his childhood best friend when he meets a wish-granting dragon '
                          'who shows him the magic of possibilities.'),
                  _buildCard('Army of the Dead', 'assets/army.jpg', context,
                      'Following a zombie outbreak in Las Vegas, a group of mercenaries take the ultimate gamble, '
                          'venturing into the quarantine zone to pull off the greatest heist ever attempted.'),
                  _buildCard('Aquaman', 'assets/aquaman.jpg', context,
                      'Arthur Curry, the human-born heir to the underwater kingdom of Atlantis, '
                          'goes on a quest to prevent a war between the worlds of ocean and land.'),
                  _buildCard('365 Days', 'assets/365.jpg', context,
                      'Massimo is a member of the Sicilian Mafia family and Laura is a sales director. '
                          'She does not expect that on a trip to Sicily trying to save her relationship, Massimo will kidnap her and give '
                          'her 365 days to fall in love with him.'),
                  _buildCard(
                      'Doraemon the Movie: Great Adventure in the Antarctic Kachi Kochi',
                      'assets/doraemon.jpg',
                      context,
                      'Unable to endure the midsummer heat, Doraemon transports Nobita and his friends to a huge iceberg floating in the South Pacific. '
                          'While creating an amusement parks with the secret tool "Ice-working Iron" the group finds a mysterious golden ring in the ice.'),
                  _buildCard('Wrath of Man', 'assets/warthofman.jpg', context,
                      'The plot follows H, a cold and mysterious character working at a cash truck company responsible for moving hundreds of millions '
                          'of dollars around Los Angeles each week.'),
                  _buildCard('Space Sweepers', 'assets/space.jpg', context,
                      'Set in the year 2092 and follows the crew of a space junk collector ship called The Victory. When they discover a humanoid '
                          'robot named Dorothy that known to be a weapon of mass destruction, they get involved in a risky business deal.')
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String namess, String img, context, spoils) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => MovieDetail(
                    Path: img,
                    names: namess,
                    details: spoils,
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(img), fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Align(
                    alignment: Alignment(0, 0.9),
                    child: Text(
                      namess,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          backgroundColor: Colors.black.withOpacity(0.75)),
                    )))));
  }
}