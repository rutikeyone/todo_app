// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginState {

 EmailInput get emailState; PasswordInput get passwordState; ProcessState get signInState;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.emailState, emailState) || other.emailState == emailState)&&(identical(other.passwordState, passwordState) || other.passwordState == passwordState)&&(identical(other.signInState, signInState) || other.signInState == signInState));
}


@override
int get hashCode => Object.hash(runtimeType,emailState,passwordState,signInState);

@override
String toString() {
  return 'LoginState(emailState: $emailState, passwordState: $passwordState, signInState: $signInState)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 EmailInput emailState, PasswordInput passwordState, ProcessState signInState
});


$ProcessStateCopyWith<$Res> get signInState;

}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emailState = null,Object? passwordState = null,Object? signInState = null,}) {
  return _then(_self.copyWith(
emailState: null == emailState ? _self.emailState : emailState // ignore: cast_nullable_to_non_nullable
as EmailInput,passwordState: null == passwordState ? _self.passwordState : passwordState // ignore: cast_nullable_to_non_nullable
as PasswordInput,signInState: null == signInState ? _self.signInState : signInState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get signInState {
  
  return $ProcessStateCopyWith<$Res>(_self.signInState, (value) {
    return _then(_self.copyWith(signInState: value));
  });
}
}


/// @nodoc


class _LoginState extends LoginState {
  const _LoginState({this.emailState = const EmailInput.pure(), this.passwordState = const PasswordInput.pure(), this.signInState = const ProcessState.initial()}): super._();
  

@override@JsonKey() final  EmailInput emailState;
@override@JsonKey() final  PasswordInput passwordState;
@override@JsonKey() final  ProcessState signInState;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.emailState, emailState) || other.emailState == emailState)&&(identical(other.passwordState, passwordState) || other.passwordState == passwordState)&&(identical(other.signInState, signInState) || other.signInState == signInState));
}


@override
int get hashCode => Object.hash(runtimeType,emailState,passwordState,signInState);

@override
String toString() {
  return 'LoginState(emailState: $emailState, passwordState: $passwordState, signInState: $signInState)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 EmailInput emailState, PasswordInput passwordState, ProcessState signInState
});


@override $ProcessStateCopyWith<$Res> get signInState;

}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emailState = null,Object? passwordState = null,Object? signInState = null,}) {
  return _then(_LoginState(
emailState: null == emailState ? _self.emailState : emailState // ignore: cast_nullable_to_non_nullable
as EmailInput,passwordState: null == passwordState ? _self.passwordState : passwordState // ignore: cast_nullable_to_non_nullable
as PasswordInput,signInState: null == signInState ? _self.signInState : signInState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get signInState {
  
  return $ProcessStateCopyWith<$Res>(_self.signInState, (value) {
    return _then(_self.copyWith(signInState: value));
  });
}
}

/// @nodoc
mixin _$RegisterState {

 EmailInput get emailState; PasswordInput get passwordState; ProcessState get registerState;
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RegisterStateCopyWith<RegisterState> get copyWith => _$RegisterStateCopyWithImpl<RegisterState>(this as RegisterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RegisterState&&(identical(other.emailState, emailState) || other.emailState == emailState)&&(identical(other.passwordState, passwordState) || other.passwordState == passwordState)&&(identical(other.registerState, registerState) || other.registerState == registerState));
}


@override
int get hashCode => Object.hash(runtimeType,emailState,passwordState,registerState);

@override
String toString() {
  return 'RegisterState(emailState: $emailState, passwordState: $passwordState, registerState: $registerState)';
}


}

/// @nodoc
abstract mixin class $RegisterStateCopyWith<$Res>  {
  factory $RegisterStateCopyWith(RegisterState value, $Res Function(RegisterState) _then) = _$RegisterStateCopyWithImpl;
@useResult
$Res call({
 EmailInput emailState, PasswordInput passwordState, ProcessState registerState
});


$ProcessStateCopyWith<$Res> get registerState;

}
/// @nodoc
class _$RegisterStateCopyWithImpl<$Res>
    implements $RegisterStateCopyWith<$Res> {
  _$RegisterStateCopyWithImpl(this._self, this._then);

  final RegisterState _self;
  final $Res Function(RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? emailState = null,Object? passwordState = null,Object? registerState = null,}) {
  return _then(_self.copyWith(
emailState: null == emailState ? _self.emailState : emailState // ignore: cast_nullable_to_non_nullable
as EmailInput,passwordState: null == passwordState ? _self.passwordState : passwordState // ignore: cast_nullable_to_non_nullable
as PasswordInput,registerState: null == registerState ? _self.registerState : registerState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}
/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get registerState {
  
  return $ProcessStateCopyWith<$Res>(_self.registerState, (value) {
    return _then(_self.copyWith(registerState: value));
  });
}
}


/// @nodoc


class _RegisterState extends RegisterState {
  const _RegisterState({this.emailState = const EmailInput.pure(), this.passwordState = const PasswordInput.pure(), this.registerState = const ProcessState.initial()}): super._();
  

@override@JsonKey() final  EmailInput emailState;
@override@JsonKey() final  PasswordInput passwordState;
@override@JsonKey() final  ProcessState registerState;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RegisterStateCopyWith<_RegisterState> get copyWith => __$RegisterStateCopyWithImpl<_RegisterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _RegisterState&&(identical(other.emailState, emailState) || other.emailState == emailState)&&(identical(other.passwordState, passwordState) || other.passwordState == passwordState)&&(identical(other.registerState, registerState) || other.registerState == registerState));
}


@override
int get hashCode => Object.hash(runtimeType,emailState,passwordState,registerState);

@override
String toString() {
  return 'RegisterState(emailState: $emailState, passwordState: $passwordState, registerState: $registerState)';
}


}

/// @nodoc
abstract mixin class _$RegisterStateCopyWith<$Res> implements $RegisterStateCopyWith<$Res> {
  factory _$RegisterStateCopyWith(_RegisterState value, $Res Function(_RegisterState) _then) = __$RegisterStateCopyWithImpl;
@override @useResult
$Res call({
 EmailInput emailState, PasswordInput passwordState, ProcessState registerState
});


@override $ProcessStateCopyWith<$Res> get registerState;

}
/// @nodoc
class __$RegisterStateCopyWithImpl<$Res>
    implements _$RegisterStateCopyWith<$Res> {
  __$RegisterStateCopyWithImpl(this._self, this._then);

  final _RegisterState _self;
  final $Res Function(_RegisterState) _then;

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? emailState = null,Object? passwordState = null,Object? registerState = null,}) {
  return _then(_RegisterState(
emailState: null == emailState ? _self.emailState : emailState // ignore: cast_nullable_to_non_nullable
as EmailInput,passwordState: null == passwordState ? _self.passwordState : passwordState // ignore: cast_nullable_to_non_nullable
as PasswordInput,registerState: null == registerState ? _self.registerState : registerState // ignore: cast_nullable_to_non_nullable
as ProcessState,
  ));
}

/// Create a copy of RegisterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProcessStateCopyWith<$Res> get registerState {
  
  return $ProcessStateCopyWith<$Res>(_self.registerState, (value) {
    return _then(_self.copyWith(registerState: value));
  });
}
}

// dart format on
