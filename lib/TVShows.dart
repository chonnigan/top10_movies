
import 'package:flutter/material.dart';
import 'package:top10_movies/TVShows_Detail.dart';

class TVShows extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          SizedBox(height: 15.0),
          Container(
              padding: EdgeInsets.only(right: 15.0),
              width: MediaQuery.of(context).size.width ,
              height: MediaQuery.of(context).size.height,
              child: GridView.count(
                crossAxisCount: 1,
                primary: false,
                crossAxisSpacing: 10.0,
                mainAxisSpacing: 15.0,
                childAspectRatio: 1.5,
                children: <Widget>[
                  _buildCard('Vincenzo', 'assets/vincenzo.jpg', context,
                      'Vincenzo Cassano is an Italian lawyer and Mafia consigliere who moves back to Korea due to '
                          'a conflict within his organization.'),
                  _buildCard('Hometown Cha-Cha-Cha', 'assets/Hometown.jpg', context,
                      'A big city dentist opens up a practice in a close seaside village, home to a charming jack of all trades '
                          'who is her polar opposite in every way.'),
                  _buildCard('Nevertheless', 'assets/Nevertheless.jpg', context,
                      'The intoxicating charm of a flirtatious art school classmate pulls a reluctant love cynic into '
                          'a friends-with-benefits relationship.'),
                  _buildCard('The King Affection', 'assets/theKing.jpg', context,
                      'When the crown prince is killed, his twin sister assumes the throne while trying to keep her identity '
                          'and affection for her first love a royal secret.'),
                  _buildCard('Sisyphus: The Myth', 'assets/sisyphus.jpg', context,
                      'An unfathomable incident introduces a genius engineer to dangerous secrets of the world — and to a woman '
                          'from the future who come looking for him.'),
                  _buildCard('Squid Game', 'assets/squidgame.png', context,
                      'Hundreds of cash-strapped players accept a strange invitation to compete in childrens games with high stakes. '
                          'But, a tempting prize awaits the victor.'),
                  _buildCard('Attack on Titan', 'assets/AttackOnTitan.jpeg', context,
                      'Several hundred years ago, humans were nearly exterminated by Titans.'),
                  _buildCard('Dare to Love', 'assets/DareToLove.jpg', context,
                      'Thichakorn is an ambitious and competent attorney who has been given a chance to be the first female partner '
                          'in her prestigious law firm, Ross & Harvey, but she must first prove herself against her fellow rival, '
                          'Camellia, for that position. With such high stakes at hand, the firm also starts recruiting interns and trainees '
                          'to help with the added workload. Napawat aka "Q", joins the firm as a law trainee, eager to prove himself and earn his law '
                          'qualification. But, Q also has another motive. He has long harboured a secret crush for Thichakorn and he wants her attention. '
                          'In a law firm where constant battles are always being fought, will he be able to win this battle of the heart?'),
                  _buildCard('Snowpiercer', 'assets/snowpiercer.jpg', context,
                      'Set more than seven years after the world has become a frozen wasteland, the remnants of humanity inhabit a gigantic, '
                          'perpetually-moving train that circles the globe as class warfare, social injustice and the politics of survival play out.'),
                  _buildCard('Hospital Playlist', 'assets/HospitalPlaylist.jpg', context,
                      'Every day is extraordinary for five doctors and their patients inside a hospital, where birth, death and everything in between coexist.')
                ],
              )),
          SizedBox(height: 15.0)
        ],
      ),
    );
  }

  Widget _buildCard(String names, String imgPath, context,spoil) {
    return Padding(
        padding: EdgeInsets.only(top: 5.0, bottom: 5.0, left: 5.0, right: 5.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => TVShowsDetail(
                    assetPath: imgPath,
                    name: names,
                    detail: spoil,
                  )));
            },
            child: Container(
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15.0),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          spreadRadius: 3.0,
                          blurRadius: 5.0)
                    ],
                    color: Colors.white),
                child: Align(
                    alignment: Alignment(0,0.9),
                    child: Text(names,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 20.0,
                          backgroundColor: Colors.black.withOpacity(0.75)),
                    )))));
  }
}
