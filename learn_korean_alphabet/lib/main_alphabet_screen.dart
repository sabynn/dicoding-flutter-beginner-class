import 'package:flutter/material.dart';
import 'package:learn_korean_alphabet/models/alphabet.dart';
import 'package:learn_korean_alphabet/detail_alphabet_screen.dart';

class MainAlphabet extends StatelessWidget {
  final String type;
  late List lst;
  MainAlphabet(this.type);

  @override
  Widget build(BuildContext context) {
    lst = type == 'consonants' ? consonantAlphabets : consonantVowels;
    return Scaffold(
      appBar: AppBar(
        title: type == 'consonants' ? const Text('Korean Consonants') : const Text('Korean Vowels'),
        backgroundColor: const Color(0xFF1D3557),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
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
                  )),
                  child: Container(
                    width: double.infinity,
                    height: MediaQuery.of(context).size.height * 45 / 200,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            type == 'consonants' ? 'Learn Korean Consonants': 'Learn Korean Vowels',
                            style: const TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            type == 'consonants' ? 'with Korean Pop Groups Example': 'with Korean Dramas Example',
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView.builder(
                  padding: const EdgeInsets.all(
                      8.0), // to disable GridView's scrolling
                  shrinkWrap: true, // You won't see infinite size error
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 3 / 2,
                      crossAxisSpacing: 20,
                      mainAxisSpacing: 20),
                  itemCount: lst.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) {
                          return DetailAlphabet(alphabets: lst[index]);
                        }));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          lst[index].alphabet,
                          style: const TextStyle(
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                        decoration: const BoxDecoration(
                            color: Color(0xFF1D3557), shape: BoxShape.circle),
                      ),
                    );
                  },
                ),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
