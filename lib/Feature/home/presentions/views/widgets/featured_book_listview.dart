import 'package:bookapp/Feature/splash/prisention/manger/futured_book_cubit/feutured_book_cubit.dart';
import 'package:bookapp/core/widgets/custom_errmessage.dart';
import 'package:bookapp/core/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class FeaturdBookListView extends StatelessWidget {
  const FeaturdBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FeuturedBookCubit, FeuturedBookState>(
      builder: (context, state) {
        if (state is FeuturedBookSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .25,
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CustomBookImage(
                    imageUrl:
                        state.books[index].volumeInfo.imageLinks.thumbnail,
                  ),
                );
              },
            ),
          );
        } else if (state is FeuturedBookFailure) {
          return CustomErroMessage(errMessage: state.errMesage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
