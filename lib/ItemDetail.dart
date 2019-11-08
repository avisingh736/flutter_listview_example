import 'package:flutter/material.dart';
import 'package:flutter_app/DetailModal.dart';

class ItemDetail extends StatelessWidget{
  static const routeName = "/ItemDetail";
  @override
  Widget build(BuildContext context) {
    final DetailModal detailModal = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(
        title: Text("Details"),
      ),
      body: _detailBody(detailModal),
    );
  }

  Widget _detailBody(DetailModal detailModal) {
    return Center(
      child: Text(detailModal.message),
    );
  }

}