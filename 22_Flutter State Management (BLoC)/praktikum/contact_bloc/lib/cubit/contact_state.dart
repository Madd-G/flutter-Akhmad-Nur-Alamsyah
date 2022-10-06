import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../model/users.dart';

@immutable
abstract class ContactState extends Equatable {
  const ContactState();

  @override
  List<User> get props => [];
}

class ContactInitial extends ContactState {}

class ContactLoaded extends ContactState {
  final List<User> user;

  const ContactLoaded({required this.user});

  @override
  List<User> get props => user;
}
