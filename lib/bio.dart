import 'package:flutter/material.dart';

class BiodataView extends StatefulWidget {
  const BiodataView({super.key});

  @override
  State<BiodataView> createState() => _BiodataViewState();
}

class _BiodataViewState extends State<BiodataView> {
  final _name = TextEditingController(text: "fanindya asyfa amani");
  final _birth = TextEditingController(text: "28 oktober 2006");
  final _born = TextEditingController(text: "Kota Malang");
  final _religion = TextEditingController(text: "Islam");
  final _nickname = TextEditingController(text: "fanin");
  final _email = TextEditingController(text: "faninamani2@gmail.com");
  final _noTelp = TextEditingController(text: "081358449705");
  final _gender = TextEditingController(text: "perempuan");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        foregroundColor: Colors.white,
        title: const Text('Profile'),
        centerTitle: true,
        leading: const BackButton(),
        actions: [
          PopupMenuButton(itemBuilder: (BuildContext context) {
            return <PopupMenuEntry>[
              PopupMenuItem(
                child:
                const Text('Edit Profile', style: TextStyle(color: Colors.pink)),
                onTap: () {},
              ),
            ];
          }),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const Stack(
                    children: [
                      Column(
                        children: [
                          CircleAvatar(
                            radius: 64,
                            backgroundImage: NetworkImage(
                                "data:image/jpeg;base64,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"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  _editButton(),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(150, 191, 191, 191),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        TextField(
                          controller: _name,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Name",
                            prefixIcon: Icon(Icons.account_circle),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _nickname,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Nickname",
                            prefixIcon: Icon(Icons.account_circle),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _gender,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Gender",
                            prefixIcon: Icon(Icons.transgender),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _religion,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Religion",
                            prefixIcon: Icon(Icons.mosque),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(150, 191, 191, 191),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        TextField(
                          controller: _address,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Address",
                            prefixIcon: Icon(Icons.map),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _birth,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Birth",
                            prefixIcon: Icon(Icons.calendar_today),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _born,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Born At",
                            prefixIcon: Icon(Icons.home),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Color.fromARGB(150, 191, 191, 191),
                    ),
                    padding: const EdgeInsets.all(15),
                    child: Column(
                      children: [
                        const SizedBox(height: 15),
                        TextField(
                          controller: _email,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "Email",
                            prefixIcon: Icon(Icons.email),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15),
                        TextField(
                          controller: _noTelp,
                          readOnly: true,
                          decoration: const InputDecoration(
                            labelText: "No. Telp",
                            prefixIcon: Icon(Icons.call),
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                            focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(
                                color: Color(0xFFD792C9),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            )),
      ),
    );
  }

  final _address = TextEditingController(text: "dsn.lemahduwur wagir");

  _editButton() {
    return ElevatedButton(
      onPressed: () {},
      style: const ButtonStyle(),
      child: Container(
        width: 150,
        height: 35,
        decoration: const BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: const Center(
          child: Text(
            "Edit Profile",
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
