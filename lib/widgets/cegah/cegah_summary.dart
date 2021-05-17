import 'package:flutter/material.dart';
import '../../models/data/dummy_cegah_text.dart';

class CegahSummary extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: dummyCegahText,
      ),
    );
  }
}
