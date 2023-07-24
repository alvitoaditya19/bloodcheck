import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:booldcheck/models/models.dart';
import 'package:booldcheck/services/services.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  UserBloc()
      : super(
          UserInitial(),
        ) {
    on<UserEvent>((event, emit) async {
      if (event is LoadUser) {
        User user = await UserServices.getUser(event.id);

        emit(UserLoaded(user));
      } else if (event is SignOut) {
        emit(UserInitial());
      } else if (event is UpdateData) {
        User updatedUser = (state as UserLoaded)
            .user
            .copyWith(name: event.name, profilePicture: event.profileImage);

        await UserServices.updateUser(updatedUser);

        emit(UserLoaded(updatedUser));
      } else if (event is TopUp) {
        if (state is UserLoaded) {
          try {
            User updatedUser = (state as UserLoaded).user.copyWith(
                balance: (state as UserLoaded).user.balance! + event.amount);

            await UserServices.updateUser(updatedUser);

            emit(UserLoaded(updatedUser));
          } catch (e) {
            print(e);
          }
        }
      }
    });
  }
}
