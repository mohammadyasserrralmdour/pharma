import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_colors.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/constants/app_text_styles.dart';
import 'package:pharma_app/features/Auth/presentation/screen/verify/cubit/verify_cubit.dart';

class AuthVerifyBlocListener extends StatelessWidget {
  final String email;
  const AuthVerifyBlocListener({super.key, required this.email});

  @override
  Widget build(BuildContext context) {
    return BlocListener<VerifyCubit, VerifyState>(
      // ignore: avoid_types_as_parameter_names
      listener: (context, state) {
        state.maybeWhen(
          orElse: () => Container(),
          loading: ()  {
           showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  },
          loaded: ()async {
         context.pop();
       showDialog(
        context: context,
        builder: (context) =>  Center(
                      child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white
                        ,borderRadius: BorderRadius.circular(20)),
                        padding: const EdgeInsets.symmetric(
                            vertical: 30, horizontal: 65),
                        child:  Text("Success",style: AppTextStyles.workSans(20, FontWeight.w600),),
                      ),
                    )
                    );

    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    GoRouter.of(context).push(AppRoutes.pharmacyScreen);
  },
          erorr:(error){
     context.pop();
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      error,
                      style: AppTextStyles.workSans(15, FontWeight.w600,
                          color: AppColors.danger),
                    ),
                  );
                });
  },
          sendCode: (email){
            context.read<VerifyCubit>().sendCodeCubit(email);

            SnackBar snackBar = SnackBar(
              content: Text("Send code to $email"),
            );

             ScaffoldMessenger.of(context).showSnackBar(snackBar);
},
          initial: () => Container(),
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  _loading(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }

  _loaded(BuildContext context) async {
    context.pop();
    showDialog(
        context: context,
        builder: (context) => AlertDialog(
            title: Text("Success",
                style: AppTextStyles.workSans(16, FontWeight.w600,
                    color: AppColors.success))));

    await Future.delayed(const Duration(seconds: 2));
    // ignore: use_build_context_synchronously
    GoRouter.of(context).push(AppRoutes.authInfoScreen);
  }
 
  _erorr(String erorr,BuildContext context){
     context.pop();
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Text(
                      erorr,
                      style: AppTextStyles.workSans(15, FontWeight.w600,
                          color: AppColors.danger),
                    ),
                  );
                });
  }

  _sendCode(String email,BuildContext context){
            context.read<VerifyCubit>().sendCodeCubit(email);

            SnackBar snackBar = SnackBar(
              content: Text("Send code to $email"),
            );

             ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
}

