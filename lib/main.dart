import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:responsive_platforms/screens/main/main_screen.dart';
import 'package:responsive_platforms/split_view/screens/first_page.dart';
import 'package:responsive_platforms/split_view/widgets/app_menu.dart';
import 'package:responsive_platforms/split_view/widgets/split_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MainScreen(),
    );
  }
}

// for split_view
// void main() {
//   runApp(ProviderScope(child: MyApp()));
// }

// // 1. extend from ConsumerWidget
// class MyApp extends ConsumerWidget {
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     // 3. watch selectedPageBuilderProvider
//     final selectedPageBuilder = ref.watch(selectedPageBuilderProvider);
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.indigo,
//       ),
//       // just return `FirstPage` for now. We'll change this later
//       home: SplitView(
//         menu: AppMenu(),
//         content: selectedPageBuilder(context),
//       ),
//     );
//   }
// }
