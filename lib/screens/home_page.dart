import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learning_api/Model/model.dart';
import 'package:learning_api/cubit/cubit.dart';
import 'package:learning_api/cubit___2/app_cubit.dart';
import 'package:learning_api/cubit___2/app_states.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final UserCubit userCubit = BlocProvider.of<UserCubit>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Rick and Morty Characters'),
      ),
      body: Center(
        child: BlocBuilder<UserCubit, UserState>(
          builder: (context, state) {
            if (state is LoadingState) {
              return CircularProgressIndicator();
            } else if (state is LoadedState) {
              // Success Fetching datavfrom API
              // Success State
              return ListView.builder(
                itemCount: state.characters.length,
                itemBuilder: (context, index) {
                  final CharacterModel character = state.characters[index];
                  return ListTile(
                    title: Text(character.name),
                    subtitle: Text(character.status),
                    leading: CircleAvatar(
                      backgroundImage: NetworkImage(character.image),
                    ),
                  );
                },
              );
            } else if (state is ErrorState) {  // Failed To Fetch Data From API
              return Text(state.message);
            } else {
              return Text('Unknown state');
            }
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          userCubit.fetchCharacters();
        },
        tooltip: 'Fetch Characters',
        child: Icon(Icons.refresh),
      ),
    );
  }
}
