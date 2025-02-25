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

     final List<Map<String, dynamic>> projects = [
      {
        'name': 'Saas-Omnichannel',
        'images': [
          'assets/images/ic_logo_saas.png',
          'assets/images/ic_logo_chathubwapers.png',
          'assets/images/ic_logo_heroesacademy.jpg'
        ],
        'company':'August 2021 - Present',
      },
       {
        'name': 'Chathub-Wapers',
         'images': [
          'assets/images/ic_logo_saas.png',
          'assets/images/ic_logo_saas.png',
          'assets/images/ic_logo_saas.png'
        ],
        'company':'August 2021 - Present',
      },
       {
        'name': 'Ruangguru Rewrite',
        'images': [
          'assets/images/ic_logo_saas.png',
          'assets/images/ic_logo_saas.png',
          'assets/images/ic_logo_saas.png'
        ],
        'company':'August 2021 - Present',
      },
      {
        'name': 'Ruangguru Learning Engagement',
      'images': [
          'assets/images/ic_logo_saas.png',
          'assets/images/ic_logo_saas.png',
          'assets/images/ic_logo_saas.png'
        ],
        'company':'August 2021 - Present',
      }
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
              SizedBox(height: 10),
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 4,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: projects.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text
                        (projects[index]['name']!,
                    
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        ImageCarouselSlider(items: projects[index]['images']!),
                        Text(projects[index]['company']!)
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