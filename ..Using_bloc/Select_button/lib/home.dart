import 'package:deveta/bloccategory/bloc/category_bloc.dart';
import 'package:deveta/blocdes/bloc/des_bloc.dart';
import 'package:deveta/blocsong/bloc/song_bloc.dart';
import 'package:deveta/models/category_model.dart';
import 'package:deveta/models/song_model.dart';
import 'package:deveta/widget/categoryL.dart';
import 'package:deveta/widget/song.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    // TODO: implement initState
    context.read<CategoryBloc>().add(LoadCategoryList());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
          color: const Color.fromARGB(255, 241, 182, 161),
          child: Column(
            children: [
              BlocConsumer<CategoryBloc, CategoryState>(
                listener: (context, state) {
                  // TODO: implement listener
                  /*context
                    .read<SongBloc>()
                    .add(LoadSongs(select: state.selectedCategory?.category));
                context
                    .read<SongBloc>()
                    .add(LoadType(type: state.selectedCategory?.type));*/
                  context
                      .read<SongBloc>()
                      .add(LoadCat(categ: state.selectedCategory));
                },
                builder: (context, state) {
                  if (state.status == Status.error)
                    return Text(state.error ?? 'error');
                  else if (state.status == Status.load)
                    return Center(child: CircularProgressIndicator());
                  else {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          ...state.listOfCat.map((e) => CategoryL(
                              category: e,
                              select: state.selectedCategory == e,
                              click: () {
                                context
                                    .read<CategoryBloc>()
                                    .add(CategoryItemEvent(categoryEvent: e));
                              }))
                        ],
                      ),
                    );
                  }
                },
              ),
              BlocBuilder<SongBloc, SongState>(
                builder: (context, state) {
                  if (state.status == Status.error)
                    return Text(state.error ?? 'error');
                  else if (state.status == Status.load)
                    return Center(child: CircularProgressIndicator());
                  else {
                    return Column(
                      children: [
                        Text(
                          state.type.toString(),
                          style: const TextStyle(
                            fontSize: 25,
                            color: Color.fromARGB(255, 92, 92, 92),
                          ),
                        ),
                        ...state.listS.map(
                          (e) => InkWell(
                              onTap: () {
                                context
                                    .read<SongBloc>()
                                    .add(LoadString(text: e.name));
                              },
                              child: Song(song: e)),
                        ),
                      ],
                    );
                  }
                },
              ),
              /* BlocBuilder<SongBloc, SongState>(
              builder: (context, state) {
                if (state.status == Status.error)
                  return Text(state.error ?? 'error');
                else if (state.status == Status.load)
                  return Center(child: CircularProgressIndicator());
                else {
                  return Column(
                    children: [
                      ...state.listS.map(
                        (e) => InkWell(
                            onTap: () {
                              context
                                  .read<SongBloc>()
                                  .add(LoadString(text: e.name));
                            },
                            child: Song(song: e)),
                      ),
                    ],
                  );
                }
              },
            ),*/
              BlocBuilder<SongBloc, SongState>(
                builder: (context, state) {
                  return Text(state.txt ?? ".");
                },
              ),
              /* BlocBuilder<SongBloc, SongState>(
              builder: (context, state) {
                if (state.status == Status.error)
                  return Text(state.error ?? 'error');
                else if (state.status == Status.load)
                  return Center(child: CircularProgressIndicator());
                else {
                  return Column(
                    children: [
                      ...state.listS.map((e) => InkWell(
                          onTap: () {
                            context.read<DesBloc>().add(LoadDesc(name: e.name));
                          },
                          child: Song(song: e)))
                    ],
                  );
                }
              },
            ),*/

              /*BlocBuilder<DesBloc, DesState>(
              builder: (context, state) {
                return Text(state.desc ?? "..");
              },
            ),
            InkWell(
              onTap: () {
                context.read<DesBloc>().add(LoadDesc(name: "dd"));
              },
              child: Container(
                height: 50,
                width: 50,
                color: Colors.indigo,
              ),
            ),*/
            ],
          ),
        ),
      ),
    );
  }
}
