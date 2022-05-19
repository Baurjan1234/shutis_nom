import 'package:coolicons/coolicons.dart';
import 'package:flutter/material.dart';
import 'package:shutis_nom/details/details_screen.dart';
import 'package:shutis_nom/page/login_page.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool switchValue = true;
  final String descPrivacy =
      "Энэ хуудсыг хэн нэгэн манай үйлчилгээг ашиглахаар шийдсэн бол хувийн мэдээллийг цуглуулах, ашиглах, задруулахтай холбоотой манай бодлогын талаар зочдод мэдээлэх зорилгоор ашигладаг. Хэрэв та манай үйлчилгээг ашиглахаар шийдсэн бол энэхүү бодлоготой холбоотой мэдээллийг цуглуулах, ашиглахыг зөвшөөрч байна. Бидний цуглуулсан хувийн мэдээллийг үйлчилгээ үзүүлэх, сайжруулахад ашигладаг. Энэхүү Нууцлалын бодлогод зааснаас бусад тохиолдолд бид таны мэдээллийг ашиглахгүй, хэнтэй ч хуваалцахгүй. Мэдээлэл цуглуулах, ашиглах Манай үйлчилгээг ашиглахдаа илүү сайн туршлага хуримтлуулахын тулд бид таныг тодорхой хувийн мэдээллийг өгөхийг шаардаж болно. Бидний хүссэн мэдээллийг бид хадгалах бөгөөд энэхүү нууцлалын бодлогод заасны дагуу ашиглах болно. Энэхүү програм нь таныг танихад ашигласан мэдээллийг цуглуулж болох гуравдагч талын үйлчилгээг ашигладаг. Аппликешн ашигладаг гуравдагч талын үйлчилгээ үзүүлэгчдийн нууцлалын бодлогын холбоос Бүртгэлийн өгөгдөл Таныг манай Үйлчилгээг ашиглах бүрд апп-д алдаа гарсан тохиолдолд бид таны утсан дээрх Log Data нэртэй өгөгдөл, мэдээллийг (гуравдагч талын бүтээгдэхүүнээр дамжуулан) цуглуулдаг болохыг мэдэгдье. Энэхүү бүртгэлийн өгөгдөлд таны төхөөрөмжийн Интернэт протокол (“IP”) хаяг, төхөөрөмжийн нэр, үйлдлийн системийн хувилбар, манай Үйлчилгээг ашиглах үеийн програмын тохиргоо, Үйлчилгээг ашигласан цаг, огноо болон бусад статистик зэрэг мэдээллийг агуулж болно.";
  final String descConditions =
      'Аппликейшнийг татаж авах эсвэл ашигласнаар эдгээр нөхцөлүүд танд автоматаар үйлчлэх тул та програмыг ашиглахаасаа өмнө тэдгээрийг анхааралтай уншсан эсэхээ шалгаарай. Та апп, програмын аль нэг хэсэг эсвэл манай худалдааны тэмдгийг ямар нэгэн байдлаар хуулах, өөрчлөх эрхгүй. Та програмын эх кодыг задлахыг оролдох эрхгүй бөгөөд мөн програмыг бусад хэл рүү орчуулах, үүсмэл хувилбар гаргахыг оролдох ёсгүй. Апп нь өөрөө болон үүнтэй холбоотой бүх худалдааны тэмдэг, зохиогчийн эрх, мэдээллийн баазын эрх болон бусад оюуны өмчийн эрхүүд одоог хүртэл харьяалагддаг. Програмыг аль болох ашигтай, үр ашигтай байлгахыг эрмэлздэг. Ийм учраас бид ямар ч үед, ямар ч шалтгаанаар апп-д өөрчлөлт оруулах эрхтэй. Хэзээ нэгэн цагт бид програмыг шинэчлэхийг хүсч магадгүй юм. Уг програмыг одоогоор iOS дээр ашиглах боломжтой - системд тавигдах шаардлагууд (мөн бидний энэ програмыг ашиглах хугацааг сунгахаар шийдсэн аливаа нэмэлт системд) тавигдах шаардлага өөрчлөгдөж болох бөгөөд хэрэв та уг програмыг үргэлжлүүлэн ашиглахыг хүсвэл шинэчлэлтүүдийг татаж авах шаардлагатай болно. Энэ нь танд хамааралтай бөгөөд / эсвэл таны төхөөрөмж дээр суулгасан iOS хувилбартай ажиллахын тулд програмыг байнга шинэчилж байх болно гэж амладаггүй. Гэсэн хэдий ч, танд санал болгох үед та програмын шинэчлэлтийг үргэлж хүлээн авахаа амлаж байна. Мөн бид уг аппликейшнийг өгөхийг зогсоохыг хүсч магадгүй бөгөөд цуцлах тухай мэдэгдэлгүйгээр хүссэн үедээ ашиглахыг зогсоож болно. Хэрэв бид танд өөрөөр хэлээгүй бол аливаа цуцлалтаар (a) эдгээр нөхцлөөр танд олгосон эрх, лицензүүд дуусгавар болно; (б) та програмыг ашиглахаа больж, (шаардлагатай бол) төхөөрөмжөөсөө устгах ёстой. Энэхүү Нөхцөлийн өөрчлөлт Бид нөхцөл, болзлоо үе үе шинэчилж болно. Тиймээс та энэ хуудсыг үе үе хянаж, өөрчлөлт оруулахыг зөвлөж байна. Бид энэ хуудсан дээр шинэ нөхцөл, болзлыг нийтлэснээр аливаа өөрчлөлтийн талаар танд мэдэгдэх болно. Эдгээр өөрчлөлтүүд нь энэ хуудсанд тавигдсан даруйдаа хүчин төгөлдөр болно.';

  final textStyle = const TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Тохиргоо",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SafeArea(
          child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Мэдэгдэл", style: textStyle),
                      Switch(
                          value: switchValue,
                          onChanged: (onChanged) {
                            setState(() {
                              switchValue = onChanged;
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => DetailsScreen(
                        title: "Нууцлалын бодлого", description: descPrivacy)),
                  ),
                );
              },
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Нууцлалын бодлого",
                        style: textStyle,
                      ),
                      const Icon(Coolicons.chevron_big_right)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => DetailsScreen(
                        title: "Ашиглах нөхцөл", description: descConditions)),
                  ),
                );
              },
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Ашиглах нөхцөл",
                        style: textStyle,
                      ),
                      const Icon(Coolicons.chevron_big_right)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Нууц үг солих",
                        style: textStyle,
                      ),
                      const Icon(Coolicons.chevron_big_right)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Түгээмэл асуулт",
                        style: textStyle,
                      ),
                      const Icon(Coolicons.chevron_big_right)
                    ],
                  ),
                ),
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Үнэлгээ өгөх && Шүүмж өгөх ",
                        style: textStyle,
                      ),
                      const Icon(Coolicons.chevron_big_right)
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: const Text('Гарах'),
                          content: const Text('Та гарахдаа итгэлтэй байна уу?'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text("Үгүй"),
                            ),
                            TextButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const LoginPage(),
                                  ),
                                );
                              },
                              child: const Text("Тийм"),
                            ),
                          ],
                        ));
              },
              child: Card(
                elevation: 3,
                margin: const EdgeInsets.all(5),
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Гарах",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            color: Colors.red),
                      ),
                      Icon(Coolicons.chevron_big_right)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
