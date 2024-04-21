import 'package:bookapp/Feature/home/presentions/views/widgets/best_seller_listview_item.dart';
import 'package:bookapp/Feature/splash/prisention/manger/newest_book_cubit/newest_book_cubit.dart';
import 'package:bookapp/core/widgets/custom_errmessage.dart';
import 'package:bookapp/core/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBookCubit, NewestBookState>(
      builder: (context, state) {
        if (state is NewestBookSuccess) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: state.books.length,
            padding: EdgeInsets.zero,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: BestSellerListViewItem(book: state.books[index]),
              );
            },
          );
        } else if (state is NewestBookFailure) {
          return CustomErroMessage(errMessage: state.errMesage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
