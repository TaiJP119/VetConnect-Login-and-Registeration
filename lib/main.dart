import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth
import 'package:flutter_firebase/features/app/splash_screen/splash_screen.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/home_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/login_page.dart';
import 'package:flutter_firebase/features/user_auth/presentation/pages/sign_up_page.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: "AIzaSyCm1EYBB0ONvHqBEbGBSKZkyN1cxpYFoik",
        appId: "1:517136538140:web:ef2d6b4e3b798cd0f41dd9",
        messagingSenderId: "517136538140",
        projectId: "fyp--vetconnect",
        // Your web Firebase config options
      ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Firebase',
      routes: {
        '/': (context) => SplashScreen(
              // Here, you can decide whether to show the LoginPage or HomePage based on user authentication
              child: LoginPage(),
            ),
        '/login': (context) => LoginPage(),
        '/signUp': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
      },
    );
  }
}

// void main() {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "flutter",
//       theme: ThemeData(
//         primaryColor: Colors.black,
//       ),
//       home: const MyApp(),
//     );
//   }
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         appBar: AppBar(title: const Text('Youtube')), body: Html(data: '''
// <iframe width="560" height="315" src="https://www.youtube.com/embed/C3aRyxcpy5A?si=6F60WQh3mLgPB7Qf" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>'''));
//   }
// }

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: "Flutter Firebase",
//       theme: ThemeData(
//         primaryColor: Colors.black,
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   const HomeScreen({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('YouTube'),
//       ),
//       body: Html(
//         data: '''
//         <iframe width="560" height="315" src="https://www.youtube.com/embed/C3aRyxcpy5A?si=6F60WQh3mLgPB7Qf" 
//         title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; 
//         picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen>
//         </iframe>
//         ''',
//       ),
//     );
//   }
// }
