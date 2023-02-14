import 'package:flutter/material.dart';
import 'package:klando_app/screens/role_selection_page.dart';

class CreateLoadingWidget extends StatelessWidget {
  final String? loadingMessage;

  const CreateLoadingWidget({
    this.loadingMessage,
  });

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (BuildContext context) => RoleSelectionPage(),
      ));
    });
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //CircularProgressIndicator(),
            //SizedBox(height: 16),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Creating Account!!!',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Please Wait...',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
            //Text(loadingMessage ?? 'Please wait...'),
          ],
        ),
      ),
    );
  }
}
