import 'package:easy_parking_app/ui/user/features/bookmark/components/canceled_bookings/canceled_booking.dart';
import 'package:easy_parking_app/ui/user/features/bookmark/components/compeleted_booking/compelete_booking.dart';
import 'package:easy_parking_app/ui/user/features/bookmark/components/on_going_bookings/on_going_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'book_mark_state.dart';

class BookMarkCubit extends Cubit<BookMarkState> {
  BookMarkCubit() : super(BookMarkInitial());
  static BookMarkCubit get(context) => BlocProvider.of(context);
  int tag = 0;

  void changeTag(int newTag) {
    tag = newTag;
    emit(ChangeTagState());
  }

  List<String> choiceItems = [
    'Ongoing',
    'Completed',
    'Canceled',
  ];
  List<Widget> screens = [
    const OngoingBookingScreen(),
    const CompletedBookingScreen(),
    const CanceledBookingScreen(),
  ];
}
