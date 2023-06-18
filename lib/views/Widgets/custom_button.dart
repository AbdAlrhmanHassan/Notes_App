import 'package:flutter/material.dart';
import 'package:flutter_app_7_note_app/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    this.onTap,
    super.key,
    required this.isLoading,
  });
  final void Function()? onTap;

  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 20),
        width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          color: isLoading ? Colors.grey : kPrimaryColor,
          borderRadius: BorderRadius.circular(16),
        ),
        child: isLoading
            ? SizedBox(
                width: 33,
                height: 33,
                child: Center(
                    child: CircularProgressIndicator(
                  color: kPrimaryColor,
                )),
              )
            : const Center(
                child: Text(
                "Add",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
              )),
      ),
    );
  }
}
