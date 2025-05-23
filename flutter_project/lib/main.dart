import 'package:flutter/material.dart';
import 'screens/login_screen.dart';
import 'package:provider/provider.dart';
import 'providers/product_provider.dart';
import 'providers/cart_provider.dart';
import 'screens/home_screen.dart';
import 'screens/cart_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ProductProvider()),
        ChangeNotifierProvider(create: (_) => CartProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter eCommerce',
        theme: ThemeData(primarySwatch: Colors.blue),
        home: const LoginScreen(), 
        routes: {
          CartScreen.routeName: (ctx) => CartScreen(),
          '/home': (ctx) => HomeScreen(), 
        },
      ),
    );
  }
}
