/// Represents an explicit absence of parameters for UseCases that require no
/// input. Using a dedicated type keeps signatures uniform and self-documenting.
class NoParams {
  /// Const constructor to allow compile-time constants where needed.
  const NoParams();
}
