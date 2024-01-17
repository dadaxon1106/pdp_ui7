import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.maxFinite,
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/im_party.jpeg"),
              fit: BoxFit.cover),
        ),
        child: Container(
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(.6),
                Colors.black.withOpacity(.5),
                Colors.black.withOpacity(.4),
                Colors.black.withOpacity(.1),
              ],
              begin: Alignment.topCenter,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("Find the best parties near you",style: Theme.of(context).textTheme.displaySmall!.copyWith(color: Colors.white,fontWeight: FontWeight.bold),
              ),
                const  SizedBox(height: 20),
              Text("Let us find you a party for your\ninterest",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white,fontWeight: FontWeight.w300),),
            const  SizedBox(height: 150),
              _isLogin ?
              Container(
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.yellow.shade900,
                ),
                child: Center(
                  child: Text("Start",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),),
                ),
              ) : Container(
                height: 54,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.red,
                ),
                child: Center(
                  child: Text("Google+",style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Colors.white),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
