import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../model/users.dart';
import 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());

  List<User> user = [];

  void contactUser({required String username, required int number}) {
    emit(ContactInitial());
    user.add(User(name: username, number: number));
    emit(ContactLoaded(user: user));
  }

  void removeUser({required int index}) {
    emit(ContactInitial());
    user.removeAt(index);
    if (user.isEmpty) {
      emit(ContactInitial());
    } else {
      emit(ContactLoaded(user: user));
    }
  }
}
