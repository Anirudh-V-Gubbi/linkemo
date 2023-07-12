import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:linkemo/core/designs.dart';
import 'package:linkemo/core/utility.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/presentation/bloc/link_home_bloc.dart';
import 'package:linkemo/features/home/presentation/widgets/add_link_sheet.dart';
import 'package:linkemo/features/home/presentation/widgets/link_details_list.dart';
import 'package:linkemo/service_locator.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  BuildContext? blocContext;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LinkEmo"),
        centerTitle: true,
      ),
      body: BlocProvider<LinkHomeBloc>(
          create: (_) => sl.get<LinkHomeBloc>()
            ..add(const LinkHomeEvent.getAllLinkDetails()),
          child: BlocConsumer<LinkHomeBloc, LinkHomeState>(
            listener: (context, state) {
              state.maybeMap(
                storedLinkDetails: (state) {
                  BlocProvider.of<LinkHomeBloc>(context)
                      .add(const LinkHomeEvent.getAllLinkDetails());
                },
                orElse: () {},
              );
            },
            builder: (context, state) {
              blocContext = context;
              return state.maybeMap(loading: (_) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }, fetchedAllLinkDetials: (state) {
                return Padding(
                  padding: symmetricPadding(horizontal: 12.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Wrap(
                          spacing: 4.0,
                          children: state.tags
                              .map((tag) => Chip(
                                    label: Text(
                                      tag.name,
                                      style: const TextStyle(
                                          fontSize: 14,
                                          color: kWhiteColor,
                                          overflow: TextOverflow.clip),
                                    ),
                                    backgroundColor: kHighlightColor,
                                    side: const BorderSide(
                                        color: kHighlightColor),
                                  ))
                              .toList(),
                        ),
                        LinkDetailsList(detailsList: state.linkDetails)
                      ],
                    ),
                  ),
                );
              }, error: (state) {
                return Center(
                  child: Text(state.message),
                );
              }, orElse: () {
                return Container();
              });
            },
          )),
      floatingActionButton: DraggableFab(
        initPosition: Offset(deviceWidth(context), deviceHeight(context) * 0.9),
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(kFabColor),
              shape: MaterialStateProperty.all(const CircleBorder()),
              fixedSize:
                  MaterialStateProperty.all(const Size.fromRadius(kFabRadius))),
          child: const Icon(
            Icons.add,
            size: 35.0,
            color: kWhiteColor,
          ),
          onPressed: () {
            addBottomSheet();
          },
        ),
      ),
    );
  }

  void addBottomSheet() {
    showModalBottomSheet(
        context: context,
        enableDrag: true,
        isScrollControlled: true,
        isDismissible: true,
        shape: RoundedRectangleBorder(
          borderRadius: circularBorder(10.0),
        ),
        builder: (context2) {
          return StatefulBuilder(
            builder: (context3, setState) {
              return AddLinkSheet(
                blocContext: blocContext ?? context,
              );
            },
          );
        });
  }
}
