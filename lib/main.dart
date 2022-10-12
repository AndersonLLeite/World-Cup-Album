import 'package:flutter/material.dart';
import 'package:fwc_album_app/app/fwc_album_app.dart';

import 'app/core/config/env/env.dart';

Future<void> main() async {
  await Env.instance.load;
  runApp(const FwcAlbumApp());
}
