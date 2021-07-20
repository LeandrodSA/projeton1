import 'package:flutter/material.dart';
import 'package:projeton1/page/player.dart';

class Music extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        
        children: [
          _buildBtnBack(context),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildImg('img/album1.jpg', 'Legiao so as melhores'),
              _buildImg('img/album2.jpg', 'Metalica'),
              _buildImg('img/album3.jpg', 'System of a down'),
            ],
          ),
        ],
      ),
    );
  }

  _buildImg(String img, String nome) {
    return Container(
      padding: EdgeInsets.all(25),
      child: Column(
        children: [
          Image.asset(img),
          Text(nome, style: TextStyle(fontSize: 14)),
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
                  context, MaterialPageRoute(builder: (context) => Player()));
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
