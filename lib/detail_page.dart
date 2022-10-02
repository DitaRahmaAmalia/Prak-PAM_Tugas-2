import 'package:flutter/material.dart';
import 'package:tugas_kuis/data_wisata.dart';
import 'package:url_launcher/url_launcher.dart';

class DetailPage extends StatefulWidget {
  final DataWisata wisata;

  const DetailPage({Key? key, required this.wisata}) : super(key: key);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: (isFavorite) ? Colors.lightBlueAccent : Colors.white,
      appBar: AppBar(
        title: Text("${widget.wisata.name}"),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
            icon: (isFavorite)
                ? Icon(Icons.favorite)
                : Icon(Icons.favorite_border),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(12),
            height: (MediaQuery
                .of(context)
                .size
                .height) / 3,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: Image.network(widget.wisata.imageUrl[index]),
                );
              },
              itemCount: widget.wisata.imageUrl.length,
            ),
          ),
          Container(
            padding: EdgeInsets.all(20),
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                textBesar(widget.wisata.name),
                SizedBox(height: 10,),
                Container(
                  height: 35,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: int.parse(widget.wisata.stars),
                    itemBuilder: (BuildContext context, int index) =>
                        Icon(Icons.stars),
                  ),
                ),
                textBesar(widget.wisata.location),
                SizedBox(height: 10,),
                textBesar("Harga Tiket : " + widget.wisata.tiketMasuk),
                SizedBox(height: 10,),
                textBesar("Link Pemesanan : "),
                SizedBox(height: 10,),
                SizedBox(
                  height: (MediaQuery.of(context).size.height)/10,
                  width: (MediaQuery.of(context).size.width),
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: widget.wisata.facility.length,
                    ),
                    itemBuilder: (context,index){
                      return Column(
                        children: [
                          Icon(IconData(int.parse(widget.wisata.iconFacility[index]),fontFamily: 'MaterialIcons')),
                          textSedang(widget.wisata.facility[index])
                        ],
                      );
                    },
                    itemCount: widget.wisata.facility.length,
                  ),
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      _launchURL(widget.wisata.websiteLink);
                    },
                    child: Text("Halaman Website"),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget textBesar(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 20),
    );
  }

  Widget textSedang(String text) {
    return Text(
      text,
      style: TextStyle(fontSize: 16),
    );
  }

  void _launchURL(_url) async {
    if (!await launch(_url)) throw 'Could not launch $_url';
  }

}