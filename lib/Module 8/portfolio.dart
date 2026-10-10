import 'package:flutter/material.dart';

class Module8 extends StatelessWidget {
  const Module8({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text('Portfolio'),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              color: Colors.white,
              child: Padding(padding: EdgeInsets.all(20),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 55,
                      backgroundImage: NetworkImage('https://images.unsplash.com/photo-1438761681033-6461ffad8d80?fm=jpg&q=60&w=3000&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww'),
                    ),
                    SizedBox(height: 12,),
                    Text('Jhon doe',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
                    Text('Flutter Developer',style: TextStyle(color: Colors.grey),),
                    Text('Passionate about creating user-friendly and engaging digital experiences.',textAlign: TextAlign.center,),
                     Divider(height: 30,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                      Row(
                      children: [
                        Icon(Icons.email,size: 20,),
                        SizedBox(width: 7,),
                        Text('john.doe@example.com'),

                      ],
                      ),
                     SizedBox(height: 8,),
                Row(
                  children: [
                    Icon(Icons.phone,size: 20,),
                    SizedBox(width: 7,),
                    Text('+123 456 7890'),
                  ],
                ),
                      ],
                    ),
               SizedBox(height: 18,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                    onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        )
                      ),
                      child: const Text('Follow'),
                    ),
                    SizedBox(width: 13,),
                    OutlinedButton(
                      onPressed: (){},
                        style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.black,
                          padding: EdgeInsets.symmetric(horizontal: 40),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                          ),
                        ),
                        child:Text('Message',),

                    ),
                  ],

                ),

            ],
            ),

        ),

      ),
            const SizedBox(height: 20),
            const Row(
              children: [
                Expanded(child: Divider()),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'Interests',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Expanded(child: Divider()),
              ],
            ),

            const SizedBox(height: 12),

            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Expanded(
                  child: InterestCard(
                    image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqjZAdD6rBFCTaDN1lv_lmk44JV6R4RNdQfphKuaeDsw&s=10',
                    title: 'Travel',
                    subtitle: 'Exploring new places around the world',
                  ),
                ),
                SizedBox(width: 12),
                Expanded(
                  child: InterestCard(
                    image:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJorIePPLuwlEjY3fQ6Ru9rVF8XN_S4JRW1xjL2CUgiw&s=10',
                    title: 'Photography',
                    subtitle: 'Capturing moments through the lens',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class InterestCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;

  const InterestCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                image,
                height: 90,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            const SizedBox(height: 8),

            Text(
              title,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 4),

            Text(
              subtitle,
              style: const TextStyle(
                fontSize: 11,
                color: Colors.grey,
              ),
            ),

            const SizedBox(height: 10),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade200,
                  foregroundColor: Colors.blue,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: const Text('View More'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}