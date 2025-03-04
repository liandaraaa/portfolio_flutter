
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/education.dart';
import 'package:flutter_portfolio/data/work.dart';
import 'package:flutter_portfolio/sections/EducationSection.dart';
import 'package:flutter_portfolio/sections/work_section.dart';
import 'package:flutter_portfolio/widget/StepperView.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileScreen extends StatelessWidget {

 final List<Work> works = [
     Work(
        position: "Software Engineer (Web and Mobile Frontend)",
        company: "PT Ruang Raya Indonesia (Ruangguru)",
        year: "August 2021 - present",
        details: [
          "Led the development of user-friendly web applications and collaborated with design teams to ensure a seamless user interface.",
          "Implemented responsive design principles to ensure compatibility across various devices and screen sizes.",
          "Conducted regular testing and debugging to ensure application stability and performance.",
          "Collaborated with cross-functional teams to deliver high-quality software solutions and meet project deadlines.",
          "Participated in agile development processes, contributing to sprint planning and retrospectives.",
          "Engaged in continuous learning and skill development to keep up with industry trends and technologies."
        ]
     ),
      Work(
        position: "Android Engineer",
        company: "PT Indopasifik Teknologi Medika Indonesia (itmi.id)",
        year: "March 2021 - August 2021",
        details: [
          "Contributed to the development of innovative mobile applications, enhancing user experience and functionality.",
          "Assisted in the integration of third-party libraries and APIs to enhance application functionality." ,
          "Participated in the full software development lifecycle, from requirements gathering to deployment and maintenance." ,
                     "Worked closely with the product team to define application requirements and specifications." ,
                     "Collaborated with the QA team to ensure high-quality standards and timely delivery of the application." ,
                              "Participated in code reviews and contributed to improving team coding standards." 
        ]
     ),
      Work(
        position: "Android Engineer",
        company: "PT Jejaring Hijau Indonesia (kecipir.id)",
        year: "July 2020 - March 2021",
        details: [
          "Contributed to the development of a sustainable agriculture mobile application, promoting eco-friendly practices and user engagement.",
            "Developed features for the application, including user authentication and data visualization components." ,
                       "Implemented push notifications to keep users informed about updates and events." ,
        ]
     ),
      Work(
        position: "Android Engineer",
        company: "PT Kode Aplikasi Indonesia (Nusantara Beta Studio - NBS)",
        year: "July 2018 - July 2020",
        details:[
          "Developed and maintained various features for Android applications, ensuring optimal performance and user satisfaction.", 
          "Collaborated with cross-functional teams to define, design, and ship new features.", 
          "Troubleshot and resolved issues reported by users, improving overall application reliability."
        ]
     ),
    ];


 final List<Education> educations = [
     Education(
        degree: "Bachelor of Science",
        university: "ABC University",
        year: "2018 - 2022",
        details: "GPA: 3.8/4.0, Dean's List, Research in AI"
     ),
    ];

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
               SizedBox(
                height: 250,
                width: 250,
                child:  CircleAvatar(
                  radius: 50,
                  backgroundColor: Colors.grey[300],
                 backgroundImage: AssetImage('assets/images/img_profile_picture_2.jpg'),
                ),
               ),
                SizedBox(width: 20),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Lianda Ramadhana",
                      style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),
                   Text(
                      "Software Engineer (Web and Mobile Frontend)",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color:Colors.indigoAccent),
                    ),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(24),
                          child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/ic_social_github.svg',width: 32, height: 32,),
                            SizedBox(height: 5,),
                            Text("liandaraaa",
                            style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(24),
                          child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/ic_social_email.svg',width: 32, height: 32,),
                            SizedBox(height: 5,),
                            Text("lianda.ramadhana31@gmail.com",
                            style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          padding: EdgeInsets.all(24),
                          child: Column(
                          children: [
                            SvgPicture.asset('assets/icons/ic_social_linkedin.svg',width: 32, height: 32,),
                            SizedBox(height: 5,),
                            Text("liandaramadhana",
                            style: TextStyle(fontSize: 12),)
                          ],
                        ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text("Address : ",
                        style: TextStyle(color: Colors.indigo),),
                        SizedBox(width: 5,),
                        Text("Jl. H Saleh Sain Blok A No 34, RT 02 RW 06, Pondok Rajeg, Cibinong, Bogor",
                        style: TextStyle(color: Colors.indigo),)
                      ],
                    )
                  ],
                ),
              ],
            ),
             SizedBox(height: 40),
            Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              padding: EdgeInsets.all(12),
              child: Center(
              child: Text("Work Experience", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
            ),
            ),
            WorkSection(works: works),
             SizedBox(height: 20),
              Container(
              decoration: BoxDecoration(color: Colors.blueAccent),
              padding: EdgeInsets.all(12),
              child: Center(
              child: Text("Education and Organization Experience", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),),
            ),
            ),
             StepperView(
              steps: [
              Step(title: Text("PT Ruang Raya Indonesia (Ruangguru)"), content: EducationSection(educations: educations)),
              Step(title: Text("PT Indopasifik Teknologi Medika Indonesia (Itmi.id)"), content: EducationSection(educations: educations)),
              Step(title: Text("PT Jejaring Hijau Indonesia (Kecipir)"), content: EducationSection(educations: educations)),
              Step(title: Text("PT Kode Aplikasi Indonesia (Nusantara Beta Studio - NBS)"), content: EducationSection(educations: educations))
            ],
            )
          ],
        ),
        )
      ),
    );
  }

  Widget _buildSection(String title, Widget child) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: TextStyle(fontSize: 18),),
          child
        ],
      ),
    );
  }
}