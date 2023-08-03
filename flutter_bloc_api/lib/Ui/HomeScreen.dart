import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_api/Bloc/joke_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final JokeBloc jokeBloc = JokeBloc();

  @override
  void initState() {
    jokeBloc.add(GetJokeList());
    super.initState();
  }

  @override
  void dispose() {
    jokeBloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body:SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              BlocProvider(
                create: (BuildContext context) => jokeBloc,
                child: BlocListener<JokeBloc,JokeState>(
                  listener: (context,state) {
                    if (state is JokeError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(state.message!),
                        ),
                      );
                    }
                  },
                  child: BlocBuilder<JokeBloc,JokeState>(
                    builder: (context,state) {
                      if (state is JokeInitial) {
                        return _buildLoading();
                      } else if (state is JokeLoading) {
                        return _buildLoading();
                      } else if (state is JokeLoaded) {
                        return Text(state.jokeModel.value.toString());
                      } else if (state is JokeError) {
                        return Text("${state.message}");
                      } else {
                        return Container();
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20.0,),
              ElevatedButton(onPressed: () {
                jokeBloc.add(GetJokeList());
              }, child: const Text("Get Random Api"))
            ],
          ),
        )
      ),
    );
  }

  Widget _buildLoading() => const Center(child: CircularProgressIndicator());

}
