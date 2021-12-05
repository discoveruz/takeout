import 'constants/imports.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Take-Out',
      theme: ThemeData(
        fontFamily: 'SF Pro Display',
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
