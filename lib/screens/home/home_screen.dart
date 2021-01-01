import 'package:flutter/material.dart';

import 'home_appbar.dart';
import 'home_body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: homeAppBar(), body: HomeBody());
  }
}
