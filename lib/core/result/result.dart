
abstract class Result<T> {}

class Success<T> extends Result<T> {
  final T data;

  Success({required this.data});
}

class Error<T> extends Result<T> {
  final Object? e;

  Error({required this.e});
}

class ConnectionError<T> extends Error<T> {
  ConnectionError() : super(e: null);
}

class Loading<T> extends Result<T> {}

class Wrapped<T> {
  final T? value;

  Wrapped({required this.value});
}
