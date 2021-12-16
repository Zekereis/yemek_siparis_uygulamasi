import 'package:flutter/material.dart';
import 'package:yemek_uygulamasi/yemekler.dart';

class detay_sayfa extends StatefulWidget {


  Yemekler yemek;


  detay_sayfa({Key? key, required this.yemek}) : super(key: key);

  @override
  _detay_sayfaState createState() => _detay_sayfaState();
}

class _detay_sayfaState extends State<detay_sayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.yemek.yemek_adi),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset("resimler/${widget.yemek.yemek_resim_adi}"),
            Text("${widget.yemek.yemek_fiyat} \u{20BA}",style: TextStyle(fontSize: 30,color: Colors.blue,),),
            SizedBox(
              width: 150,
              height: 50,
              child: ElevatedButton(
                child: Text("Sipariş ver"),
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  onPrimary: Colors.white,
                ),
                onPressed: (){
                  print("${widget.yemek.yemek_adi} sipariş verildi");
                },
              ),
            ),
          ],
        ),
      ),

    );
  }
}
