import 'package:rxdart/rxdart.dart';

import 'custom_auth_manager.dart';

class TCCProducaoDiariaAuthUser {
  TCCProducaoDiariaAuthUser({required this.loggedIn, this.uid});

  bool loggedIn;
  String? uid;
}

/// Generates a stream of the authenticated user.
BehaviorSubject<TCCProducaoDiariaAuthUser> tCCProducaoDiariaAuthUserSubject =
    BehaviorSubject.seeded(TCCProducaoDiariaAuthUser(loggedIn: false));
Stream<TCCProducaoDiariaAuthUser> tCCProducaoDiariaAuthUserStream() =>
    tCCProducaoDiariaAuthUserSubject
        .asBroadcastStream()
        .map((user) => currentUser = user);
