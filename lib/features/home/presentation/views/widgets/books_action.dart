import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utils/bookly_helpers.dart';
import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/core/widgets/light_switch_widget.dart';
import 'package:bookly_app/features/home/data/models/book_model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({
    super.key,
    required this.onLPressed,
    required this.onRPressed,
    required this.book,
  });
  final void Function()? onLPressed;
  final void Function()? onRPressed;
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child:
                Bookly.isPdfAvailable(book)
                    ? LightSwitchWidget(
                      onLPressed: () async {
                        Uri url = Uri.parse(
                          book.accessInfo!.pdf!.acsTokenLink!,
                        );
                        if (!await launchUrl(
                          url,
                          mode:
                              LaunchMode
                                  .platformDefault, // This opens the link in an in-app browser
                        )) {
                          throw Exception('Could not launch $url');
                        }
                      },
                      foreColor: const Color(
                        0xffffffff,
                      ), // Added foreColor parameter
                    )
                    : LightSwitchWidget(
                      onLPressed: () {},
                      foreColor: const Color(0x50ffffff),
                    ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: () async {
                Uri url =
                    book.volumeInfo.previewLink != null
                        ? Uri.parse(book.volumeInfo.previewLink!)
                        : Uri.parse('https://www.google.com');
                if (!await launchUrl(
                  url,
                  mode:
                      LaunchMode
                          .platformDefault, // This opens the link in an in-app browser
                )) {
                  throw Exception('Could not launch $url');
                }
              },
              text: 'Free Preview',
              fontSize: 16,
              backgroundColor: kSecondaryColor,
              textColor: Colors.white,
              borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
