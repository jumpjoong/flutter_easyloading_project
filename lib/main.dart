import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
// import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(title: 'Flutter EasyLoading'),
      builder: EasyLoading.init(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.lightBlue,
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () {
                EasyLoading.show(status: 'loading...');
                // EasyLoading.showProgress(0.3, status: 'downloading...');
                // EasyLoading.showSuccess('Great Success!');
                // EasyLoading.showError('Failed with Error');
                // EasyLoading.showInfo('Useful Information.');
                // EasyLoading.showToast('Toast');
                Future.delayed(Duration(seconds: 3), () {
                  EasyLoading.dismiss();
                });
              },
              child: Text('이지로딩'))),
    );
  }
}
