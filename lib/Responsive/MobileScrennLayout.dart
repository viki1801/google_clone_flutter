import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_clone/colors.dart';
import 'package:google_clone/widget/mobile/mobile_footer.dart';
import 'package:google_clone/widget/search.dart';

class mobileScreenLayout extends StatelessWidget {
  const mobileScreenLayout({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          leading: IconButton(onPressed: (){},
              icon: Icon(Icons.menu,
              color: Colors.grey,
              )),
          
          title: SizedBox(width: size.width*0.34,
            child: const DefaultTabController(length: 2,
                child: TabBar(
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                  indicatorColor: Colors.blue,
                  tabs:[
                    Tab(text: 'ALL',),
                    Tab(text: 'IMAGES',),
                  ]
                )
            ),
          ),
          elevation: 0,
          actions: [
            IconButton(onPressed: (){},
              icon: SvgPicture.asset('assets/images/more-apps.svg',
                color: primaryColor,),
            ),
            const SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10).copyWith(
                  right: 10
              ),
              child: MaterialButton(onPressed: (){},
                color: const Color(0xff1A73EB),
                child: const Text("Sign In",
                  style: TextStyle(
                      color: Colors.white
                  ),),),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5,right: 5),
          child: Column(
            children: [
              SizedBox(height: size.height *0.25 ,),
              const Expanded(
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Search(),
                          SizedBox(height: 20,),
                        ],
                      ),
                      MobileFooter(),
                    ],
                  ),
                ),
              )
            ],
          ),
        )
    );
  }
}
