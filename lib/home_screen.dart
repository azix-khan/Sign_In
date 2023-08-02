import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  String? email;
  double? password;
  HomeScreen({super.key, required this.email, required this.password});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(
                Icons.emoji_people,
                size: 100,
                color: Colors.blue,
              ),
              Text(
                'Welcome',
                style: GoogleFonts.satisfy(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    // fontStyle: FontStyle.italic,
                    color: Colors.amber),
              ),
              Text(
                "I'm really happy to share \nthis beautiful Ui with you",
                style: GoogleFonts.satisfy(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 30,
                    fontWeight: FontWeight.w700,
                    // fontStyle: FontStyle.italic,
                    color: Colors.pink),
              ),
              const SizedBox(
                height: 20,
              ),
              Card(
                elevation: 30,
                child: Column(
                  children: [
                    Text(
                      "Your Email: ${widget.email}",
                      style: GoogleFonts.satisfy(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          // fontWeight: FontWeight.w700,
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Colors.purple),
                    ),
                  ],
                ),
              ),
              Card(
                elevation: 30,
                child: Column(
                  children: [
                    Text(
                      "Your Password: ${widget.password}",
                      style: GoogleFonts.satisfy(
                          textStyle: Theme.of(context).textTheme.displayMedium,
                          // fontWeight: FontWeight.w700,
                          fontSize: 20,
                          // fontStyle: FontStyle.italic,
                          color: Colors.purple),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
