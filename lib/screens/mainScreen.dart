import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'components/appTitle.dart';
import 'components/mainContainer.dart';

class AppMainScreen extends StatefulWidget {
  const AppMainScreen({super.key});

  @override
  State<AppMainScreen> createState() => _AppMainScreenState();
}

class _AppMainScreenState extends State<AppMainScreen> {
  @override
  Widget build(BuildContext context) {
    final bodySize = MediaQuery.of(context).size;
    var GFont = GoogleFonts.playfairDisplay();

    return Scaffold(
      // backgroundColor: Colors.black.withOpacity(0.5),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Stack(
            children: [
              mainContainer(bodySize),
              appTitle(bodySize, GFont),
              Positioned(
                top: 50,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                      height: 250,
                      width: bodySize.width*0.8,
                      decoration: BoxDecoration(
                        color: Colors.grey.withOpacity(0.2),
                        border: Border.all(color: Colors.black, width: 3),
                        borderRadius: const BorderRadius.all(Radius.circular(20),
                        )
                      ),
                      child: Column(
                        children: [
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: const EdgeInsets.all(30),
                            height: 170,
                            width: bodySize.width*0.8,
                            decoration: const BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.all(Radius.circular(20))
                            ),
                            child: Text(
                              'Operations',
                              maxLines: null,
                              style: GFont.copyWith(
                                color: Colors.black,
                                fontSize: 40,
                              ),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              decoration: const BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.all(Radius.circular(20))
                              ),
                            ),
                          )
                        ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
