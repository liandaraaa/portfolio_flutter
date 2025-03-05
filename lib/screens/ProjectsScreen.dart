
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/data/dummies.dart';
import 'package:flutter_portfolio/data/project.dart';
import 'package:flutter_portfolio/data/work.dart';
import 'package:flutter_portfolio/widget/mobile_app_view.dart';
import 'package:flutter_portfolio/widget/web_app_view.dart';

class ProjectsScreen extends StatefulWidget {

  ProjectsScreen({super.key});

  @override
  _ProjectsScreenState createState() => _ProjectsScreenState();
}

class _ProjectsScreenState extends State<ProjectsScreen> {

  Work? selectedWork;

  @override
  void initState() {
    super.initState();
    selectedWork = getDummyWorks[0];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Select Work Company", style: TextStyle(fontWeight: FontWeight.bold)),
                    ...getDummyCompanies.map((company) => ListTile(
                          title: Text(company.name, style: TextStyle(fontWeight: FontWeight.w500)),
                          onTap: () {
                            setState(() {
                              selectedWork = getDummyWorks.firstWhere((work)=>work.companyId == company.id);
                            });
                          },
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(width: 16),
            Expanded(
              flex: 2,
              child:
            SingleChildScrollView(
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: selectedWork == null
                    ? Center(child: Text("Select a company to see details"))
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Role: ${selectedWork?.position}", style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 8),
                          Text("As a software developer responsible for designing, developing, and maintaining software applications. Collaborated with cross-functional teams to deliver high-quality software solutions. Implemented features using modern frameworks and conducted code reviews to ensure best practices. Participated in agile development processes and contributed to sprint planning and retrospectives. Gained experience in full-stack development and improved application performance through optimization techniques."),
                          SizedBox(height: 8),
                          ...getDummyProjects.where((project) => project.companyId == selectedWork?.id).toList().isNotEmpty
                            ? getDummyProjects.where((project) => project.companyId == selectedWork?.id).toList().map((project) => buildProjectItem(project)).toList()
                            : [Center(child: Text("No projects available for this company"))],
                        ],
                      ),
              ),
            )
            ),
          ],
        ),
      ),
    );
  }

  Widget buildProjectItem(Project project){

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(project.name, style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Text("Responsibilities", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        Column(
          children: project.responsiblities.map((responsible) => Text(responsible)).toList(),
        ),
        SizedBox(height: 4),
        Text("Screenshots App", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
        project.type == 'webapp'? WebAppView(project: project) : MobileAppView(project: project),
        SizedBox(height: 4),
        Text("Link App : ${project.linkAppUrl}", style: TextStyle(fontWeight: FontWeight.bold)),
        SizedBox(height: 4),
      ]
    );
  }

}