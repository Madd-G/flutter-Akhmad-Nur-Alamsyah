import 'package:bloc/bloc.dart';
import '../../../model/users.dart';
import 'contact_state.dart';

class ContactCubit extends Cubit<ContactState> {
  ContactCubit() : super(ContactInitial());

  List<User> user = [];

  void contactUser(
      {required String username,
      required String email,
      required String message}) {
    emit(ContactInitial());
    user.add(User(name: username, email: email, message: message));
    emit(ContactLoading());
    Future.delayed(
        const Duration(seconds: 3), () => emit(ContactLoaded(user: user)));
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
