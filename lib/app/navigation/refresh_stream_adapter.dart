import 'dart:async';

import 'package:flutter/material.dart';

class RefreshStreamAdapter extends ChangeNotifier {
  late final StreamSubscription<dynamic> _subscription;

  RefreshStreamAdapter(Stream<dynamic> stream) {
    _subscription = stream.listen((_) => notifyListeners());
  }

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}




