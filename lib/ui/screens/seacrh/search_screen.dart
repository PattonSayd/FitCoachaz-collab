// import 'package:fitcoachaz/app/extension/build_context.dart';
// import 'package:fitcoachaz/data/models/coach.dart';
// import 'package:fitcoachaz/ui/screens/main/main_components.dart';
// import 'package:fitcoachaz/ui/components/card_component.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/svg.dart';

// import '../../../app/resources/app_assets.dart';
// import '../../style/app_text_style.dart';
// import '../../theme/app_colors.dart';

// class SearchScreen extends StatefulWidget {
//   const SearchScreen({super.key});

//   @override
//   State<SearchScreen> createState() => _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   late TextEditingController _searchController;
//   final FocusNode _node = FocusNode();

//   @override
//   void initState() {
//     _searchController = TextEditingController();
//     _searchController.addListener(() {});
//     super.initState();
//   }

//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.brightBlue,
//       body: SafeArea(
//         child: CustomScrollView(
//           slivers: <Widget>[
//             SliverPersistentHeader(
//               floating: true,
//               pinned: true,
//               delegate: CustomSliverPersistentHeaderDelegate(
//                 TextField(
//                   decoration: InputDecoration(
//                     contentPadding: const EdgeInsets.symmetric(vertical: 12),
//                     hintText: context.localizations.searchHint,
//                     hintStyle: AppTextStyle.searchIcon,
//                     fillColor: AppColors.light,
//                     filled: true,
//                     enabledBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(8)),
//                       borderSide: BorderSide(
//                         color: Colors.transparent,
//                       ),
//                     ),
//                     prefixIcon: Padding(
//                       padding: const EdgeInsets.all(15),
//                       child: SvgPicture.asset(AppAssets.search),
//                     ),
//                     focusedBorder: const OutlineInputBorder(
//                       borderRadius: BorderRadius.all(Radius.circular(8)),
//                       borderSide: BorderSide(
//                         color: AppColors.transparent,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   return Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: CardComponent(
//                       index: index,
//                       coachItems: [
//                         Coach(
//                           name: 'name',
//                           surname: 'surname',
//                           photo:
//                               'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgwkE2jmhPJzUFDMXzXnBrJhRKTzQqU9E480bPlXeU0Pmtp43mB2mVeKZH6oJOp_4uNww&usqp=CAU',
//                           sport: 'sport',
//                           rating: 5,
//                           workTime: 'workTime',
//                         ),
//                       ],
//                     ),
//                   );
//                 },
//                 childCount: 1,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // @override
//   // Widget build(BuildContext context) {
//   //   return Scaffold(
//   //     backgroundColor: AppColors.brightBlue,
//   //     appBar: const _AppBarWidget(),
//   //     body: ListView(
//   //       children: [
//   //         const SizedBox(height: 10),
//   //         Align(
//   //           child: Container(
//   //             constraints: const BoxConstraints(maxWidth: 700),
//   //             child: Padding(
//   //               padding: EdgeInsets.symmetric(horizontal: 24.r),
//   //               child: const Search(),
//   //             ),
//   //           ),
//   //         ),
//   //         Column(
//   //           children: [],
//   //         ),
//   //       ],
//   //     ),
//   //   );
//   // }
// }
