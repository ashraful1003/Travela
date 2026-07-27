import 'package:freezed_annotation/freezed_annotation.dart';

part 'guest_info.freezed.dart';

/// Describes the guest composition for a search or booking context.
///
/// Responsibility
/// - Carry the number of adults, children and infants used by search
///   operations and availability checks.
///
/// Why it exists
/// - Guest counts affect availability and pricing. Modeling this as a dedicated
///   entity keeps search criteria explicit and type-safe.
@freezed
class GuestInfo with _$GuestInfo {
  const factory GuestInfo({
    @Default(1) int adults,
    @Default(0) int children,
    @Default(0) int infants,
  }) = _GuestInfo;
}
