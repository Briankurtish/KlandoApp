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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 16),
            Text(loadingMessage ?? 'Please wait...'),
          ],
        ),
      ),
    );
  }
}
