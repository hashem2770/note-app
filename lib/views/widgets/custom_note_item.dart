import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key, required this.title, required this.subTitle, required this.color})
      : super(key: key);
  final String title;
  final String subTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 16,bottom: 16,left: 16),
      decoration: BoxDecoration(
        color:color,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: Text(
              title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: Colors.black,fontSize: 26),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 12),
              child: Text(
                subTitle,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,

                style:  TextStyle(color: Colors.black.withOpacity(.5),fontSize: 20,height: 1.5),
              ),
            ),
            trailing: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.delete,
                  color: Colors.black,
                  size: 40,
                )),
          ),
          const Padding(
            padding:  EdgeInsets.only(right: 18.0,bottom: 8),
            child: Text('May 31.2020', style:  TextStyle(color: Colors.black),),
          ),
        ],
      ),
    );
  }
}
