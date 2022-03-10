import 'package:flutter/material.dart';
import 'package:login_user/pages/shimmer_page.dart';
import 'package:login_user/models/user_model.dart';
import 'package:login_user/repository/user_repository.dart';

class UserPage extends StatefulWidget {
  const UserPage({Key? key}) : super(key: key);

  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  bool isLoading = false;
  List<Data> lista = [];

  @override
  void initState() {
    super.initState();
    loadUser();
  }

  Future loadUser() async {
    setState(() => isLoading = true);
    await Future.delayed(
      const Duration(seconds: 2),
    );
    UserRepository().GetUser().then((map) {
      setState(() {
        lista = map;
      });
    });
    setState(() => isLoading = false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Usuario'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: loadUser,
            icon: const Icon(
              Icons.refresh,
            ),
          ),
        ],
      ),
      body: buildPadding(),
    );
  }

  Padding buildPadding() {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: ListView.builder(
          itemCount: isLoading ? 10 : lista.length,
          itemBuilder: (context, index) {
            if (isLoading) {
              return const Skeleton().buildListTile();
            } else {
              return buildCard(index);
            }
          }),
    );
  }

  Card buildCard(int index) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(
            lista[index].avatar.toString(),
          ),
        ),
        title: Text(
          lista[index].firstName.toString(),
        ),
        subtitle: Text(
          lista[index].email.toString(),
        ),
      ),
    );
  }
}
