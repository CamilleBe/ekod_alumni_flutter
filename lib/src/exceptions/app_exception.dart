/// Base class for all all client-side errors that can be generated by the app
sealed class AppException implements Exception {
  AppException(this.code, this.message);

  final String code;
  final String message;

  @override
  String toString() => message;
}

class UserNotSignedInException extends AppException {
  UserNotSignedInException()
      : super(
          'user-not-signed-in',
          "The operation can't be completed (not signed in)",
        );
}
