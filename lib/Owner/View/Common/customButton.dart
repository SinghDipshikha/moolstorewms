import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
 CustomButton({ Key? key ,required this.title ,this.onTap }) : super(key: key);

String title ;
void Function()? onTap ;

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: onTap,
      child: Container(
                      alignment: Alignment.center,
                      width: double.infinity,
                      height: 45,
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(1.00, 0.00),
                          end: Alignment(-1, 0),
                          colors: [Color(0xFF2D2D2D), Color(0xFF1F1F1F)],
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                        ),
                      ),
                      child:  Text(
                      title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'SF Pro Display',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ));
  }
}