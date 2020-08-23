/**************************************************************************************
 * Author: Esalas
 * date: 23/08/2020
 * Description: module where we define the routing for the app
 * Name: routingModule
 * Powerd by: Codesigndev
 * ************************************************************************************/
import 'package:flutter/material.dart';
import 'package:proyectorestclient/src/pages/home_page/home_page.dart';

Map<String, WidgetBuilder> routingModule() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
  };
}
