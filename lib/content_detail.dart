import 'package:flutter/material.dart';
import 'content_data_model.dart';

class ContentDetail extends StatelessWidget {
  final ContentDataModel contentDataModel;

  const ContentDetail({Key? key, required this.contentDataModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
return Scaffold(
  appBar:  AppBar(title: Text(contentDataModel.title),),
  body: Column(
    children: [
      Text(contentDataModel.description)
    ],
  ),
);

  }



}



