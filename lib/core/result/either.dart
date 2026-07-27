/// Simple Either implementation to avoid bringing additional dependencies.
/// Left represents a failure value, Right represents a success value.
abstract class Either<L, R> {
  const Either();

  T fold<T>(T Function(L l) leftFn, T Function(R r) rightFn) {
    if (this is Left<L, R>) {
      return leftFn((this as Left<L, R>).value);
    }
    return rightFn((this as Right<L, R>).value);
  }

  bool get isLeft => this is Left<L, R>;
  bool get isRight => this is Right<L, R>;
}

/// Left value (failure)
class Left<L, R> extends Either<L, R> {
  final L value;
  const Left(this.value) : super();
}

/// Right value (success)
class Right<L, R> extends Either<L, R> {
  final R value;
  const Right(this.value) : super();
}
