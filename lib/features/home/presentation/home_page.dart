import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';
import 'package:linkemo/features/home/domain/entity/link_details.dart';
import 'package:linkemo/features/home/presentation/widgets/link_details_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LinkEmo"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              LinkDetailsList(
                detailsList: [LinkDetails(
                  link: "https://dev.to/mfts/how-to-write-a-perfect-readme-for-your-github-project-59f2",
                  createdAt: DateTime.now(),
                  description: "Here is the link for yesterday's Sub-SIG introduction. Go through it thoroughly, so that you can plan ahead of time. Let's decide roles and a few other things asap as discussed yesterday.",
                  tags: ["ACM", "GitHub", "C++", "Resume", "Interview", "Sanganitra"]
                ),
                LinkDetails(
                  link: "https://github.com",
                  createdAt: DateTime.now(),
                  description: "Here is the link for yesterday's Sub-SIG introduction. Go through it thoroughly, so that you can plan ahead of time. Let's decide roles and a few other things asap as discussed yesterday.",
                  tags: ["ACM", "GitHub", "C++", "Resume", "Interview", "Sanganitra"]
                )]
              )
            ],
          ),
        ),
      ),
      floatingActionButton: DraggableFab(
        initPosition: Offset(MediaQuery.of(context).size.width, MediaQuery.of(context).size.height * 0.9),
        child: OutlinedButton(
          style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.purple),
              shape: MaterialStateProperty.all(const CircleBorder()),
              fixedSize:
                  MaterialStateProperty.all(const Size.fromRadius(30.0))),
          child: const Icon(
            Icons.add,
            size: 35.0,
            color: Colors.white,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
