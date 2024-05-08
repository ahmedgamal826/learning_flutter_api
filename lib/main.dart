import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_api/cubit/api_cubit.dart';
import 'package:learning_api/cubit/cubit.dart';
import 'package:learning_api/cubit___2/app_cubit.dart';
import 'package:learning_api/cubit___2/app_states.dart';
import 'package:learning_api/screens/api_screen.dart';
import 'package:learning_api/screens/home_page.dart';

void main() {
  runApp(const APIAPP());
}

class APIAPP extends StatelessWidget {
  const APIAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MyHomePage(),
      ),
    );
  }
}







// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:learning_api/Model/model.dart';
// import 'package:learning_api/cubit/api_services.dart';
// import 'package:learning_api/cubit/api_states.dart';

// void main() => runApp(const MyApp());

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Material App',
//       home: Scaffold(
//         appBar: AppBar(
//           centerTitle: true,
//           title: const Text(
//             'API',
//             style: TextStyle(fontSize: 50),
//           ),
//         ),
//         body: const Home(),
//       ),
//     );
//   }
// }

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   List<ReqresModel>? _postItems;
//   bool _isLoading = false;
//   String? _errorMessage;

//   @override
//   void initState() {
//     super.initState();
//     loadData();
//   }

//   Future<void> loadData() async {
//     setState(() {
//       _isLoading = true;
//       _errorMessage = null;
//     });
//     try {
//       final postItems = await CharacterCubit().fetchApi();
//       setState(() {
//         _postItems = postItems;
//         _isLoading = false;
//       });
//     } catch (e) {
//       setState(() {
//         _isLoading = false;
//         _errorMessage = 'Error fetching data: $e';
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (_isLoading) {
//       return const Center(child: CircularProgressIndicator());
//     } else if (_postItems == null || _postItems!.isEmpty) {
//       return const Center(child: Text('No Data'));
//     } else {
//       return ListView.builder(
//         itemCount: _postItems!.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(_postItems![index].id.toString()), //Updated here
//           );
//         },
//       );
//     }
//   }
// }

// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       create: (context) => CharacterCubit(), // Provide your CharacterCubit
//       child: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Home'),
//       ),
//       body: BlocBuilder<CharacterCubit, CharacterStates>(
//         builder: (context, state) {
//           if (state is GetLoadingState) {
//             return Center(child: CircularProgressIndicator());
//           } else if (state is GetSuccessState) {
//             final postItems = state.postItems;
//             if (postItems.isEmpty) {
//               return Center(child: Text('No Data'));
//             } else {
//               return ListView.builder(
//                 itemCount: postItems.length,
//                 itemBuilder: (context, index) {
//                   return ListTile(
//                     title: Text(postItems[index].id.toString()), //Updated here
//                   );
//                 },
//               );
//             }
//           } else if (state is GetErrorState) {
//             return Center(
//                 child: Text('Error fetching data: ${state.errorMessage}'));
//           } else {
//             return Center(child: Text('Unknown state'));
//           }
//         },
//       ),
//     );
//   }
// }
