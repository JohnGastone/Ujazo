// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:dashboard/screens/kazi_mpya.dart';
import 'package:flutter/material.dart';

import 'components/side_menu.dart';

class Ripoti extends StatelessWidget {
  const Ripoti({super.key});

  Widget buildQuoteCard() => Card(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Text(
              'Karibu katika ukurasa wa kuangalia na kutengeneza ripoti ya kazi zilizofanyika.',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              '@sonaktz',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            )
          ]),
        ),
      );

  Widget buildRoundeCard() => Card(
        color: Colors.white38,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Colors.black87,
        elevation: 10,
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Text(
              'Ripoti Ya Wiki.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Vinywaji Vilivyojazwa.',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
            )
          ]),
        ),
      );

  Widget buildColorCard(context) => Card(
        color: Colors.white38,
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Color.fromARGB(221, 139, 124, 124),
        elevation: 15,
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 238, 227, 237),
              Color.fromARGB(255, 173, 118, 114)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          padding: const EdgeInsets.all(12.0),
          child: Column(children: [
            Text(
              'Ripoti ya siku.',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 12,
            ),
            Text(
              'Vinywaji Vilivyojazwa.',
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
            ),
            Ink.image(
              image: AssetImage('./images/waterdrop.png'),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const KaziMpya()));
                },
              ),
              height: 50,
              fit: BoxFit.cover,
            ),
          ]),
        ),
      );

  Widget buildImageCard(context) => Card(
        color: Color.fromARGB(255, 146, 133, 133),
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        shadowColor: Color.fromARGB(254, 253, 149, 149),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Ink.image(
              image: AssetImage('./images/waterdrop.png'),
              child: InkWell(
                onTap: () {
                  Navigator.pop(context);
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const KaziMpya()));
                },
              ),
              height: 100,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'SONAK Ltd',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w900,
                    color: Color.fromARGB(153, 252, 246, 246)),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 238, 227, 237),
                  Color.fromARGB(255, 173, 118, 114)
                ],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              )),
              padding: const EdgeInsets.all(12.0),
              child: Column(children: [
                Text(
                  'Ripoti ya siku',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  'Vinywaji Vilivyojazwa.',
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.normal),
                )
              ]),
            ),
          ],
        ),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SideMenu(),
      appBar: AppBar(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15))),
        title: const Text(
          'Ripoti',
          style: TextStyle(color: Colors.black38),
        ),
        backgroundColor: Color.fromARGB(255, 211, 201, 201),
      ),
      body: ListView(
        children: [
          buildQuoteCard(),
          SizedBox(
            height: 20,
          ),
          buildRoundeCard(),
          SizedBox(
            height: 20,
          ),
          buildColorCard(context),
          SizedBox(
            height: 20,
          ),
          buildImageCard(context)
        ],
      ),
    );
  }
}

// 55 Expert Tips To Pass The Interview For The Tanzanian Public Service Recruitment Secretariat 2023
// Are you looking for Tanzania Public Service Recruitment Secretariat Interview Tips, How to Pass the Tanzania Public Service Recruitment Secretariat Interview, Tanzania Public Service Recruitment, how to express your experience, ajira 2023

// The Public Service Recruitment Secretariat (PSRS) is the government body responsible for overseeing the civil service in Tanzania. The PSS sets and monitors standards for recruitment, training, and performance management of civil servants. 

// The PSRS is also responsible for recommending candidates for appointment to the President. 

// If you are interested in working for the PSRS, you will need to pass a rigorous interview process. In this article, we will share with you 55 expert tips to passing the interview for the PSRS.

// The following tips are from the topmost performing individuals who scored the highest in the interview for the Tanzanian Public Service Recruitment Secretariat in 2023. Although the tips may not be exhaustive, they will give you an insight on what is expected of you and how you can make an impact during your interview.

// Do your research: Before you even step foot in the door, it is important that you do your research on the PSRS. This will give you a better understanding of the organization, its values, and the types of questions that you may be asked during the interview. 

// It is always important to do your research before making any decisions, especially when it comes to something as important as your career. When you're looking for a job, it's important to research the organization you're applying to so that you can be sure it's a good fit for you. Organizations are like people - they all have their own unique cultures and values. By doing your research, you can learn about an organization's culture and values and decide if they align with your own. This will help you determine if the organization is a good fit for you and increase your chances of landing the job.

