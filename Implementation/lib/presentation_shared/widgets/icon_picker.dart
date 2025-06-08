import 'package:flutter/material.dart';
import 'package:flutter_iconpicker/flutter_iconpicker.dart' show IconPack, showIconPicker;

class IconPickerWidget extends StatelessWidget {
  const IconPickerWidget({required this.onIconPicked, required this.initIcon, super.key});

  final void Function(IconData icon) onIconPicked;
  final IconData? initIcon;

  @override
  Widget build(BuildContext context) {
    IconData? selectedIcon = initIcon ?? Icons.help_center_outlined;
    return SizedBox(
      child: Column(
        children: [
          Icon(
            initIcon ?? Icons.help_center_outlined,
            size: 50,
            color: Colors.blue,
          ),

          // ElevatedButton(
          //   onPressed: () => showDialog(
          //     context: context,
          //     builder: (context) => EmojiPicker(
          //       textEditingController: _controller,
          //       scrollController: _scrollController,
          //       config: Config(
          //         height: 256,
          //         checkPlatformCompatibility: true,
          //         viewOrderConfig: const ViewOrderConfig(),
          //         emojiViewConfig: EmojiViewConfig(
          //           // Issue: https://github.com/flutter/flutter/issues/28894
          //           emojiSizeMax:
          //               28 * (foundation.defaultTargetPlatform == TargetPlatform.iOS ? 1.2 : 1.0),
          //         ),
          //       ),
          //     ),
          //   ),
          //   child: const Text('Emojis'),
          // ),
          // TextField(
          //   controller: _controller,
          //   style: TextStyle(fontSize: 50),
          // ),
          ElevatedButton.icon(
            label: const Text('Open Icon Picker'),
            icon: const Icon(Icons.color_lens),
            onPressed: () async {
              selectedIcon = await showIconPicker(
                context,
                iconPackModes: [IconPack.material],
                title: const Text('Choose an Icon'),
                backgroundColor: Colors.white,
                iconColor: Colors.blue,
              ).then((icon) => icon ?? initIcon);

              onIconPicked(selectedIcon!);
            },
          ),
        ],
      ),
    );
  }
}
