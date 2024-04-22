import 'dart:html';
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_web_example/constant.dart';
import 'package:google_fonts/google_fonts.dart';
import "package:hovering/hovering.dart";

class PortfolioPage extends StatelessWidget {
  PortfolioPage({super.key});

  // Define a ScrollController
  final ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        forceMaterialTransparency: true,
        primary: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GestureDetector(
            onTap: () {
              _scrollController.animateTo(
                0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            },
            child: CircleAvatar(
              child: Image.asset(
                '1000_F_337255148_9tccNfphQtFZVLewTLZvqJikiUtuyeix.jpg',
                height: 150,
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        _scrollController.animateTo(
                          mediaQueryHeight + mediaQueryWidth * 0.01,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: HoverWidget(
                        hoverChild: Text("Projects",
                            style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                color: lightPurple,
                                fontSize: 18,
                              ),
                            )),
                        onHover: (event) {},
                        child: Text("Projects",
                            style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                color: black,
                                fontSize: 18,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        _scrollController.animateTo(
                          mediaQueryHeight + mediaQueryWidth * 0.515,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: HoverWidget(
                        hoverChild: Text("About",
                            style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                color: lightPurple,
                                fontSize: 18,
                              ),
                            )),
                        onHover: (event) {},
                        child: Text("About",
                            style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                color: black,
                                fontSize: 18,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    HoverWidget(
                      hoverChild: Text("Experience",
                          style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                              color: lightPurple,
                              fontSize: 18,
                            ),
                          )),
                      onHover: (event) {},
                      child: Text("Experience",
                          style: GoogleFonts.manrope(
                            textStyle: const TextStyle(
                              color: black,
                              fontSize: 18,
                            ),
                          )),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {
                        _scrollController.animateTo(
                          mediaQueryHeight + mediaQueryWidth * 2,
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      },
                      child: HoverWidget(
                        hoverChild: Text("Contacts",
                            style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                color: lightPurple,
                                fontSize: 18,
                              ),
                            )),
                        onHover: (event) {},
                        child: Text("Contacts",
                            style: GoogleFonts.manrope(
                              textStyle: const TextStyle(
                                color: black,
                                fontSize: 18,
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
      backgroundColor: white,
      body: SingleChildScrollView(
        controller: _scrollController, // Assign the ScrollController here
        child: Column(
          children: [
            SizedBox(
              width: mediaQueryWidth,
              height: mediaQueryWidth * .5,
              child: Center(
                child: SizedBox(
                  height: mediaQueryWidth / 2.5,
                  width: mediaQueryWidth * .9,
                  child: Center(
                    child: Container(
                      width: mediaQueryWidth,
                      height: mediaQueryWidth * 0.360,
                      decoration: const BoxDecoration(
                        color: Colors.black,
                        image: DecorationImage(
                          image: AssetImage(
                            '10016491_27230.jpg',
                          ),
                        ),
                      ),
                      child: HoverWidget(
                        hoverChild: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50.0, top: 100),
                              child: Text("VAIBHAV",
                                  style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                      color: lightPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 150,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 50.0, top: 230),
                              child: Text("TIWARI",
                                  style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                      color: lightPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 150,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 230.0, top: 400),
                              child: Text("FLUTTER DEVELOPER",
                                  style: GoogleFonts.manrope(
                                    textStyle: const TextStyle(
                                      color: white,
                                      fontSize: 50,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 1030.0, top: 200),
                              child: Text("Hi,",
                                  style: GoogleFonts.manrope(
                                    textStyle: const TextStyle(
                                      color: white,
                                      fontSize: 50,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 1030.0, top: 260),
                              child: Text(
                                  "I am vaibhav tiwari senior flutter developer",
                                  style: GoogleFonts.manrope(
                                    textStyle: const TextStyle(
                                      color: white,
                                      fontSize: 20,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 1030.0, top: 280),
                              child: Text(
                                  "I have 2 year of experience in flutter devlopment",
                                  style: GoogleFonts.manrope(
                                    textStyle: const TextStyle(
                                      color: white,
                                      fontSize: 20,
                                    ),
                                  )),
                            )
                          ],
                        ),
                        onHover: (event) {},
                        child: Stack(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 350.0, top: 50),
                              child: Text("VAIBHAV",
                                  style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                      color: lightPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 200,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 350.0, top: 210),
                              child: Text("TIWARI",
                                  style: GoogleFonts.lexend(
                                    textStyle: const TextStyle(
                                      color: lightPurple,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 200,
                                    ),
                                  )),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 800.0, top: 450),
                              child: Text("FLUTTER DEVELOPER",
                                  style: GoogleFonts.manrope(
                                    textStyle: const TextStyle(
                                      color: white,
                                      fontSize: 50,
                                    ),
                                  )),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              // Add your widgets here
            ), //intro
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.width * .5,
                decoration: const BoxDecoration(),
                // Add your widgets here
                child: Center(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2,
                            childAspectRatio: 2,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 10),
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(
                                0.2), // Adjust opacity for translucency
                            borderRadius: BorderRadius.circular(
                                20), // Optional: Add border radius for rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.3), // Adjust opacity as needed
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            // Optional: ClipRRect to round the corners of child
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              // Apply a backdrop filter for blur effect
                              filter: ImageFilter.blur(
                                  sigmaX: 10,
                                  sigmaY:
                                      10), // Adjust sigmaX and sigmaY for blur intensity
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white10,
                                  borderRadius: BorderRadius.circular(
                                      20), // Optional: Add border radius for rounded corners
                                ),
                                child: const Center(
                                  child: Text(
                                    'Project 1',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                                20), // Optional: Add border radius for rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.1), // Adjust opacity as needed
                                spreadRadius: 5,
                                blurRadius: 5,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: BackdropFilter(
                              filter: ImageFilter.blur(sigmaX: 8, sigmaY: 8),
                              child: Container(
                                child: const Center(
                                  child: Text('Project 1',
                                      style: TextStyle(color: Colors.white)),
                                ), // Optional: Adjust text color
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                deepPurple, // Purple color for top left
                                Colors.black,
                                deepPurple, // Purple color for bottom right
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(
                                20), // Optional: Add border radius for rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.3), // Adjust opacity as needed
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Center(
                              child: Text('Project 1',
                                  style: TextStyle(
                                      color: Colors
                                          .white))), // Optional: Adjust text color
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            gradient: const LinearGradient(
                              colors: [
                                deepPurple, // Purple color for top left
                                Colors.black,
                                deepPurple, // Purple color for bottom right
                              ],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                            borderRadius: BorderRadius.circular(
                                20), // Optional: Add border radius for rounded corners
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(
                                    0.3), // Adjust opacity as needed
                                spreadRadius: 5,
                                blurRadius: 7,
                                offset: const Offset(
                                    0, 3), // changes position of shadow
                              ),
                            ],
                          ),
                          child: const Center(
                              child: Text('Project 1',
                                  style: TextStyle(
                                      color: Colors
                                          .white))), // Optional: Adjust text color
                        ),
                      ),
                    ],
                  ),
                )), //project
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width * .5,
              // Add your widgets here
              child: const Center(
                child: Text('about'),
              ),
            ), //about
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.width / 7,
              color: darkMirrorPurple,
              // Add your widgets here
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.facebook),
                      hoverColor: lightPurple,
                      tooltip: 'facebook',
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.email),
                      hoverColor: lightPurple,
                      tooltip: 'email',
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    IconButton.filledTonal(
                      onPressed: () {},
                      icon: const Icon(Icons.phone),
                      hoverColor: lightPurple,
                      tooltip: 'phone',
                    )
                  ],
                ),
              ),
            ), //contacts
          ],
        ),
      ),
    );
  }
}
