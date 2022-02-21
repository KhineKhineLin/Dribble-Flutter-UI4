import 'package:dribbble_flutter_ui4/music_player_app/music_player_main_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlayPage extends StatefulWidget {
  const PlayPage({Key? key}) : super(key: key);

  @override
  _PlayPageState createState() => _PlayPageState();
}

class _PlayPageState extends State<PlayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Stack(
        children: [
          Positioned(
              left: 16,
              right: 16,
              top: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                      onPressed: () => Navigator.pop(context),
                      icon: Icon(Icons.arrow_back_ios)),
                  Icon(Icons.favorite_border)
                ],
              )),
          Positioned(
              left: 64,
              right: 64,
              top: 100,
              child: Container(
                height: 260,
                width: MediaQuery.of(context).size.width - 100,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://images.unsplash.com/photo-1595331467338-0184f06c40e0?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1593&q=80'),
                        fit: BoxFit.cover)),
                child: Center(
                  child: CircleAvatar(
                    radius: 24,
                    backgroundColor: Colors.yellow,
                  ),
                ),
              )),
          Positioned(
              left: 16,
              right: 16,
              top: 410,
              child: Container(
                height: 197,
                child: Column(
                  children: [
                    Icon(Icons.music_note),
                    SizedBox(
                      height: 16,
                    ),
                    Text(
                      'Sam Fischer',
                      style: GoogleFonts.montserrat(
                          fontSize: 19, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'This City',
                      style: GoogleFonts.montserrat(),
                    ),
                    SizedBox(
                      height: 52,
                    ),
                    Container(
                      height: 48,
                      color: Colors.red,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '1:35',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '3:42',
                          style: GoogleFonts.montserrat(
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    )
                  ],
                ),
              )),
          Positioned(
              left: 24,
              right: 24,
              bottom: 16,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.refresh),
                  Icon(Icons.skip_previous),
                  Card(
                      color: backgroundColor,
                      elevation: 12,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16)),
                      child: Container(
                        height: 84,
                        width: 48,
                        child: Center(
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  Icon(Icons.skip_next),
                  Icon(Icons.shuffle)
                ],
              ))
        ],
      ),
    );
  }
}
