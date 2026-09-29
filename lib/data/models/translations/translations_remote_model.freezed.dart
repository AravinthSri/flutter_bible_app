// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'translations_remote_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TranslationsRemoteModel {

 List<TranslationItemRemoteModel> get translations;
/// Create a copy of TranslationsRemoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationsRemoteModelCopyWith<TranslationsRemoteModel> get copyWith => _$TranslationsRemoteModelCopyWithImpl<TranslationsRemoteModel>(this as TranslationsRemoteModel, _$identity);

  /// Serializes this TranslationsRemoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranslationsRemoteModel&&const DeepCollectionEquality().equals(other.translations, translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(translations));

@override
String toString() {
  return 'TranslationsRemoteModel(translations: $translations)';
}


}

/// @nodoc
abstract mixin class $TranslationsRemoteModelCopyWith<$Res>  {
  factory $TranslationsRemoteModelCopyWith(TranslationsRemoteModel value, $Res Function(TranslationsRemoteModel) _then) = _$TranslationsRemoteModelCopyWithImpl;
@useResult
$Res call({
 List<TranslationItemRemoteModel> translations
});




}
/// @nodoc
class _$TranslationsRemoteModelCopyWithImpl<$Res>
    implements $TranslationsRemoteModelCopyWith<$Res> {
  _$TranslationsRemoteModelCopyWithImpl(this._self, this._then);

  final TranslationsRemoteModel _self;
  final $Res Function(TranslationsRemoteModel) _then;

/// Create a copy of TranslationsRemoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? translations = null,}) {
  return _then(_self.copyWith(
translations: null == translations ? _self.translations : translations // ignore: cast_nullable_to_non_nullable
as List<TranslationItemRemoteModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [TranslationsRemoteModel].
extension TranslationsRemoteModelPatterns on TranslationsRemoteModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranslationsRemoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranslationsRemoteModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranslationsRemoteModel value)  $default,){
final _that = this;
switch (_that) {
case _TranslationsRemoteModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranslationsRemoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _TranslationsRemoteModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<TranslationItemRemoteModel> translations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranslationsRemoteModel() when $default != null:
return $default(_that.translations);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<TranslationItemRemoteModel> translations)  $default,) {final _that = this;
switch (_that) {
case _TranslationsRemoteModel():
return $default(_that.translations);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<TranslationItemRemoteModel> translations)?  $default,) {final _that = this;
switch (_that) {
case _TranslationsRemoteModel() when $default != null:
return $default(_that.translations);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranslationsRemoteModel implements TranslationsRemoteModel {
  const _TranslationsRemoteModel({required final  List<TranslationItemRemoteModel> translations}): _translations = translations;
  factory _TranslationsRemoteModel.fromJson(Map<String, dynamic> json) => _$TranslationsRemoteModelFromJson(json);

 final  List<TranslationItemRemoteModel> _translations;
@override List<TranslationItemRemoteModel> get translations {
  if (_translations is EqualUnmodifiableListView) return _translations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_translations);
}


/// Create a copy of TranslationsRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationsRemoteModelCopyWith<_TranslationsRemoteModel> get copyWith => __$TranslationsRemoteModelCopyWithImpl<_TranslationsRemoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationsRemoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslationsRemoteModel&&const DeepCollectionEquality().equals(other._translations, _translations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_translations));

@override
String toString() {
  return 'TranslationsRemoteModel(translations: $translations)';
}


}

/// @nodoc
abstract mixin class _$TranslationsRemoteModelCopyWith<$Res> implements $TranslationsRemoteModelCopyWith<$Res> {
  factory _$TranslationsRemoteModelCopyWith(_TranslationsRemoteModel value, $Res Function(_TranslationsRemoteModel) _then) = __$TranslationsRemoteModelCopyWithImpl;
@override @useResult
$Res call({
 List<TranslationItemRemoteModel> translations
});




}
/// @nodoc
class __$TranslationsRemoteModelCopyWithImpl<$Res>
    implements _$TranslationsRemoteModelCopyWith<$Res> {
  __$TranslationsRemoteModelCopyWithImpl(this._self, this._then);

  final _TranslationsRemoteModel _self;
  final $Res Function(_TranslationsRemoteModel) _then;

/// Create a copy of TranslationsRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? translations = null,}) {
  return _then(_TranslationsRemoteModel(
translations: null == translations ? _self._translations : translations // ignore: cast_nullable_to_non_nullable
as List<TranslationItemRemoteModel>,
  ));
}


}


/// @nodoc
mixin _$TranslationItemRemoteModel {

 String get identifier; String get name; String get language;@JsonKey(name: 'language_code') String get languageCode; String get license; String get url;
/// Create a copy of TranslationItemRemoteModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TranslationItemRemoteModelCopyWith<TranslationItemRemoteModel> get copyWith => _$TranslationItemRemoteModelCopyWithImpl<TranslationItemRemoteModel>(this as TranslationItemRemoteModel, _$identity);

  /// Serializes this TranslationItemRemoteModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TranslationItemRemoteModel&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.license, license) || other.license == license)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identifier,name,language,languageCode,license,url);

@override
String toString() {
  return 'TranslationItemRemoteModel(identifier: $identifier, name: $name, language: $language, languageCode: $languageCode, license: $license, url: $url)';
}


}

/// @nodoc
abstract mixin class $TranslationItemRemoteModelCopyWith<$Res>  {
  factory $TranslationItemRemoteModelCopyWith(TranslationItemRemoteModel value, $Res Function(TranslationItemRemoteModel) _then) = _$TranslationItemRemoteModelCopyWithImpl;
@useResult
$Res call({
 String identifier, String name, String language,@JsonKey(name: 'language_code') String languageCode, String license, String url
});




}
/// @nodoc
class _$TranslationItemRemoteModelCopyWithImpl<$Res>
    implements $TranslationItemRemoteModelCopyWith<$Res> {
  _$TranslationItemRemoteModelCopyWithImpl(this._self, this._then);

  final TranslationItemRemoteModel _self;
  final $Res Function(TranslationItemRemoteModel) _then;

/// Create a copy of TranslationItemRemoteModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? identifier = null,Object? name = null,Object? language = null,Object? languageCode = null,Object? license = null,Object? url = null,}) {
  return _then(_self.copyWith(
identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,license: null == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [TranslationItemRemoteModel].
extension TranslationItemRemoteModelPatterns on TranslationItemRemoteModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _TranslationItemRemoteModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _TranslationItemRemoteModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _TranslationItemRemoteModel value)  $default,){
final _that = this;
switch (_that) {
case _TranslationItemRemoteModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _TranslationItemRemoteModel value)?  $default,){
final _that = this;
switch (_that) {
case _TranslationItemRemoteModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String identifier,  String name,  String language, @JsonKey(name: 'language_code')  String languageCode,  String license,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _TranslationItemRemoteModel() when $default != null:
return $default(_that.identifier,_that.name,_that.language,_that.languageCode,_that.license,_that.url);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String identifier,  String name,  String language, @JsonKey(name: 'language_code')  String languageCode,  String license,  String url)  $default,) {final _that = this;
switch (_that) {
case _TranslationItemRemoteModel():
return $default(_that.identifier,_that.name,_that.language,_that.languageCode,_that.license,_that.url);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String identifier,  String name,  String language, @JsonKey(name: 'language_code')  String languageCode,  String license,  String url)?  $default,) {final _that = this;
switch (_that) {
case _TranslationItemRemoteModel() when $default != null:
return $default(_that.identifier,_that.name,_that.language,_that.languageCode,_that.license,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _TranslationItemRemoteModel implements TranslationItemRemoteModel {
  const _TranslationItemRemoteModel({required this.identifier, required this.name, required this.language, @JsonKey(name: 'language_code') required this.languageCode, required this.license, required this.url});
  factory _TranslationItemRemoteModel.fromJson(Map<String, dynamic> json) => _$TranslationItemRemoteModelFromJson(json);

@override final  String identifier;
@override final  String name;
@override final  String language;
@override@JsonKey(name: 'language_code') final  String languageCode;
@override final  String license;
@override final  String url;

/// Create a copy of TranslationItemRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TranslationItemRemoteModelCopyWith<_TranslationItemRemoteModel> get copyWith => __$TranslationItemRemoteModelCopyWithImpl<_TranslationItemRemoteModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TranslationItemRemoteModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TranslationItemRemoteModel&&(identical(other.identifier, identifier) || other.identifier == identifier)&&(identical(other.name, name) || other.name == name)&&(identical(other.language, language) || other.language == language)&&(identical(other.languageCode, languageCode) || other.languageCode == languageCode)&&(identical(other.license, license) || other.license == license)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,identifier,name,language,languageCode,license,url);

@override
String toString() {
  return 'TranslationItemRemoteModel(identifier: $identifier, name: $name, language: $language, languageCode: $languageCode, license: $license, url: $url)';
}


}

/// @nodoc
abstract mixin class _$TranslationItemRemoteModelCopyWith<$Res> implements $TranslationItemRemoteModelCopyWith<$Res> {
  factory _$TranslationItemRemoteModelCopyWith(_TranslationItemRemoteModel value, $Res Function(_TranslationItemRemoteModel) _then) = __$TranslationItemRemoteModelCopyWithImpl;
@override @useResult
$Res call({
 String identifier, String name, String language,@JsonKey(name: 'language_code') String languageCode, String license, String url
});




}
/// @nodoc
class __$TranslationItemRemoteModelCopyWithImpl<$Res>
    implements _$TranslationItemRemoteModelCopyWith<$Res> {
  __$TranslationItemRemoteModelCopyWithImpl(this._self, this._then);

  final _TranslationItemRemoteModel _self;
  final $Res Function(_TranslationItemRemoteModel) _then;

/// Create a copy of TranslationItemRemoteModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? identifier = null,Object? name = null,Object? language = null,Object? languageCode = null,Object? license = null,Object? url = null,}) {
  return _then(_TranslationItemRemoteModel(
identifier: null == identifier ? _self.identifier : identifier // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,language: null == language ? _self.language : language // ignore: cast_nullable_to_non_nullable
as String,languageCode: null == languageCode ? _self.languageCode : languageCode // ignore: cast_nullable_to_non_nullable
as String,license: null == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