// So what should you research before applying for a job? Here are a few things to keep in mind:

// Read also-:
// 55 Expert Tips To Pass The Interview For The Tanzanian Public Service Recruitment Secretariat 2023
// The 20 Best Paying Jobs in Tanzania That Will Make You Rich in 2023
// The Ministry Of Health Zanzibar Has Over 100 Job Openings: Apply Now!
// -The organization's history and how it has evolved over time

// -The organization's mission, vision, and values

// How to Ace any Written Interview: 10 Essential Tips
// The Tanzanian Public Service Recruitment Secretariat (PSRS) is the body responsible for the recruitment of public servants in Tanzania. The PSRS recruits staff for all government ministries, departments, and agencies.

// The PSRS uses a written interview to select candidates for public service positions. This interview is conducted in writing and is usually the second stage of the recruitment process (after the initial screening). Candidates who are invited to participate in the written interview must complete it within a specified period of time. Usually, candidates are given one to two hours to complete the written interview.

// To ace the PSRS written interview, candidates must be prepared to answer questions on a wide range of topics. To help you prepare, we've put together a list of 10 essential tips:

// Familiarize yourself with the PSRS written interview format.
// Make sure you understand each question before you answer it.
// Give yourself enough time to answer each question properly. 
// Present your answers in a clear, structured, and organized way that is easy for the interviewer to understand.
// Show the interviewer that you are familiar with Tanzanian public sector policies and regulations.
// Demonstrate that you have the skills and experience necessary for the position.
// Highlight any relevant qualifications or achievements you may have.
// Offer additional evidence that can support your answers.
// Show that you can think critically and analytically. 
// Aim to demonstrate your enthusiasm, commitment, and dedication.
// How To Prepare For Any Tanzanian Public Service Recruitment Secretariat Written Interview
// If you are planning to take the written interview for the Tanzanian Public Service Recruitment Secretariat, it is important to be prepared. Here are a few tips to help you ace the interview:

// Know the job requirements: When you are preparing for your interview, make sure that you are very clear on the job requirements. What are the essential functions of the job? What qualities are required in order to be successful in this role? In Tanzania, the Public Service Recruitment Secretariat (PSRS) is responsible for all aspects of the recruitment process for public sector employees. This includes issuing job advertisements, conducting written interviews, and managing the selection process. The PSRS Written Interview is a critical stage of the recruitment process, and it is important that all applicants know the job requirements before they apply. This will ensure that they are familiar with the duties and expectations of the role, and it will also help them to prepare for the interview itself. The PSRS Written Interview is conducted in order to assess an applicant's suitability for the role.

// Read class notes while preparing for  Interview: To answer this question, we must first understand what is being asked. The Tanzanian government is seeking to improve its public service recruitment process, and one way it is doing so is by introducing a written interview component. In order to be successful in this written interview, applicants must be able to understand and respond to the questions asked.

// Class notes related to the job requirements are necessary for two reasons. First, they provide applicants with a deeper understanding of the material covered in the written interview. Second, they help applicants to prepare more effectively for the written interview by providing them with specific and relevant information. Thus, it is clear that class notes related to the job requirements are essential for any applicant hoping to succeed in the Tanzanian public service recruitment process.

// Provide brief, clear, and concise answers: It is essential to provide brief, clear, and concise answers to questions during the Tanzania Public Service Recruitment Secretariat Written Interview for the following reasons:

// -To ensure that the question is answered fully and accurately.

// -To avoid giving too much information which could overwhelm the interviewer or lead to irrelevant tangents.

// -To stay within the allotted time for each question.

// Visit the Tanzanian Public Service Recruitment Secretariat website: It is necessary to visit the Tanzanian Public Service Recruitment Secretariat website (ajira.go.tz) after a Written Interview to check results for the following reasons:

// -To ensure that the Interview process was conducted fairly and transparently, in accordance with the Public Service Recruitment Policy.

// -To check that the correct procedure was followed and that all eligible candidates were given an opportunity to participate in the Interview.

// -To see the names of the candidates who have been shortlisted for oral interview.

// - To find out the date, time and venue of the next stage of the selection process, if applicable.

