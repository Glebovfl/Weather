import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            "Weather",
            style: TextStyle(color: Colors.black87),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            )
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(
      children: <Widget>[
        _headerImage(),
        SafeArea(
            child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              _weatherDescription(),
              Divider(),
              _temprature(),
            ],
          ),
        ))
      ],
    ),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://englishlib.org/wp-content/uploads/2013/09/The-Weather.png'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    children: <Widget>[
      Text(
        'Friday - January 07',
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      Divider(),
      Text(
        'описание',
        style: TextStyle(color: Colors.black54),
      )
    ],
  );
}

Row _temprature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(Icons.wb_sunny, color: Colors.yellow),
        ],
      ),
      SizedBox(width: 16.0),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '15 Clear',
                style: TextStyle(color: Colors.deepPurple),
              )
            ],
          ),
          Row(
            children: <Widget>[
              Text(
                'Ryazanskaya oblast, Ryazan',
                style: TextStyle(color: Colors.grey),
              )
            ],
          )
        ],
      )
    ],
  );
}
