import 'package:flutter/material.dart';
import 'package:hello_flutter/category.dart';
//mỗi view có thể tạo thành 1 class extends Stateless Widget

const _categoryName = 'Cake';
const _categoryIcon = Icons.cake;
const _categoryColor = Colors.green;

class MyAppBar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Container(
          color: Colors.greenAccent,
          width: 300,
          height: 400,
          child: Center(child: Text('Hello', style: TextStyle(fontSize:  40),)),
        ),
    );
  }
}

class UnitConverterApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Category(
          name: _categoryName,
          color: _categoryColor,
          iconLocation: _categoryIcon,
        ),
    );
  }
  
}

void main(){
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.green[100],
        appBar: AppBar(
          title: Text('Hello Rectange'),
        ),
        body: UnitConverterApp(),
      ),
    ),
  );
}

