import 'package:flutter/material.dart';
import 'package:projeton1/page/player.dart';

class Lazer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _buildAppBar(), body: _buildBody(context));
  }

  _buildAppBar() {
    return AppBar(
      title: Text('Musica'),
      centerTitle: true,
    );
  }

  _buildBody(BuildContext context) {
    return ListView(
      children: <Widget>[
        _buildImgLogo(),
        _buildText(),
        _buildImgAlbum(),
        _buildBtn(context)
      ],
    );
  }

  _buildImgLogo() {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset('img/lazer.jpg'),
        ],
      ),
    );
  }

  _buildText() {
    return Container(
      child: Text(
        'Ouça suas musicar preferidas',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
      ),
      padding: EdgeInsets.all(30),
    );
  }

  _buildImgAlbum() {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('img/album1.jpg', width: 148),
          Image.asset('img/album2.jpg', width: 148),
          Image.asset('img/album3.jpg', width: 148)
        ],
      ),
    );
  }

  _buildBtn(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(padding: EdgeInsets.all(30)),
        ElevatedButton(
          style: ElevatedButton.styleFrom(minimumSize: Size(340, 50)),
          child: Text('Player'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Player()));
          },
        ),
      ],
    );
  }
}
