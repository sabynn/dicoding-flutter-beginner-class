import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:learn_korean_alphabet/models/alphabet.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailAlphabet extends StatelessWidget {
  final Alphabets alphabets;
  DetailAlphabet({required this.alphabets});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail of Alphabet'),
        backgroundColor: const Color(0xFF1D3557),
      ),
      backgroundColor: const Color(0xFF33425D),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
              delegate: SliverChildListDelegate(
                <Widget>[
                  ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50)),
                    child: Container(
                      decoration: const BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xFF0D47A1), Colors.blueAccent],
                        ),
                      ),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 40 / 110,
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                height: MediaQuery.of(context).size.height *
                                    40 /
                                    220,
                                alignment: Alignment.center,
                                child: Text(
                                  alphabets.alphabet,
                                  style: const TextStyle(
                                    fontSize: 40,
                                    color: Color(0xFF1D3557),
                                  ),
                                ),
                                decoration: const BoxDecoration(
                                    color: Colors.white,
                                    shape: BoxShape.circle),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Text(
                                  alphabets.name,
                                  style: GoogleFonts.openSans(
                                      fontSize: 30, color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: 20.00, horizontal: 40.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Center(
                            child: ClipRRect(
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20.0)),
                              child: Image.asset(
                                alphabets.hangulImage,
                                height: MediaQuery.of(context).size.height *
                                    40 /
                                    300,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Center(
                              child: Text(
                                alphabets.exampleName,
                                style: const TextStyle(
                                    fontSize: 25, color: Colors.white),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Center(
                              child: ClipRRect(
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20.0)),
                                child: Image.asset(
                                  alphabets.image,
                                  fit: BoxFit.fill,
                                  height: MediaQuery.of(context).size.height *
                                      40 /
                                      130,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
