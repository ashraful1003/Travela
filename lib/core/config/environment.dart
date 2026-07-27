/// Simple environment holder used during app bootstrap.
///
/// Holds configuration values that affect runtime behavior like API base
/// URL, optional API version and a debug flag. Keep this lightweight; CI or
/// build tooling can provide different values per environment.
class Environment {
  /// The environment name, e.g. 'development', 'staging', 'production'.
  final String name;

  /// Base URL for API requests. Should not be hardcoded elsewhere.
  final String baseUrl;

  /// Optional API version segment (can be appended to baseUrl or used by
  /// request builders).
  final String? apiVersion;

  /// Debug flag used to enable extra logging or mock behavior.
  final bool debug;

  /// Creates an [Environment].
  const Environment({
    this.name = 'development',
    this.baseUrl = '',
    this.apiVersion,
    this.debug = false,
  });

  /// Convenience constructors for common environments.
  const Environment.development({
    this.baseUrl = '',
    this.apiVersion,
    this.debug = true,
  }) : name = 'development';

  const Environment.staging({
    this.baseUrl = '',
    this.apiVersion,
    this.debug = false,
  }) : name = 'staging';

  const Environment.production({
    this.baseUrl = '',
    this.apiVersion,
    this.debug = false,
  }) : name = 'production';
}
