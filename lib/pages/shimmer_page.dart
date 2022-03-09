import 'package:flutter/material.dart';
import 'package:login_user/components/shimmer_widget.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('user'),
        centerTitle: true,
      ),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return buildListTile();
          }),
    );
  }

  ListTile buildListTile() {
    return ListTile(
      leading: ShimmerWidget.circular(
        width: 54,
        heigth: 54,
        shapeBorder: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(80),
        ),
      ),
      title: Align(
        alignment: Alignment.centerLeft,
        child: ShimmerWidget.rectangular(
          width: 90,
          heigth: 16,
        ),
      ),
      subtitle: ShimmerWidget.rectangular(
        width: 14,
        heigth: 16,
      ),
    );
  }
}