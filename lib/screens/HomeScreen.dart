import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/dummies.dart';
import 'package:flutter_portfolio/widget/mobile_app_view.dart';
import 'package:flutter_portfolio/widget/web_app_view.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({super.key});

  @override
  Widget build(BuildContext context) {

    var mobileAppProjects = getDummyProjects.where((project)=>project.type == 'mobileapp').toList();
    var webAppProjects = getDummyProjects.where((project)=>project.type == 'webapp').toList();

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
                itemCount: getDummyWorks.length,
               itemBuilder: (context, index) {
                  var company = getDummyCompanies.firstWhere((company)=> company.id == getDummyWorks[index].id);
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text
                        (getDummyWorks[index].year,
                    
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.circular(80.0),
                          child: Image.asset(
                            company.logoUrl, // Replace with your local image path
                            height: 240,
                            width: 240,
                          ),
                        ),
                        Text(company.name)
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
                  var company = getDummyCompanies.firstWhere((company)=>company.id == mobileAppProjects[index].companyId);
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text
                        (mobileAppProjects[index].name,
                    
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),
                       
              SizedBox(height: 20),
              MobileAppView(project: getDummyProjects.firstWhere((project) => project.type == 'mobileapp')),
              SizedBox(height: 20),
                        Text(company.name)
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
                  var company = getDummyCompanies.firstWhere((company)=>company.id == webAppProjects[index].companyId);
                  return Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text
                        (webAppProjects[index].name,
                    
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                        ),

              SizedBox(height: 20),
              WebAppView(project: getDummyProjects.firstWhere((project) => project.type == 'webapp'),),
              SizedBox(height: 20),
                        Text(company.name)
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