import 'package:flutter/material.dart';
import 'package:responsive_platforms/fluttership/pages/complex_drawer.dart';
import 'package:responsive_platforms/responsive.dart';

import '../../components/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: const ListOfEmails(),
        tablet: const Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(),
            ),
            Expanded(
              flex: 9,
              child: EmailScreen(),
            ),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(
              flex: size.width > 1340 ? 2 : 4,
              child: const ComplexDrawerPage(), // ! change to 2
              // child: const SideMenu(), // ! change to 1
            ),
            Expanded(
              flex: size.width > 1340 ? 3 : 5,
              child: const ListOfEmails(),
            ),
            Expanded(
              flex: size.width > 1340 ? 8 : 10,
              child: const EmailScreen(),
            ),
          ],
        ),
      ),
    );
  }
}

class ListOfEmails extends StatelessWidget {
  const ListOfEmails({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        Center(
          child: Text('List of Emails'),
        )
      ]),
    );
  }
}

class EmailScreen extends StatelessWidget {
  const EmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(children: [
        Center(
          child: Text('Email Screen'),
        )
      ]),
    );
  }
}
