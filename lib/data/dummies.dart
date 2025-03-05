import 'package:flutter_portfolio/data/company.dart';
import 'package:flutter_portfolio/data/education.dart';
import 'package:flutter_portfolio/data/project.dart';
import 'package:flutter_portfolio/data/work.dart';

 final List<Company> getDummyCompanies = [
      Company(id: 1, name: "PT Ruang Raya Indonesia (Ruangguru)", logoUrl: 'assets/images/ic_logo_ruangguru.png', details: 'Edu tech'),
      Company(id: 2, name: "PT Indopasifik Teknologi Medika Indonesia (itmi.id)", logoUrl: 'assets/images/ic_logo_itmi.png', details: 'Health tech'),
      Company(id: 3, name: "PT Jejaring Hijau Indonesia (Kecipir.id)", logoUrl: 'assets/images/ic_logo_kecipir.png', details: 'Farm tech'),
      Company(id: 4, name: "PT Kode Aplikasi Indonesia (Nusantara Beta Studio - NBS)", logoUrl: 'assets/images/ic_logo_nbs.jpeg', details: 'IT consultant'),
    ];

 final List<Work> getDummyWorks = [
     Work(
      id: 1,
        position: "Software Engineer (Web and Mobile Frontend)",
        companyId: 1,
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
      id: 2,
        position: "Android Engineer",
        companyId: 2,
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
      id: 3,
        position: "Android Engineer",
        companyId: 3,
        year: "July 2020 - March 2021",
        details: [
          "Contributed to the development of a sustainable agriculture mobile application, promoting eco-friendly practices and user engagement.",
            "Developed features for the application, including user authentication and data visualization components." ,
                       "Implemented push notifications to keep users informed about updates and events." ,
        ]
     ),
      Work(
      id: 4,
        position: "Android Engineer",
        companyId: 4,
        year: "July 2018 - July 2020",
        details:[
          "Developed and maintained various features for Android applications, ensuring optimal performance and user satisfaction.", 
          "Collaborated with cross-functional teams to define, design, and ship new features.", 
          "Troubleshot and resolved issues reported by users, improving overall application reliability."
        ]
     ),
    ];


 final List<Education> getDummyEducations = [
     Education(
        position: "Bachelor of Computer Science",
        university: "Universitas Pembangunan Nasional Veteran Jakarta",
        year: "2015 - 2019",
        details: "GPA: 3.88/4.00. Valedictorian and Best Graduate at UPN Veteran Jakarta 63rd Graduation"
     ),
     Education(
        position: "Vice Chairman",
        university: "KSM Android - UPN Veteran Jakarta",
        year: "2017 - 2018",
        details: "Winner Of Mobile Application Competition at Techomfest 2018 by Politeknik Negeri Semarang"
     ),
     Education(
        position: "Head of Human Resource Department",
        university: "BEM Fakultas Ilmu Komputer - UPN Veteran Jakarta",
        year: "2016 - 2017",
        details: "Intiate new activities for new students to enhance student engagement and facilitate their integration into campus life."
     )
    ];

  final List<Project> getDummyProjects = [
    Project(
      name: "Saas-Omnichannel", 
       responsiblities: ["Developed a scalable omnichannel platform for businesses", "Implemented user authentication and authorization features", "Integrated third-party APIs for enhanced functionality"],
       imageAppUrls: [
         'assets/images/ic_webapp_saas_1.png',
          'assets/images/ic_webapp_saas_2.png',
          'assets/images/ic_webapp_saas_3.png'
       ], 
       linkAppUrl: "https://example.com/project1",
       companyId: 1,
       type: "webapp" ),
         Project(
      name: "Payment Rewrite", 
       responsiblities: ["Developed a scalable omnichannel platform for businesses", "Implemented user authentication and authorization features", "Integrated third-party APIs for enhanced functionality"],
       imageAppUrls: [
         'assets/images/ic_webapp_payment_1.png',
          'assets/images/ic_webapp_payment_2.png',
          'assets/images/ic_webapp_payment_3.png'
       ],
       linkAppUrl: "https://example.com/project1",
       companyId: 2,
       type: "webapp"  ),
         Project(
      name: "Chathub Wapers", 
       responsiblities: ["Developed a scalable omnichannel platform for businesses", "Implemented user authentication and authorization features", "Integrated third-party APIs for enhanced functionality"],
       imageAppUrls: [
          'assets/images/ic_mobileapp_wapers_1.jpg',
          'assets/images/ic_mobileapp_wapers_2.jpg',
          'assets/images/ic_mobileapp_wapers_3.jpg'
        ],
       linkAppUrl: "https://example.com/project1",
       companyId: 3,
       type: "mobileapp"  ),
         Project(
      name: "Heroes Academy", 
       responsiblities: ["Developed a scalable omnichannel platform for businesses", "Implemented user authentication and authorization features", "Integrated third-party APIs for enhanced functionality"],
       imageAppUrls: [
          'assets/images/ic_mobileapp_heroesacademy_1.jpg',
          'assets/images/ic_mobileapp_heroesacademy_2.jpg',
          'assets/images/ic_mobileapp_heroesacademy_3.jpg'
        ],
       linkAppUrl: "https://example.com/project1",
       companyId: 4,
       type: "mobileapp" ),
          Project(
      name: "Heroes Academy", 
       responsiblities: ["Developed a scalable omnichannel platform for businesses", "Implemented user authentication and authorization features", "Integrated third-party APIs for enhanced functionality"],
       imageAppUrls:  [
          'assets/images/ic_mobileapp_leeg_1.png',
          'assets/images/ic_mobileapp_leeg_2.png',
          'assets/images/ic_mobileapp_leeg_3.png'
        ],
       linkAppUrl: "https://example.com/project1",
       companyId: 1,
       type: "mobileapp" ),
  ];