/// Simple environment holder used during app bootstrap.
///
/// Keep this object minimal; it can be extended to read values from build
/// configuration or CI-driven environment variables when needed.
class Environment {
  /// The name of the environment (e.g., 'development', 'staging', 'production').
  final String name;

  /// Creates an [Environment]. Default is 'development'.
  const Environment({this.name = 'development'});
}
