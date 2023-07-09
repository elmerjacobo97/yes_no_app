import 'package:flutter/material.dart';

class MessageFieldBox extends StatelessWidget {
  const MessageFieldBox({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    final textController = TextEditingController();
    final focusNode = FocusNode();

    final outlineInputBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: colors.primary,
      ),
      borderRadius: BorderRadius.circular(20),
    );

    final inputDecoration = InputDecoration(
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      hintText: 'End your message with a "?"',
      filled: true,
      suffixIcon: IconButton(
        icon: const Icon(Icons.send_outlined),
        onPressed: () {
          final textValue = textController.value.text;
          print('button pressed: $textValue');
          textController.clear();
        },
      ),
    );

    return TextFormField(
      // hacer click afuera de la caja de texto
      onTapOutside: (event) {
        focusNode.unfocus();
      },
      focusNode: focusNode,
      controller: textController,
      decoration: inputDecoration,
      onFieldSubmitted: (value) {
        print(value);
        // limpiar el input
        textController.clear();

        // mantener el focus
        focusNode.requestFocus();
      },
      onChanged: (value) {
        print('changed: $value');
      },
    );
  }
}
