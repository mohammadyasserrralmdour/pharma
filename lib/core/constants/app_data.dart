import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pharma_app/core/constants/app_assets.dart';
import 'package:pharma_app/core/constants/app_routes.dart';
import 'package:pharma_app/core/data/data_auth.dart';

Map listdataAuthHeadScreen = {
  "register": DataAuthHeadScreen(
    image: "${AppAssets.rootSVGImages}/register.svg",
    title: "Register\n",
    body: "Are you have account\nalready?",
    buttonname: "login",
    function: (BuildContext context) =>
        GoRouter.of(context).push(AppRoutes.authLoginScreen),
    counter: 0,
  ),
  "verify": DataAuthHeadScreen(
    title: "  Verify\n",
    body: "didnot you recive\ncode? ",
    buttonname: "send again",
    image: "${AppAssets.rootSVGImages}/verify.svg",
    function: (BuildContext context) => null,
    counter: 1,
  ),
  "account": DataAuthHeadScreen(
    title: "Account\n",
    body: "    who are you?",
    buttonname: null,
    image: "${AppAssets.rootSVGImages}/account.svg",
    function: (BuildContext context) =>
        GoRouter.of(context).push(AppRoutes.authRegeisterScreen),
    counter: 2,
  ),
  "forget": DataAuthHeadScreen(
    title: "Forget\n",
    body: "Are you have not account\nalready?",
    buttonname: " register",
    image: "${AppAssets.rootSVGImages}/forget.svg",
    function: (BuildContext context) =>
        GoRouter.of(context).push(AppRoutes.authRegeisterScreen),
    counter: 1,
  ),
  "info": DataAuthHeadScreen(
    title: "  Information\n",
    body: "fill Information pharmacy",
    buttonname: null,
    image: "${AppAssets.rootSVGImages}/info.svg",
    function: (BuildContext context) =>
        GoRouter.of(context).push(AppRoutes.pharmacyScreen),
    counter: 2,
  ),
  "login": DataAuthHeadScreen(
    title: "Login\n",
    body: "Are you have not account\nregister?",
    buttonname: " register",
    image: "${AppAssets.rootSVGImages}/login.svg",
    function: (BuildContext context) =>
        GoRouter.of(context).pop(),
    counter: 0,
  ),
  "notification": [],
  "reset": DataAuthHeadScreen(
    title: "  Reset\n",
    body: "Create string password\n",
    buttonname: null,
    image: "${AppAssets.rootSVGImages}/verify.svg",
    function: (BuildContext context) =>
        GoRouter.of(context).push(AppRoutes.authVerifyScreen),
    counter: 2,
  ),
};
