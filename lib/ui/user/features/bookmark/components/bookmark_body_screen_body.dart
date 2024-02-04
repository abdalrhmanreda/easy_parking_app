import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../controller/book_mark_cubit.dart';
import 'common/bookmark_state.dart';

class BookmarkBodyScreen extends StatelessWidget {
  const BookmarkBodyScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<BookMarkCubit, BookMarkState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return BookmarkState(
            choiceItems: BookMarkCubit.get(context).choiceItems);
      },
    );
  }
}
