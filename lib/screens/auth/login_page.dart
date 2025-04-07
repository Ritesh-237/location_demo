import 'package:flutter/material.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Phone number",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.93,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Address";
                  }
                  return null;
                },
                // controller: addressController,
                cursorColor: Colors.black,
                style: const TextStyle(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(),
                  hintText: 'Phone Number',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Arial",
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 0.80,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 0.80,
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Password",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.93,
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Enter Address";
                  }
                  return null;
                },
                // controller: addressController,
                cursorColor: Colors.black,
                style: const TextStyle(
                  fontSize: 14,
                ),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  border: const OutlineInputBorder(),
                  hintText: 'Enter password',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    fontFamily: "Arial",
                  ),
                  contentPadding:
                      const EdgeInsets.symmetric(vertical: 12, horizontal: 6),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 0.80,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 0.80,
                    ),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Center(
                      child: Text(
                    "Log In",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.width * 0.25,
                  decoration: const BoxDecoration(color: Colors.green),
                  child: const Center(
                      child: Text(
                    "Sign Up",
                    style: TextStyle(color: Colors.white),
                  )),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
