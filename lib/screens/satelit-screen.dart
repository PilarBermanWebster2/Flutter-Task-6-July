import 'package:flutter/material.dart';

import 'detail-satelit.dart';

class ListSatelitScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Hubble Space Telescope (HST)",
      "urutan": "Launched:1990",
      "image": "https://media.istockphoto.com/id/1353863644/id/foto/teleskop-hubble-di-orbit-bumi-observatorium-ruang-angkasa-teleskop-di-luar-angkasa-dekat.jpg?s=612x612&w=0&k=20&c=oLhif2zxyuqqODLa64jhgfEfcMxbhW2VoeImRN_75Po=",
      "gallery": [
        "https://media.istockphoto.com/id/1371752135/id/foto/teleskop-luar-angkasa-hubble-di-luar-angkasa-observatorium-ruang-angkasa-orbital-penelitian.jpg?s=612x612&w=0&k=20&c=8_aUiSxDtw62uzw_o3GikcrTR_MOZlGslBchN4KV9v8=",
        "https://media.istockphoto.com/id/1361606907/id/foto/teleskop-ruang-angkasa-james-webb-dengan-latar-belakang-putih.jpg?s=612x612&w=0&k=20&c=yogUWW04OXdZTV1Nr8VBVOBI7oZmM5rI18_G8f7Bz0A=",
      ],
      "desc":
          "Space telescope that has provided stunning images of space and has greatly contributed to our understanding of the universe.",
    },
    {
      "nama": "International Space Station (ISS)",
      "urutan": "Launched:1998 (first module)",
      "image": "https://media.istockphoto.com/id/1253695434/id/foto/stasiun-iss-di-orbit-planet-bumi-elemen-gambar-ini-dilengkapi-oleh-nasa.jpg?s=612x612&w=0&k=20&c=lT4679KpWMuZEt6IlPuwu-gldfg33kOenD0R5VhDpuM=",
      "gallery": [
        "https://media.istockphoto.com/id/157506472/id/foto/stasiun-luar-angkasa-internasional-iss.jpg?s=612x612&w=0&k=20&c=4xAU6dCy4Y9iYLRy-Y7HniFpqP2-TFhSkHwwX8Fcu00=",
        "https://media.istockphoto.com/id/1248873601/id/foto/stasiun-luar-angkasa-internasional-mengorbit-bumi-di-luar-angkasa-penelitian-spacex-nasa-iss.jpg?s=612x612&w=0&k=20&c=alD-nwCzXSEy8zv637xQuVhgYG9x8sBsnvhrMilETVM=",
      ],
      "desc":
          "Purpose: A habitable space station used for research across various scientific disciplines.",
    },
    {
      "nama": "Landsat Satellites",
      "urutan": "Launched:1972(first satellite, Landsat 1)",
      "image": "https://media.istockphoto.com/id/461974211/id/foto/hidangan-satelit.jpg?s=612x612&w=0&k=20&c=tr42B2mPOnCxAB_BXkSGN2QcRZUuanRW-SoOOPJ3FDU=",
      "gallery": [
        "https://media.istockphoto.com/id/461875251/id/foto/hidangan-satelit-di-atap.jpg?s=612x612&w=0&k=20&c=pwwDx0kVLMRVYYePhjQzs6L499xrq45BIJ82RYnSHpA="
      ],
      "desc":
          " Earth observation satellites that have provided detailed images of Earth’s surface for environmental monitoring.",
    },
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Satelit'),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/IOS.png"),
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
                        urutan: wisataData[index]["urutan"],
                        image: wisataData[index]["image"],
                        gallery: wisataData[index]["gallery"],
                        desc: wisataData[index]["desc"],
                      ),
                    ),
                  );
                },
                child: Hero(
                  tag: 'planetImage${wisataData[index]["nama"]}',
                  child: AnimatedContainer(
                    duration: Duration(milliseconds: 500),
                    alignment: Alignment.bottomLeft,
                    height: 200,
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: NetworkImage(wisataData[index]["image"]),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Container(
                      padding: const EdgeInsets.all(6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Text(
                        "${wisataData[index]["nama"]} - ${wisataData[index]["urutan"]}",
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.orangeAccent,
                        ),
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