import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: false,
          shadowColor: Colors.grey.shade400,
          title: Text('Peliculas en Cines'),
          backgroundColor: Colors.lightBlue.shade700,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search_outlined),
              onPressed: () {},
            )
          ],
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              _swiperCards(),
            ],
          ),
        ));
  }

  Widget _swiperCards() {
    return Container(
  padding: EdgeInsets.only(top: 10.0),
    width: double.infinity,
    height: 300.0,
      child: Swiper(
      layout: SwiperLayout.STACK,
      itemWidth: 200.0,
        itemBuilder: (BuildContext context, int index) {
          return  Image.network('http://via.placeholder.com/350x150',
          fit:BoxFit.fill);
        },
        itemCount: 3,
        //pagination: SwiperPagination(),
        //control: SwiperControl(),
      ),
    );
  }
}
