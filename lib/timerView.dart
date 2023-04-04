// ignore: unused_import
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:timer/timerVM.dart';
import 'package:google_fonts/google_fonts.dart';

// ignore: must_be_immutable
class TimerView extends StatelessWidget {
  TimerView({super.key});

  final TimerVM _timerVM = TimerVM();

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold(
      backgroundColor: Color.fromARGB(218, 255, 208, 0),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const SizedBox(
              height: 70,
            ),
            // ignore: sized_box_for_whitespace
            Container(
              height: 72,
              width: 220,
              child: 
              Text(
                "Hi Creator!",
                style: GoogleFonts.allura(
                  fontSize: 50,
                  color: Colors.white,
                )
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(20)),
                color: Color(0xffCAF0F8),
              ),
              height: 520,
              width: 350,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    "Timer",
                    style: GoogleFonts.akayaKanadaka(
                      fontSize: 32,
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                    )
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Observer(builder: (context) {
                        return Text(
                          _timerVM.min.toString(),
                          style: GoogleFonts.lobster(
                            fontSize: 70
                          )
                        );
                      }),
                      const SizedBox(
                        width: 5,
                      ),
                      Observer(builder: (context) {
                        return Text(
                          ":",
                          style: GoogleFonts.lobster(
                            fontSize: 70
                          ),
                        );
                      }),
                      const SizedBox(
                        width: 5,
                      ),
                      Observer(builder: (context) {
                        return Text(
                          _timerVM.sec.toString(),
                          style: GoogleFonts.lobster(
                            fontSize: 70
                          )
                        );
                      }),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Observer(builder: (context) {
                      return ElevatedButton(
                    
                        onPressed: () {
                          _timerVM.countdown();
                        },
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(40, 7, 40, 7),
                          child: Text(
                            _timerVM.Status,
                            style: GoogleFonts.eduNswActFoundation(
                              fontSize: 30,
                            ),
                          ),
                        ),
                      );
                    }),
                    const SizedBox(
                      width: 10,
                    ),
                    
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
