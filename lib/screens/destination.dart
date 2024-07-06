import 'package:flutter/material.dart';

import 'detail-destination.dart';

class ListWisataScreen extends StatelessWidget {
  final List<Map<String, dynamic>> wisataData = [
    {
      "nama": "Merkurius",
      "urutan": "Planet Pertama",
      "image": "https://media.istockphoto.com/id/1295829498/id/foto/mercury-elongation-rekaman-4k.jpg?s=612x612&w=0&k=20&c=2aB5kTyLmkJ08Ztvwb9-KYmwxabCF45AdL0HdxPf9a4=",
      "gallery": [
        "https://media.istockphoto.com/id/1142980876/id/foto/mars-planet-terisolasi-dalam-putih.jpg?s=612x612&w=0&k=20&c=_RZuoYbyYuNHRKJk6TBOV0a0sSPtaNVEzMKHESGexXo=",
        "https://media.istockphoto.com/id/1295842139/id/foto/planet-merkurius-dan-matahari.jpg?s=612x612&w=0&k=20&c=i4bZ3inQUiVdqPqeYqKC09yoxjOH1liXOh1IRFalW74=",
        "https://media.istockphoto.com/id/1496413654/id/foto/mars-bulan-galaksi-dan-nebula.jpg?s=612x612&w=0&k=20&c=2b87w2FXZYJcsAH5tAeQmyUf1RLQ7UKUk2eKrnXJmFI="
      ],
      "desc":
          "Merkurius atau Utarid merupakan planet terkecil di Tata Surya sekaligus yang terdekat dari Matahari. Periode revolusi planet ini merupakan yang terpendek dari semua planet di Tata Surya, yakni 87,79 hari. Seperti halnya Venus, Merkurius merupakan planet inferior yang letak orbitnya berada di sebelah dalam orbit Bumi, dan ketika diamati dari Bumi, jarak sudutnya dari Matahari tidak pernah melebihi 28°.",
    },
    {
      "nama": "Venus",
      "urutan": "Planet Kedua",
      "image": "https://media.istockphoto.com/id/524200177/id/foto/venus.jpg?s=612x612&w=0&k=20&c=aH5fR-jnghusOblRuabHdo-cmoXCKzTjT3T3_3RAW1w=",
      "gallery": [
        "https://media.istockphoto.com/id/1227346702/id/foto/planet-venus.jpg?s=612x612&w=0&k=20&c=s3UEdK_skn2JoW7oqBaVB1mWPuATfoCk67jvPFcsU88=",
        "https://media.istockphoto.com/id/910354590/id/foto/planet-venus-dinyalakan-oleh-matahari-cerah.jpg?s=612x612&w=0&k=20&c=2N4NczSCR6uBp3XuZKjRrcUVIIlVa4iXHR6XcumoZh0=",
        "https://media.istockphoto.com/id/1346572193/id/foto/pandangan-seniman-tentang-planet-mars.jpg?s=612x612&w=0&k=20&c=UPhuIOgw-UdFtKJe0ToWi52zam5LQc9CBHqZ_5Yd8JQ="
      ],
      "desc":
          "Venus, Kejora (Bahasa Melayu) , Makbram (Bahasa Biak) atau Zohrah adalah planet terdekat kedua dari Matahari setelah Merkurius. Planet ini mengorbit Matahari selama 224,7 hari Bumi.",
    },
    {
      "nama": "Bumi",
      "urutan": "Planet Ketiga",
      "image": "https://media.istockphoto.com/id/1334034329/id/foto/matahari-terbit-dan-bayangan-di-bumi-berputar-di-ruang-angkasa-dengan-bintang-di-alam-semesta.jpg?s=612x612&w=0&k=20&c=sIN9Vq7m6AO0phIaJ4i9qS3-VPfrWLBIQ65MbxAB9VQ=",
      "gallery": [
        "https://media.istockphoto.com/id/1282125191/id/foto/planet-bumi-dari-ruang-di-malam-hari.jpg?s=612x612&w=0&k=20&c=zE5PkMqbNYJDsfyMuVs7DhJR-wQEYf6cYAqID3t2eE4=",
        "https://media.istockphoto.com/id/1428716920/id/foto/planet-bumi-dilihat-dari-luar-angkasa-dengan-lampu-kota-teknologi-komunikasi-global-koneksi.jpg?s=612x612&w=0&k=20&c=CXgX0tkx0Oos4-NsNbDP4nt18KWAChysCuheRI5Z9xI=",
        "https://media.istockphoto.com/id/512058550/id/foto/tampilan-bumi-dari-luar-angkasa-ke-eropa.jpg?s=612x612&w=0&k=20&c=m5jYWbXbvNGv82MFhxLxcuhzM9qdDY9vwz970YQBCyo="
      ],
      "desc":
          "Bumi adalah planet terdekat ketiga dari Matahari yang merupakan planet terpadat dan terbesar kelima dari delapan planet dalam Tata Surya. Bumi juga merupakan planet terbesar dari empat planet kebumian di Tata Surya. Bumi terkadang disebut dengan dunia atau Planet Biru.",
    },
    {
      "nama": "Mars",
      "urutan": "Planet Keempat",
      "image": "https://media.istockphoto.com/id/1214890390/id/foto/planet-mars-di-ruang-angkasa.jpg?s=612x612&w=0&k=20&c=2TfQZqi8jHA9dF5Vu7rc14p2hYWOSLbw_o8qI_8Upug=",
      "gallery": [
        "https://media.istockphoto.com/id/1300652810/id/foto/ilustrasi-render-3d-planet-mars-fitur-permukaan-terperinci-tinggi.jpg?s=612x612&w=0&k=20&c=mzmI8Hr4pgKgzDCaTeKcwo4KiIQLOyG6wWY90TViFm4=",
        "https://media.istockphoto.com/id/1003991098/id/foto/tampilan-venus-elemen-gambar-ini-dilengkapi.jpg?s=612x612&w=0&k=20&c=y_JP_FCo0ICdAwAZHR1xhh-jNVQ33AyTwZOiwdgWHus=",
        "https://media.istockphoto.com/id/490343848/id/foto/matahari-terbit-di-mars.jpg?s=612x612&w=0&k=20&c=sVME5XOZxYUFAiqXpBzT56pqA-DrUxDW0Mq3EiWxjUw="
      ],
      "desc":
          "Mars, Marikh (dari bahasa Arab مریخ), Jaka belek (dari bahasa Jawa ꦗꦏꦧꦼꦭꦺꦏ꧀) atau Sangia (Bahasa Tolaki) adalah planet terdekat keempat dari Matahari. Namanya diambil dari dewa perang Romawi, Mars. Planet ini sering dijuluki sebagai planet merah karena tampak dari jauh berwarna kemerah-kemerahan.",
    },
    {
      "nama": "Jupiter",
      "urutan": "Planet Kelima",
      "image": "https://media.istockphoto.com/id/542170926/id/foto/matahari-terbit-di-planet-jupiter.jpg?s=612x612&w=0&k=20&c=qRgK_5-l7XXC9SN3mlmCyDI2rhpa1hRopm_FVa9ZdBI=",
      "gallery": [
        "https://media.istockphoto.com/id/1336235465/id/foto/kapal-eksplorasi-pesawat-ruang-angkasa-raksasa-jupiter-yang-mengorbit-planet-terbesar-mata.jpg?s=612x612&w=0&k=20&c=5z1YtPvJw7yT7qv7oF8OWlPvmvgpsh0vuM9Okhl9JYE=",
        "https://media.istockphoto.com/id/1178002783/id/foto/sebagian-kecil-dari-bidang-ruang-bintang-tak-terbatas-di-alam-semesta-blue-stanfield-elemen.jpg?s=612x612&w=0&k=20&c=NtRUozgTtqG-ekIgt8RbXlv5BkyJqACNmES1Z_wuQMw=",
        "https://media.istockphoto.com/id/1556040648/id/foto/jupiter-permukaan-bintang-bintang-latar-belakang-kosmik-planet-ilustrasi-3d.jpg?s=612x612&w=0&k=20&c=9imFYibxRbo3TKCqStyEEkU1rMvPwa-gd6ohkZYCBLc="
      ],
      "desc":
          "Jupiter, Musytari, (terkadang secara tidak baku disebut sebagai Yupiter) atau Kumbendi (bahasa biak) adalah planet kelima terdekat dari Matahari setelah Merkurius, Venus, Bumi, dan Mars.[11] Planet ini juga merupakan planet terbesar di Tata Surya.",
    },
    {
      "nama": "Saturnus",
      "urutan": "Planet Keenam",
      "image": "https://media.istockphoto.com/id/606191046/id/foto/planet-saturnus-dengan-bulan-bulan-besar.jpg?s=612x612&w=0&k=20&c=xSQ23AtFGQJyqm3EuVcQM-Rd89zx8wohe8LZtlQkyB0=",
      "gallery": [
        "https://media.istockphoto.com/id/186834181/id/foto/bahasa-suturn.jpg?s=612x612&w=0&k=20&c=D2wZI9TEeBlQYjguy-df5EKivEbnqBJpa2AYALi6VE4=",
        "https://media.istockphoto.com/id/155156545/id/foto/bahasa-suturn.jpg?s=612x612&w=0&k=20&c=PfBGwAjuKb_OiasiKz0LMhEvE5iPzyXF05fXMVi-VOM=",
        "https://media.istockphoto.com/id/866633056/id/foto/planet-dalam-komposit-luar-angkasa.jpg?s=612x612&w=0&k=20&c=qFSZipH66x199eHSdC1ESzPmJYxu-uYAMiGZD9oHZCo="
      ],
      "desc":
          "Saturnus (serapan dari bahasa Belanda: saturnus), zohal (serapan dari bahasa Arab: زحل), tumpak (bahasa Jawa dan Sunda ꦠꦸꦩ꧀ꦥꦏ꧀ atau ᮒᮥᮙ᮪ᮕᮊ᮪) atau belah naik (Bahasa Batak ᯅᯩᯞᯂ᯲ ᯉᯤᯄ᯦᯲) adalah planet keenam dari Matahari dan merupakan planet terbesar kedua di Tata Surya setelah Jupiter.",
    },
    {
      "nama": "Uranus",
      "urutan": "Planet Ketujuh",
      "image": "https://media.istockphoto.com/id/1199283538/id/foto/planet-uranus.jpg?s=612x612&w=0&k=20&c=9Qz4a8v4EhkyLjDsDhWof3y9HxbkYAM-wAkiCvMSp_0=",
      "gallery": [
        "https://media.istockphoto.com/id/1227245892/id/foto/planet-uranus.jpg?s=612x612&w=0&k=20&c=QxaHhF4mFwfzKUe-jvu-NUvn5898NrM174Gd-q5zA8Q=",
        "https://media.istockphoto.com/id/1187258342/id/foto/pemandangan-indah-planet-uranus-dari-space-timelapse-dan-bintang-tekstur-latar-belakang-abstrak.jpg?s=612x612&w=0&k=20&c=gSyRV7z2eiOivRAmTi0GzNoLeCjhm2IDgPNYZ5kXnpU=",
        "https://media.istockphoto.com/id/645502000/id/foto/latar-belakang-kosmos-abstrak-ruang-elemen-gambar-ini-dilengkapi-oleh-nasa.jpg?s=612x612&w=0&k=20&c=GeRjUB0sLqfS5rRd967nWWB05rE857Rx8y7a_6Tunzw="
      ],
      "desc":
          "Uranus (berasal dari nama Latin Ūranus untuk nama dewa Yunani Οὐρανός) adalah planet ketujuh dari Matahari. Uranus merupakan planet yang memiliki jari-jari terbesar ketiga sekaligus massa terbesar keempat di Tata Surya. Uranus juga merupakan satu-satunya planet yang namanya berasal dari tokoh dalam mitologi Yunani, dari versi Latinisasi nama dewa langit Yunani Ouranos.",
    },
    {
      "nama": "Neptunus",
      "urutan": "Planet Kedelapan",
      "image": "https://media.istockphoto.com/id/527343985/id/foto/neptunus.jpg?s=612x612&w=0&k=20&c=mt83eWeM5al-jwQr-eGiCXeiitt7idZ80RD7MYL695w=",
      "gallery": [
        "https://media.istockphoto.com/id/697681800/id/foto/planet-neptunus.jpg?s=612x612&w=0&k=20&c=AFuP74DhmyGNMnD4b_R_wwyeGIpjqQ1OWjoYwH6LsOc=",
        "https://media.istockphoto.com/id/1187258348/id/foto/pemandangan-indah-planet-neptunus-dari-ruang-timelapse-dan-bintang-tekstur-latar-belakang.jpg?s=612x612&w=0&k=20&c=r0OzgBtDGJpPWPXeSw_zVK4uiE7IBs9FxcvgVd3jcuw=",
        "https://media.istockphoto.com/id/1220627415/id/foto/neptunus-dan-matahari.jpg?s=612x612&w=0&k=20&c=kbEvzUvt1iQILjJHeghsceTNkJ7rhhaxptt4__G5I3g="
      ],
      "desc":
          "Neptunus merupakan planet terjauh (kedelapan) dari Matahari. Neptunus merupakan planet terbesar keempat berdasarkan diameter (49.530 km) dan terbesar ketiga berdasarkan massa. Massa Neptunus tercatat 17 kali lebih besar daripada Bumi, dan sedikit lebih kecil daripada Uranus.",
    },
    // ...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Planet'),
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