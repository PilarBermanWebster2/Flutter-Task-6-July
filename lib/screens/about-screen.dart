import 'package:flutter/material.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({super.key});

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: Duration(seconds: 1),
      vsync: this,
    );
    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeIn,
    );
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
        backgroundColor: const Color.fromARGB(255, 112, 150, 182),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/IOS.jpeg"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 20.0),
                FadeTransition(
                  opacity: _animation,
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage('assets/images/tscott.jpeg'),
                  ),
                ),
                SizedBox(height: 20.0),
                FadeTransition(
                  opacity: _animation,
                  child: Card(
                    color: Colors.white.withOpacity(0.8),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'PCode Dev',
                            style: TextStyle(
                              fontSize: 24.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'PCode Dev merupakan perusahaan IT asal Singapore yang mengembangkan berbagai website maupun aplikasi mobile',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FadeTransition(
                  opacity: _animation,
                  child: Card(
                    color: Colors.white.withOpacity(0.8),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Profil Developer',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Muhammad Pilar Abudzar Al Ghifari merupakan salah satu developer dari PCode Dev, sekarang sedang menuntut ilmu di Sekolah Menengah Kejururan (SMK) Assalaam Bandung.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FadeTransition(
                  opacity: _animation,
                  child: Card(
                    color: Colors.white.withOpacity(0.8),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Layanan',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Anda bisa menghubungi via instagram @flames.dart',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.8,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                FadeTransition(
                  opacity: _animation,
                  child: Card(
                    color: Colors.white.withOpacity(0.8),
                    margin: EdgeInsets.symmetric(vertical: 10.0),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        children: [
                          Text(
                            'Contact',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10.0),
                          Text(
                            'Email: pilarmuhammad215@gmail.com\nPhone: +123 456 7890\nAddress: Kyoto City, Japan',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40.0),
                FadeTransition(
                  opacity: _animation,
                  child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.white,
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.symmetric(vertical: 16.0),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text('Back'),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
