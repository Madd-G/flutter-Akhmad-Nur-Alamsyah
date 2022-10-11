import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../model/users.dart';

@immutable
abstract class LoginState extends Equatable {
  const LoginState();

  @override
  List get props => [];
}

class LoginInitial extends LoginState {}

class LoginLoading extends LoginState {}

class LoginLoaded extends LoginState {
  final List<User> user;

  const LoginLoaded({required this.user});

  @override
  List get props => user;
}

class LoginFailed extends LoginState {}
