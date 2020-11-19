import 'package:flutter/material.dart';
import 'package:webtest/styletext/styletext.dart';

double highte;
double withe;

class Foter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    highte = MediaQuery.of(context).size.height;
    withe = MediaQuery.of(context).size.width;
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopFoter();
      } else {
        if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopFoter();
        } else {
          // return MobielHeader();
        }
      }
    });
  }
}

class DesktopFoter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 300,right: 100),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://www.naturalreaders.com/logo.svg'),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Product',
                    style: Stylettext.h16Bolode,
                  ),
                  SizedBox(height: 50,),
                  Text(
                    'Onliner',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Softwor',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Commarcial',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'WebReader',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'EDU',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Chrome Extention',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About US',
                    style: Stylettext.h16Bolode,
                  ),
                  SizedBox(height: 50,),
                  Text(
                    'Testimonials',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'FAQ',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'About US',
                    style: Stylettext.h16,
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Policies',
                    style: Stylettext.h16Bolode,
                  ),
                  SizedBox(height: 50,),
                  Text(
                    'Refund',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'Privacy & Terms',
                    style: Stylettext.h16,
                  ),
                  SizedBox(height: 30,),
                  Text(
                    'User Agreement',
                    style: Stylettext.h16,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}