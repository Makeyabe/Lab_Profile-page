import 'package:flutter/material.dart';
import 'package:lab1/DetailPage.dart';
import 'package:lab1/student.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 54, 228, 244)),
        useMaterial3: true,
      ),
      home: const MyAppPage(),
    );
  }
}

class MyAppPage extends StatelessWidget {
  const MyAppPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Student> datas = [
      Student(
        name: "อรัญ ศรีสวัสดิ์",
        studentid: "643450095-5",
        image: "image/Arun.jpg",
        email: "arun.s@kkumail.com",
        dateOfBirth: "2 FED 2003",
        phoneNumber: "0951677390",
        aboutMe: "I like yumyum",
        socialMediaLink: "Facebook",
      ),
      Student(
        name: "กฤติยา สินโพธิ์",
        studentid: "643450320-4",
        image: "image/B1.jpg",
        email: "กฤติยา@gmail.com",
        dateOfBirth: "- - -",
        phoneNumber: "0xxxxxxxxx",
        aboutMe: "I love sing",
        socialMediaLink: "Facebook",
      ),
      Student(
        name: "ปรเมศวร์ สิทธิมงคล",
        studentid: "643450078-5",
        image: "image/Parames.jpg",
        email: "poramet.si@kkumail.com",
        dateOfBirth: "25 Dec 2002",
        phoneNumber: "0933207549",
        aboutMe: "I am Yesman141",
        socialMediaLink: "Facebook",
      ),
      Student(
        name: "พรธิตา ขานพล",
        studentid: "643450080-8",
        image: "image/B5.jpg",
        email: "pornthita.h@kkumail.com",
        dateOfBirth: "12 Sept 2002",
        phoneNumber: "0611568635",
        aboutMe: "student_KKU",
        socialMediaLink: "Facebook",
      ),
      Student(
        name: "อมรรัตน์ มาระเหว",
        studentid: "643450094-7",
        image: "image/B2.jpg",
        email: "อมรรัตน์@gmail.com",
        dateOfBirth: "- - -",
        phoneNumber: "0xxxxxxxxx",
        aboutMe: "i like cafe",
        socialMediaLink: "Facebook",
      ),
      Student(
        name: "ณัฐธิดา บุญพา",
        studentid: "643450647-2",
        image: "image/B4.jpg",
        email: "natthida.b@kkumail.com",
        dateOfBirth: "27 March 2002",
        phoneNumber: "0xxxxxxxx",
        aboutMe: "I like to listen to music",
        socialMediaLink: "Facebook",
      ),
      Student(
        name: "ทัศนีย์ มลาตรี",
        studentid: "643450075-1",
        image: "image/B3.jpg",
        email: "ทัศนีย์@gmail.com",
        dateOfBirth: "- - -",
        phoneNumber: "0xxxxxxxx",
        aboutMe: "I love sing",
        socialMediaLink: "Facebook",
      ),
      Student(
        name: "รัตพงษ์ ปานเจริญ",
        studentid: "643450650-3",
        image: "image/Ratpong.jpg",
        email: "rattapong.p@kkumail.com",
        dateOfBirth: "17 Nov 2002",
        phoneNumber: "0641034071",
        aboutMe: "i like play valorant",
        socialMediaLink: "Facebook",
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("My App"),
      ),
      body: ListView.builder(
        itemCount: datas.length,
        itemBuilder: (context, index) {
          return displayItem(context: context, student: datas[index]);
        },
      ),
    );
  }

  Widget displayItem(
      {required BuildContext context, required Student student}) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(
              data: student,
            ),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          children: [
            Hero(
              tag: "image_profile_${student.name}",
              child: Image(
                width: 100,
                height: 100,
                fit: BoxFit.cover,
                image: AssetImage(student.image),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    student.name,
                    style: const TextStyle(fontSize: 20),
                  ),
                  Text(
                    student.studentid,
                    style: const TextStyle(fontSize: 12),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
