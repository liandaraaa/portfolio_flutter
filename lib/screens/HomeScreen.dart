import 'package:flutter/material.dart';
import 'package:flutter_image_carousel_slider/image_carousel_slider.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {

    final List<Map<String, String>> companies = [
      {
        'year':'August 2021 - Present',
        'name': 'Ruangguru',
        'image': 'assets/images/ic_logo_ruangguru.png',
      },
      {
        'year':'March 2021 - August 2021',
        'name': 'Indopasifik Teknologi Medika Indonesia',
        'image': 'assets/images/ic_logo_itmi.png',
      },
      {
        'year':'July 2020 - March 2021',
        'name': 'Kecipir.id',
        'image': 'assets/images/ic_logo_kecipir.png',
      },  {
        'year':'July 2018 - July 2019',
        'name': 'Nusantara Beta Studio',
        'image': 'assets/images/ic_logo_nbs.jpeg',
      },
    ];

     final List<Map<String, dynamic>> mobileAppProjects = [
       {
        'name': 'Chathub-Wapers',
         'images': [
          'assets/images/ic_mobileapp_wapers_1.jpg',
          'assets/images/ic_mobileapp_wapers_2.jpg',
          'assets/images/ic_mobileapp_wapers_3.jpg'
        ],
        'company':'Ruangguru',
      },
        {
        'name': 'Ruangguru - Heroes Academy',
         'images': [
          'assets/images/ic_mobileapp_heroesacademy_1.jpg',
          'assets/images/ic_mobileapp_heroesacademy_2.jpg',
          'assets/images/ic_mobileapp_heroesacademy_3.jpg'
        ],
        'company':'Ruangguru',
      },
      {
        'name': 'Ruangguru - Learning Engagement',
      'images': [
          'assets/images/ic_mobileapp_leeg_1.png',
          'assets/images/ic_mobileapp_leeg_2.png',
          'assets/images/ic_mobileapp_leeg_3.png'
        ],
        'company':'Ruangguru',
      }
    ];


     final List<Map<String, dynamic>> webAppProjects = [
      {
        'name': 'Saas-Omnichannel',
        'images': [
          'assets/images/ic_webapp_saas_1.png',
          'assets/images/ic_webapp_saas_2.png',
          'assets/images/ic_webapp_saas_3.png'
        ],
        'company':'Ruangguru',
      },
       {
        'name': 'Ruangguru Payment',
        'images': [
          'assets/images/ic_webapp_payment_1.png',
          'assets/images/ic_webapp_payment_2.png',
          'assets/images/ic_webapp_payment_3.png'
        ],
        'company':'Ruangguru',
      },
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hi, Lianda Here !",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 50,
                child: Padding(
                  padding: EdgeInsets.all(4.0),
                  child: Text("A dedicated Mobile Engineer (Android) with extensive experience in software development more than 5 years. Skilled in breaking down business processes into technical solutions, collaborating with UI/UX designers, backend teams, and fellow developers to create seamless applications. Experienced in debugging, optimizing, and maintaining apps for enhanced performance"),
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Work Eperiences",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  crossAxisSpacing: 4,
                  mainAxisSpacing: 10,
                ),
                itemCount: companies.length,
               itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text
                        (companies[index]['year']!,
                    
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80.0),
                          child: Image.asset(
                            companies[index]['image']!, // Replace with your local image path
                            height: 240,
                            width: 240,
                          ),
                        ),
                        Text(companies[index]['name']!)
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              Text(
                "Powerfull Projects",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
               Center(
              child:   Text(
                "Mobile Applications",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
              SizedBox(height: 20),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  childAspectRatio: 0.8,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: mobileAppProjects.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text
                        (mobileAppProjects[index]['name']!,
                    
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                       
              SizedBox(height: 20),
            Center(
              child: Container(
                width: 250,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(30),
                  border: Border.all(color: Colors.white, width: 8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(22),
                  child: Container(
                    color: Colors.grey[900], // Simulating screen content
                    child: Center(
                      child:             // Background Image
            Positioned.fill(
              child:  ImageCarouselSlider(items: mobileAppProjects[index]['images']!,imageHeight: 470,),
            ),
                    ),
                  ),
                ),
              ),
            ),
              SizedBox(height: 20),
                        Text(mobileAppProjects[index]['company']!)
                      ],
                    ),
                  );
                },
              ),
              SizedBox(height: 80),
            Center(
              child:   Text(
                "Web Applications",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
            ),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.5,
                  crossAxisSpacing: 5,
                  mainAxisSpacing: 5,
                ),
                itemCount: webAppProjects.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text
                        (webAppProjects[index]['name']!,
                    
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),

              SizedBox(height: 20),
            Center(
              child: Container(
                width: 500,
                height: 300,
                decoration: BoxDecoration(
                  color: Colors.black,
                  border: Border.all(color: Colors.white, width: 5),
                  // borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black54,
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: Center(
                  child:  Positioned.fill(
              child: ImageCarouselSlider(items: webAppProjects[index]['images']!,imageHeight: 280),
            ),
                ),
              ),
            ),
                       
              SizedBox(height: 20),
                        Text(webAppProjects[index]['company']!)
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}