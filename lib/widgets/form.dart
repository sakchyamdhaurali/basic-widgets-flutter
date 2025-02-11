import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  const FormWidget({ Key? key }) : super(key: key);

  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<FormWidget> {

  String firstname = '';
  String lastname = '';
  String email = '';
  String password = '';

  final _formKey= GlobalKey<FormState>();

  trysubmit(){
    final isValid = _formKey.currentState!.validate();
    
    if(isValid){
      _formKey.currentState!.save();
      submitForm();
    }
    else{
      print('error');
    }
  }

  submitForm(){
    print(firstname);
    print(lastname);
    print(email);
    print(password);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(

           appBar: AppBar(
        title: Text('Bottom Navigation', style: TextStyle(color: Colors.white),),
        backgroundColor: Color.fromARGB(255, 24, 77, 69),
        elevation: 0,
        centerTitle: true,
      ) ,


      body: Container(
        margin: EdgeInsets.all(10),
        child: Form(
        
          key: _formKey,
          child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter first name'
              ),
              key: ValueKey('firstname'),
              validator: (value) {
                if(value.toString().isEmpty){
                  return 'First name should not be empty';
                }
                else{
                  return null;
                }
              },
        
              onSaved: (value) {
                firstname = value.toString() ;
                
              },
        
              
        
        
            ),

             TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter last name'
              ),
              key: ValueKey('lastname'),
              validator: (value) {
                if(value.toString().isEmpty){
                  return 'Last name should not be empty';
                }
                else{
                  return null;
                }
              },
        
              onSaved: (value) {
                lastname = value.toString() ;
                
              },    
            ),

             TextFormField(
              decoration: InputDecoration(
                hintText: 'Enter email'
              ),
              key: ValueKey('email'),
              validator: (value) {
                if(value.toString().isEmpty){
                  return 'Email name should not be empty';
                }
                else{
                  return null;
                }
              },
        
              onSaved: (value) {
                email = value.toString() ;
                
              },
            ),

             TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: 'Enter password'
              ),
              key: ValueKey('password'),
              validator: (value) {
                if(value.toString().length<=5){
                  return 'Password should be of minimum length of 6';
                }
                else{
                  return null;
                }
              },
        
              onSaved: (value) {
                password = value.toString() ;
                
              },
            ),
            SizedBox(height: 5,),

          TextButton(onPressed: (){
            trysubmit();
          }, child: Text('Submit')
          ),

          ],
        )),
      ),
    );
  }
}