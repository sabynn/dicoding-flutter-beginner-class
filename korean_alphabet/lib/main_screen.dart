import 'package:flutter/material.dart';
import 'package:learn_korean_alphabet/main_alphabet_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreen createState() => _MainScreen();
}

class _MainScreen extends State<MainScreen> {
  TextEditingController controller = TextEditingController();
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  String _welcome = "";

  void _welcomingUser(String name) {
    setState(() {
      _welcome = "Welcome, " + name;
    });
  }

  final snackBar = const SnackBar(
    content: Text('You must submit your name first'),
    duration: Duration(seconds: 2),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: const Text('한글 (Hangeul/Korean Alphabet)'),
        backgroundColor: const Color(0xFF1D3557),
      ),
      backgroundColor: const Color(0xFF33425D),
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverList(
                delegate: SliverChildListDelegate(<Widget>[
              Image.asset(
                "assets/images/background.png",
                height: 250,
              ),
              Center(
                child: Text(
                  'Let\'s Learn Korean Alphabet',
                  style: GoogleFonts.lato(
                      fontSize: 27,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFFFFFFF)),
                  textAlign: TextAlign.center,
                ),
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    '$_welcome',
                    style: GoogleFonts.openSans(fontSize: 25, color: Color(0xFFFFFFFF)),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Form(
                  autovalidateMode: AutovalidateMode.disabled,
                  key: _formKey,
                  child: TextFormField(
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please fill this field';
                      }
                      _name = value;
                      return null;
                    },
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                    // controller: controller,
                    decoration: const InputDecoration(
                      errorStyle: TextStyle(fontSize: 16.0),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      labelText: 'Input Your Name Here',
                      labelStyle: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Color(0xFF0D47A1),
                ),
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _welcomingUser(_name);
                  }
                  controller.dispose();
                },
                child: const Text(
                  'Submit',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      if (_welcome != "") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainAlphabet("consonants");
                        }));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          ListTile(
                            title: Text('Learn Korean Consonant Alphabet'),
                            subtitle: Text('with KPop Group Example'),
                          ),
                        ],
                      ),
                    ),
                  )),
              Padding(
                  padding: EdgeInsets.all(10.0),
                  child: InkWell(
                    onTap: () {
                      if (_welcome != "") {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return MainAlphabet("vowels");
                        }));
                      } else {
                        ScaffoldMessenger.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          ListTile(
                            title: Text('Learn Korean Vowel Alphabet'),
                            subtitle: Text('with KDrama Example'),
                          ),
                        ],
                      ),
                    ),
                  )),
            ]))
          ],
        ),
      ),
    );
  }
}
