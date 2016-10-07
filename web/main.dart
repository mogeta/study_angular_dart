// Copyright (c) 2016, mogeta. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.
import 'package:angular2/core.dart';
import 'package:angular2/platform/browser.dart';

import 'package:DartAngular/app_component.dart';
import 'package:http/browser_client.dart';

main() {
  bootstrap(AppComponent, [
    provide(BrowserClient, useFactory: () => new BrowserClient(), deps: [])
  ]);
}
