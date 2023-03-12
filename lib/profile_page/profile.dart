import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/material.dart';

class profile extends StatelessWidget {
  const profile({super.key});
  final double coverdHeigt = 145;
  final double prifileHeight = 60;

  @override
  Widget build(BuildContext context) {
    final double top = coverdHeigt - prifileHeight;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {},
        ),
        title: const Text(
          "Profile",
          style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w700,
              fontStyle: FontStyle.normal),
        ),
        centerTitle: true,
        actions: const [
          Icon(
            Icons.list,
            color: Colors.black,
          )
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          CoverdImage(),
          ProfileImage(top),
          Positioned(
            top: coverdHeigt + prifileHeight,
            child: Container(
              child: Column(
                children: [
                  const Text(
                    "Steve Smith",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  ),
                  ProfileActions(),
                  const SizedBox(
                    height: 20,
                  ),
                  InformationsCart(),
                ],
              ),
            ),
          ),
          EditButton(),
        ],
      ),
    );
  }

  Positioned ProfileImage(double top) {
    return Positioned(
      top: top,
      child: CircleAvatar(
        radius: prifileHeight,
        backgroundImage: const NetworkImage(
            "https://images.unsplash.com/photo-1575936123452-b67c3203c357?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8aW1hZ2V8ZW58MHx8MHx8&w=1000&q=80"),
      ),
    );
  }

  Padding CoverdImage() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: SizedBox(
        height: 145,
        width: 356,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(
            "https://cdn.pixabay.com/photo/2018/03/02/19/21/nature-3194001__340.jpg",
            fit: BoxFit.cover,
            width: double.infinity,
            height: coverdHeigt,
          ),
        ),
      ),
    );
  }

  Positioned EditButton() {
    return Positioned(
      top: coverdHeigt + prifileHeight + 500,
      child: Container(
        height: 49,
        width: 271,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(100)),
          color: Color(0xFFFFC32E),
        ),
        child: const Center(
          child: Text("Edit Bio",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal)),
        ),
      ),
    );
  }

  Container InformationsCart() {
    return Container(
      //margin: EdgeInsets.all(10),
      height: 380,
      width: 356,
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.black,
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 380 / 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Work",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                      Text("Abce Private limited",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.1,
                    height: 40,
                    indent: 0,
                    endIndent: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 380 / 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Education",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                      Text("UBA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.1,
                    height: 40,
                    indent: 0,
                    endIndent: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 380 / 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Where i B",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                      Text("California, USA",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.1,
                    height: 40,
                    indent: 0,
                    endIndent: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 380 / 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Where I M From",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                      Text("Bs As, Argentina",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.1,
                    height: 40,
                    indent: 0,
                    endIndent: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 380 / 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Interest in",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                      Text("Playing Cricket, Dancing",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 1,
                  child: Divider(
                    color: Colors.white,
                    thickness: 0.1,
                    height: 40,
                    indent: 0,
                    endIndent: 0,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                SizedBox(
                  height: 380 / 7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text("Website",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 12,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                      Text("WWW.abc.com",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.normal)),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Row ProfileActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text("322",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal)),
            Text("My Trinds",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal)),
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text("499",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal)),
            Text("Trends",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal)),
          ],
        ),
        const SizedBox(
          width: 50,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text("3523",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal)),
            Text("Trender Setters",
                style: TextStyle(
                    color: Colors.black54,
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.normal)),
          ],
        ),
      ],
    );
  }
}
