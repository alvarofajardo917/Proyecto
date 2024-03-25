import 'dart:js_util';

import 'package:fl_components/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewScreen extends StatefulWidget {
  const ListViewScreen({Key? key}) : super(key: key);

  @override
  State<ListViewScreen> createState() => _ListViewScreenState();
}

class _ListViewScreenState extends State<ListViewScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  bool isLoading = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    scrollController.addListener(() {
      //print(' ${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}');
      if((scrollController.position.pixels + 500) >= scrollController.position.maxScrollExtent){
        //adds();
        fetchData();
      }
    });
  }

  Future fetchData() async{
    if(isLoading)return;

    isLoading = true;
    setState(() {});

    await Future.delayed(const Duration(seconds: 3));
    add5();

    isLoading =false;
    setState(() {});

  }

void add5(){
  final lastId = imagesIds.last;
  imagesIds.addAll(
    [1, 2, 3, 4, 5].map((e) => lastId + e)
  );
  setState(() {});
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(), // es para que tenga un parecido a ios
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (BuildContext context, int index) {
                return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/500/300?image=${imagesIds[index]}'));
              },
            ),

            Positioned(
              bottom:40 ,
              left: 40,
              right: 40,
              child: const _LoadingIcon()
              )

          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget{
  const _LoadingIcon({
    Key? key,
  }):super(key: key);

@override
Widget build(BuildContext context){
    return Container(
          padding: const EdgeInsets.all(10),
          height: 60,
          width: 60,
          decoration: BoxDecoration(
             color: Colors.white.withOpacity(0.9),
             shape: BoxShape.circle
          ),
          child: const CircularProgressIndicator(color: AppTheme.primary)
          );
  }
}





