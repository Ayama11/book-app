import 'package:bookapp/Feature/home/presentions/views/widgets/custom_book_item.dart';
import 'package:bookapp/Feature/splash/prisention/manger/similer_books_cuibt/similar_books_cubit.dart';
import 'package:bookapp/core/utils/app_router.dart';
import 'package:bookapp/core/widgets/custom_errmessage.dart';
import 'package:bookapp/core/widgets/custom_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SimilerBookListView extends StatelessWidget {
  const SimilerBookListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.book.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  child: GestureDetector(
                    onTap: () {
                      GoRouter.of(context).push(AppRouter.kBookDetilesView,
                          extra: state.book[index]);
                    },
                    child: CustomBookImage(
                      imageUrl:
                          state.book[index].volumeInfo.imageLinks?.thumbnail ??
                              '',
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is SimilarBooksFailure) {
          return CustomErroMessage(errMessage: state.errMessage);
        } else {
          return const CustomLoading();
        }
      },
    );
  }
}
