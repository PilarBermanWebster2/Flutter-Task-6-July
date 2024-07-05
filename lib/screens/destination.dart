import 'package:flutter/material.dart';

import 'detail-destination.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Ubud",
      "kota": "Bali",
      "image": "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0=",
      "gallery": [
        "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0=",
        "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0=",
        "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0="
      ],
      "desc":
          "Ubud adalah sebuah destinasi wisata populer di Bali yang terkenal dengan seni, budaya, dan alam yang indah. Terletak di antara sawah dan jurang yang curam, Ubud menawarkan pengalaman yang tak terlupakan bagi wisatawan.",
    },
    {
      "nama": "Nusa Penida",
      "kota": "Bali",
      "image": "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0=",
      "gallery": [
        "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0=",
        "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0=",
        "https://media.istockphoto.com/id/515480864/id/foto/sawah-yang-indah-ubud-bali-indonesia.jpg?s=612x612&w=0&k=20&c=_X0d7MMGx7OZw_8n0SYTqXXs81c1NJpNFrdcnqCd8z0="
      ],
      "desc":
          "Nusa Penida adalah sebuah pulau kecil di sebelah tenggara Bali, terkenal dengan pantai yang indah, tebing-tebing yang menakjubkan, dan kehidupan bawah laut yang luar biasa. Tempat ini ideal untuk snorkeling dan diving.",
    },
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Destinasi Wisata'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: ListView.builder(
            itemCount: wisataData.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailWisataScreen(
                        nama: wisataData[index]["nama"],
                        kota: wisataData[index]["kota"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Container(
                  alignment: Alignment.bottomLeft,
                  height: 200,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: NetworkImage("${wisataData[index]["image"]}"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(0.5),
                    ),
                    child: Text(
                      "${wisataData[index]["nama"]} - ${wisataData[index]["kota"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent,
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}