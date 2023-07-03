import 'package:any_link_preview/any_link_preview.dart';
import 'package:draggable_fab/draggable_fab.dart';
import 'package:flutter/material.dart';

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
      body: Column(
        children: [
          Card(
            child: AnyLinkPreview(
              link: "https://dev.to/mfts/how-to-write-a-perfect-readme-for-your-github-project-59f2",
              displayDirection: UIDirection.uiDirectionVertical,
            ),
          )
        ],
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
