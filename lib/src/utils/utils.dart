import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

launchURL(BuildContext context, String scanner) async{
  final url = scanner;
  if(await canLaunch(url)){
    await launch(url);
  }
  else{
    throw 'Could not launch $url';
  }
}