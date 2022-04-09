import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final String title;
  const HomeScreen({Key? key,required this.title}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment : MainAxisAlignment.center,
          crossAxisAlignment : CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: <Widget>[
                GestureDetector(
                  onTap: ()=>print('Green box is clicked'),
                  child: SizedBox(
                    height: 200, width: 200,
                    child: Container(
                      color: Colors.green,
                    ),
                  ),
                ),

                // or try IgnorPointer //
                AbsorbPointer(
                  absorbing: true,
                  child: GestureDetector(
                    onTap: ()=>print('Red box is clicked'),
                    child: SizedBox(
                      height: 100, width: 100,
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
