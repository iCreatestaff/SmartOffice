import 'package:flutter/material.dart';

void main() {
  runApp(const SignInPage());
}

class SignInPage extends StatefulWidget {
   const SignInPage({super.key});

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final FocusNode _userIdFocusNode = FocusNode();

  final FocusNode _passwordFocusNode = FocusNode();

  @override
  void dispose() {
    super.dispose();
    _userIdFocusNode.dispose();
    _passwordFocusNode.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0), // Set the height of the AppBar
          child: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.white), // Only the icon
              onPressed: () {
                Navigator.pop(context); // Action when the icon is pressed
              },
            ),
            backgroundColor: Colors.transparent, // Set AppBar background color
            elevation: 0, // Remove the shadow under the AppBar
          ),
        ),
        backgroundColor: const Color(0x00000000),
        body: Stack(
          children: [
            // Background map image
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/sign_in.png'), // Make sure to add the map image to your assets folder
                  fit: BoxFit.cover,
                  opacity: 0.5, // Semi-transparent map background
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                // Logo
                const Center(
                  child: Padding(
                    padding: EdgeInsets.only(top: 70),
                    child: Text(
                      "LOGO",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                // Sign In Form
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 40.0),
                
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Sign In Title
                      const Text(
                        'Sign In',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      // User ID field
                      TextField(
                        focusNode: _userIdFocusNode,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(color: Color.fromARGB(255, 83, 82, 82)),
                          ),
                          hintText: 'User_ID',
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Password field
                      TextField(
                        
                        autofocus: true,
                        obscureText: true,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.black.withOpacity(0.5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                            borderSide: const BorderSide(color: Color.fromARGB(255, 83, 82, 82)),
                          ),
                          hintText: 'Password',
                          hintStyle: const TextStyle(color: Colors.white),
                        ),
                      ),
                      const SizedBox(height: 20),
                      // Sign In Button
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ), backgroundColor: Colors.white,
                          padding: const EdgeInsets.symmetric(vertical: 15), // Button background color
                        ),
                        onPressed: () {
                          // Add sign in logic here
                        },
                        child: const Text(
                          'Sign In',
                          style: TextStyle(color: Colors.black, fontSize: 18),
                        ),
                      ),
                      const SizedBox(height: 10),
                      // Forgot Password
                      TextButton(
                        onPressed: () {
                          // Add forgot password logic here
                        },
                        child: const Text(
                          'Forgot password?',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
