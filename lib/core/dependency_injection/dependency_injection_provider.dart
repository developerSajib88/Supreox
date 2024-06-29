
import 'package:hooks_riverpod/hooks_riverpod.dart';

// Authentication Provider
final authenticationProvider = StateNotifierProvider
    .autoDispose<AuthenticationStateNotifier, AuthenticationState>((ref) =>
        AuthenticationStateNotifier(authenticationDomain: getIt(), ref: ref));
