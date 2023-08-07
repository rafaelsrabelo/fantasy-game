import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomTextiField extends StatefulWidget {

  final IconData icon;
  final String label;
  final bool isSecret;
  final List<TextInputFormatter>? inputFormatters;

  const CustomTextiField({
    Key? key, // Correção aqui
    required this.icon, 
    required this.label, 
    this.isSecret = false,
    this.inputFormatters,
  }) : super(key: key); // A chave super deve estar aqui, removida dos parâmetros

  @override
  State<CustomTextiField> createState() => _CustomTextiFieldState();
}

class _CustomTextiFieldState extends State<CustomTextiField> {

  bool isObscure = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isObscure = widget.isSecret;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: TextFormField(
        style: TextStyle(
          height: 1
        ),
        inputFormatters: widget.inputFormatters,
        obscureText: isObscure,
        decoration: InputDecoration(
            prefixIcon: Icon(widget.icon),
            suffixIcon: widget.isSecret ? 
            IconButton(
              onPressed: () {
                setState(() {
                  isObscure = !isObscure;
                });
              }, 
              icon: Icon( isObscure ? Icons.visibility : Icons.visibility_off)) : null,
            labelText: widget.label,
            isDense: true,
            border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(18))),
      ),
    );
  }
}
