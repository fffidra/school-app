import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:uas/home.dart';
import 'package:uas/login.dart';

class Regist extends StatefulWidget {
  const Regist({super.key});

  @override
  State<Regist> createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  final namaController = TextEditingController();
  final kelasController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 8.0, left: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios),
                        color: Colors.black,
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                      ),
                    ],
                  ),
                ),
                Icon(
                  Icons.school,
                  size: 150,
                ),
                SizedBox(height: 25),
                Text(
                  "Buat Akun",
                  style: GoogleFonts.inter(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                Text(
                  "Isikan data diri Anda",
                  style: GoogleFonts.inter(fontSize: 18),
                ),
                SizedBox(height: 40),

// username name textfield
                // Padding(
                //     padding: const EdgeInsets.symmetric(horizontal: 25.0),
                //     child: Container(
                //       decoration: BoxDecoration(
                //           color: Colors.grey[300],
                //           border: Border.all(color: Colors.white),
                //           borderRadius: BorderRadius.circular(15)),
                //       child: Padding(
                //         padding: const EdgeInsets.only(left: 20),
                //         child: TextField(
                //           controller: namaController,
                //           style: GoogleFonts.inter(
                //             fontSize: 18,
                //             color: Color.fromARGB(255, 102, 108, 105),
                //           ),
                //           textInputAction: TextInputAction.next,
                //           decoration: InputDecoration(
                //               border: InputBorder.none, hintText: "Nama"),
                //         ),
                //       ),
                //     )
                //   ),
//                 SizedBox(height: 15),

// // username name textfield
//                 Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 25.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                           color: Colors.grey[300],
//                           border: Border.all(color: Colors.white),
//                           borderRadius: BorderRadius.circular(15)),
//                       child: Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: TextField(
//                           controller: kelasController,
//                           style: GoogleFonts.inter(
//                             fontSize: 18,
//                             color: Color.fromARGB(255, 102, 108, 105),
//                           ),
//                           textInputAction: TextInputAction.next,
//                           decoration: InputDecoration(
//                               border: InputBorder.none, hintText: "Kelas"),
//                         ),
//                       ),
//                     )),
//                 SizedBox(height: 15),

// email textfield
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25.0),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: emailController,
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Color.fromARGB(255, 102, 108, 105),
                          ),
                          textInputAction: TextInputAction.next,
                          decoration: InputDecoration(
                              border: InputBorder.none, hintText: "Email"),
                        ),
                      ),
                    )),
                SizedBox(height: 15),

// password textfield
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.grey[300],
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: TextField(
                          controller: passwordController,
                          style: GoogleFonts.inter(
                            fontSize: 18,
                            color: Color.fromARGB(255, 102, 108, 105),
                          ),
                          obscureText: true,
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Password",
                          ),
                        ),
                      ),
                    )),
                SizedBox(height: 40),

// sign up button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 19, 38, 132),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: MaterialButton(
                        padding: EdgeInsets.fromLTRB(20, 10, 20, 15),
                        minWidth: MediaQuery.of(context).size.width,
                        onPressed: () {
                          FirebaseAuth.instance
                              .createUserWithEmailAndPassword(
                                  email: emailController.text,
                                  password: passwordController.text)
                              .then((value) {
                            FirebaseFirestore.instance
                                .collection('users')
                                .doc(value.user!.uid)
                                .set({"email": value.user!.email});
                            // jika berhasil akan menuju halaman home
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Login()));
                          }).onError((error, stackTrace) {
                            print("Error ${error.toString()}");
                          });
                        },
                        child: Center(
                          child: Text(
                            "BUAT AKUN",
                            style: GoogleFonts.inter(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 15),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text("Sudah punya akun?",
                        style: GoogleFonts.inter(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      },
                      child: Text(" Masuk",
                          style: GoogleFonts.inter(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue[800])),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
