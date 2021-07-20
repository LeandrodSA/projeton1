import 'package:flutter/material.dart';
import 'package:projeton1/page/lazer.dart';
import 'package:projeton1/page/music.dart';

class Player extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildPlayer(context),
    );
  }

  _buildBody(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          _buildIco(Icons.audiotrack_sharp, 'Musica', context),
          _buildIco(Icons.playlist_play_sharp, 'PlayList', context),
        ],
      ),
    );
  }

  _buildIco(IconData ico, String nome, BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: <Widget>[
          FlatButton(
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Music()));
            },
            child: Row(
              children: [
                Icon(
                  ico,
                ),
                Text(nome),
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildPlayer(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(30),
      child: Column(
        children: <Widget>[
          _buildBtnBack(context),
          _buildBody(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildBtn(Icons.shuffle),
              _buildBtn(Icons.arrow_back),
              _buildBtn(Icons.play_arrow_rounded),
              _buildBtn(Icons.arrow_forward),
              _buildBtn(Icons.arrow_circle_down),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildImg('img/album4.jpg'),
            ],
          ),
        ],
      ),
    );
  }

  _buildBtn(IconData ico) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(minimumSize: Size(0, 50)),
            onPressed: () {},
            child: Column(
              children: [Icon(ico)],
            ),
          ),
        ],
      ),
    );
  }

  _buildImg(String img) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        children: [
          Image.asset(img, width: 350,),
        ],
      ),
    );
  }

  _buildBtnBack(BuildContext context) {
    return Container(
      child: Column(
        children: [
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              minimumSize: Size(100, 50),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Lazer()));
            },
            child: Row(
              children: [
                Icon(Icons.arrow_back_ios),
                Text('Back'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
