// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Order_Provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getOrdersFromFirebaseHash() =>
    r'724dc3ca3a8f52bb8a5cceaa2d03d75c003d81e0';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

/// See also [getOrdersFromFirebase].
@ProviderFor(getOrdersFromFirebase)
const getOrdersFromFirebaseProvider = GetOrdersFromFirebaseFamily();

/// See also [getOrdersFromFirebase].
class GetOrdersFromFirebaseFamily extends Family<AsyncValue<List<Orders>>> {
  /// See also [getOrdersFromFirebase].
  const GetOrdersFromFirebaseFamily();

  /// See also [getOrdersFromFirebase].
  GetOrdersFromFirebaseProvider call(
    String cat,
  ) {
    return GetOrdersFromFirebaseProvider(
      cat,
    );
  }

  @override
  GetOrdersFromFirebaseProvider getProviderOverride(
    covariant GetOrdersFromFirebaseProvider provider,
  ) {
    return call(
      provider.cat,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'getOrdersFromFirebaseProvider';
}

/// See also [getOrdersFromFirebase].
class GetOrdersFromFirebaseProvider
    extends AutoDisposeFutureProvider<List<Orders>> {
  /// See also [getOrdersFromFirebase].
  GetOrdersFromFirebaseProvider(
    String cat,
  ) : this._internal(
          (ref) => getOrdersFromFirebase(
            ref as GetOrdersFromFirebaseRef,
            cat,
          ),
          from: getOrdersFromFirebaseProvider,
          name: r'getOrdersFromFirebaseProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$getOrdersFromFirebaseHash,
          dependencies: GetOrdersFromFirebaseFamily._dependencies,
          allTransitiveDependencies:
              GetOrdersFromFirebaseFamily._allTransitiveDependencies,
          cat: cat,
        );

  GetOrdersFromFirebaseProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.cat,
  }) : super.internal();

  final String cat;

  @override
  Override overrideWith(
    FutureOr<List<Orders>> Function(GetOrdersFromFirebaseRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: GetOrdersFromFirebaseProvider._internal(
        (ref) => create(ref as GetOrdersFromFirebaseRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        cat: cat,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<Orders>> createElement() {
    return _GetOrdersFromFirebaseProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is GetOrdersFromFirebaseProvider && other.cat == cat;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, cat.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin GetOrdersFromFirebaseRef on AutoDisposeFutureProviderRef<List<Orders>> {
  /// The parameter `cat` of this provider.
  String get cat;
}

class _GetOrdersFromFirebaseProviderElement
    extends AutoDisposeFutureProviderElement<List<Orders>>
    with GetOrdersFromFirebaseRef {
  _GetOrdersFromFirebaseProviderElement(super.provider);

  @override
  String get cat => (origin as GetOrdersFromFirebaseProvider).cat;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
