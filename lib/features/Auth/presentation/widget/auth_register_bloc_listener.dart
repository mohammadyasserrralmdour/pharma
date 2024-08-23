import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/features/Auth/presentation/screen/register/cubit/registerr_cubit.dart';

import '../../../../core/constants/app_routes.dart';
import '../../../../core/constants/app_text_styles.dart';

class RegisterBlocListener extends StatelessWidget {
  const RegisterBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterrCubit, RegisterrState>(
        listenWhen: (previous, current) =>
            current is RegisterLoading ||
            current is RegisterLoaded ||
            current is RegisterErorr,
        listener: (context, state) {
          state.maybeWhen(
            orElse: () => Container(),
            loadin: () => showDialog(
              context: context,
              builder: (context) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              },
            ),
            loaded: ()async {
              context.pop();
              showDialog(
                  context: context,
                  builder: (context) => Center(
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white
                        ,borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 65),
                        child:  Text("Success",style: AppTextStyles.workSans(20, FontWeight.w600),),
                      ),
                    ));
                     await Future.delayed(const Duration(seconds: 2));
                      GoRouter.of(context).push(AppRoutes.authVerifyScreen);
            },
            erorr: (erorr) async{
              context.pop();
              showDialog(
                  context: context,
                  builder: (context) {
                    return Center(
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white
                        ,borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 65),
                        child:  Text("Success",style: AppTextStyles.workSans(20, FontWeight.w600),),
                      ),
                    );
                  
                  });
                     await Future.delayed(const Duration(seconds: 2));
            },
            initial: () => Container(),
          );
        },
        child: const SizedBox.shrink());
  }
}
