import 'package:fellow4u/pages/inexplore/chooseAGuides/guideEmmy.dart';
import 'package:fellow4u/pages/inexplore/chooseAGuides/guideTuan.dart';
import 'package:fellow4u/pages/inexplore/guides.dart';
import 'package:flutter/material.dart';

class SeeMoreGuides extends StatefulWidget {
  const SeeMoreGuides({super.key});

  @override
  State<SeeMoreGuides> createState() => _SeeMoreGuidesState();
}

class _SeeMoreGuidesState extends State<SeeMoreGuides> {
  bool _isFocus = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(220),
        child: SizedBox(
          height: 500,
          child: Stack(
            fit: StackFit.loose,
            children: [
              Positioned(
                top: 0,
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  padding:
                      const EdgeInsets.symmetric(vertical: 45, horizontal: 15),
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    image: DecorationImage(
                      image: AssetImage('lib/image/seemoretourheader.png'),
                      fit: BoxFit.cover,
                      opacity: 0.85,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: const Align(
                            alignment: Alignment.topLeft,
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: Colors.white,
                            )),
                        onTap: () {
                          Navigator.pop(context);
                        },
                      ),
                      const Text(
                        'Book your own private local ',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      const Text(
                        'Guide and explore the city',
                        style: TextStyle(
                            color: Colors.white, fontSize: 24, height: -0.3),
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                // bottom: 0,
                bottom: 20,
                width: MediaQuery.of(context).size.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: PhysicalModel(
                    color: Colors.white,
                    shadowColor: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    elevation: 5,
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color:
                              _isFocus ? const Color(0xff00cea6) : Colors.grey,
                        ),
                        hintMaxLines: 1,
                        hintText: 'Hi, Where do you want to explore?',
                        hintStyle: const TextStyle(fontSize: 18),
                        border: InputBorder.none,
                      ),
                      onTap: () {
                        setState(() {
                          _isFocus = true;
                        });
                      },
                      onSubmitted: (value) {
                        setState(() {
                          _isFocus = false;
                        });
                      },
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: [Guides(),Guides()],
      ),
    );
  }
}