// - To check if there are any appeals or reviews lodged against the results of the Written Interview.

// How To Prepare For Any Tanzanian Public Service Recruitment Secretariat Oral Interview
// The oral interview is a very important step in the Tanzanian Public Service Recruitment Secretariat (PSRS) process. This is your opportunity to make a good impression on the panel and to demonstrate your suitability for the role you have applied for. Here are some tips on how to prepare for your oral interview:

// Make sure you are familiar with the job description and person specification for the role you have applied for. You will be asked questions about your skills, experience and knowledge in relation to the role.
// Research the Tanzanian Public Service Recruitment Secretariat. familiarise yourself with our organizational structure, values and objectives. This will help you to answer any questions about why you want to work for us.
// Be prepared to discuss your motivation for applying for the role. The panel will be looking for evidence that your commitment to the role and our organization is genuine.
// Think about questions you could be asked, such as: ‘what makes you the best candidate for this job?’. Prepare some answers in advance and make sure you use this opportunity to demonstrate your suitability for the role.
// Dress smartly and be aware of your body language. Make sure that you remain positive and friendly throughout the interview.
//  Research other aspects of Tanzania and the Public Service. Read through our website and news articles about developments in the sector. This is an opportunity to demonstrate your knowledge about the sector and to show an enthusiasm for the role.
// Relax and be mindful of your time management. Take your time to answer the questions and don’t be afraid to take a few moments to compose your thoughts.
// When you reach the oral interview stage, be prepared with the following:

// 1. If your role involves work that will often take place in the field, dress appropriately. You don't need to wear a suit, but looking smart and presentable is always a good idea. And if you're applying for a role that requires safety gear, make sure you have the proper footwear.

// 2. Know alternative ways or devices to do your work in case the ones you studied in college are unavailable. For example, if the equipment is faulty. What other methods can you use so that your boss can get what he needs from you? It's always good to have more than one option.

// 3. When you explain something, use your hands to gesture. If it's a question that requires you to explain something that exists in phases, then rotate your hands in a cyclical way. You can watch YouTube videos that explain effective body language.

// 4. Never answer in Kiswahili.

// 5. Make sure that you have a clear and concise answer for any questions that arise during the interview. If they ask you to explain your educational background, for example, be sure to include all relevant job experience and how you excelled in those positions.

// 6. Don't laugh too much with the interviewer. They may ask you to smile at the beginning of the interview, but after that, just focus on giving the best answers possible.

// 7. If they want you to keep mentioning more points, you can tell them that those are the ones you remember, but be sure to mention the main points first. If there are five points, mention all of them, but if they want you to keep going, just smile and say "sir that is all what I remember."

// 8. Rely on the following questions: education background, hazards that may occur in your work, the equipment you use at work, plan B in case the equipment is bad, your application to the position.

// Tanzania Public Service Recruitment Secretariat Interview Tips: How To Express Your Experience
// If you're a former employee and the job you're applying for prefers candidates with experience, this is the option for you. You can briefly mention your education here - for example, I have a degree in XYZ. Mentioning your degree will put you lower on the list than someone with experience, but if you have experience, be sure to mention any achievements or successes you had in your previous roles. Remember that they already know the basics about you from your application, so there's no need to go into too much detail.

// Even if you're a recent graduate without any experience, you can still make a great impression by highlighting your degree and any relevant projects or research you've done. Don't be afraid to show off your skills and tap into your potential. Remember to stay confident and focused throughout the entire process. Thanks for everything!

// Point to Note: The Tanzania PSRS interview tips are organized into sections:

// Appearance: First impressions matter, and that includes your physical appearance. Make sure you dress appropriately for the job you're applying for. If you're not sure what the dress code is, err on the side of professional.

// Mindset: It's important to go into the interview with the right mindset. Remember, the interviewer is trying to get to know you and see if you're a good fit for the job. So be yourself and don't try to be someone you're not.

// Research: Before the interview, it's important to do your research. This means researching the company, the position you're applying for, and the person who will be interviewing you.

// Preparation: In addition to researching the company and the position, it's also important to prepare for the interview. Make a list of potential questions you may be asked and come up with answers. You should also prepare a few questions of your own to ask the interviewer.