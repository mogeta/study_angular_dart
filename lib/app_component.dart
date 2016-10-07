// Copyright (c) 2016, mogeta. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'package:angular2/core.dart';

import 'hello_service.dart';

@Component(
    selector: 'my-app',
    styleUrls: const ['app_component.css'],
    templateUrl: 'app_component.html',
    providers: const [HelloService])
class AppComponent {
  String title = 'Tour of Heroes';

  final HelloService _hello;

  AppComponent(this._hello);

  onClick(String s){
    print("onclick start");
    this._hello.getHeroes();
    print("onclick end");
  }
}
