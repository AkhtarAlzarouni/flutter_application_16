import 'package:flutter/material.dart';
import 'package:flutter_application_16/cubits/main/mian_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  

 @override
  Widget build(BuildContext context) {
    var cubit = MianCubit.get(context);
    cubit.getPosts();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Posts"),
      ),
      body: BlocBuilder<MianCubit, MianState>(
        builder: (context, state) {
          return state is GetPostsLoadingState
              ? const Center(child: CircularProgressIndicator())
              : state is GetPostsErrorState
                  ? const Center(child: Text("Please Try again later"))
                  : ListView.builder(
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: Colors.redAccent,
                              child: Text(cubit.posts[index].id.toString()),
                            ),
                            title: Text(cubit.posts[index].title!),
                            subtitle: Text(cubit.posts[index].body!),
                          ),
                        );
                      },
                      itemCount: cubit.posts.length,
                    );
        },
      ),
    );
  }
}