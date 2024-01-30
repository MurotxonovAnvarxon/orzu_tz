import 'package:flutter/cupertino.dart';

import '../../util/Animation.dart';

class KorzinaScreen extends StatefulWidget {
  const KorzinaScreen({super.key});

  @override
  State<KorzinaScreen> createState() => _KorzinaScreenState();
}

class _KorzinaScreenState extends State<KorzinaScreen> {
  @override
  Widget build(BuildContext context) {
    return AnimationScreen();
  }
}
