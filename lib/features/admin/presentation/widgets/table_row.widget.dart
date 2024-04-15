import 'package:flutter/material.dart';
import 'package:fruit_e_commerce/core/extensions/media_query_extension.dart';
import 'package:fruit_e_commerce/core/utils/app_colors.dart';

TableRow tableRow(BuildContext context, int index, String name) => TableRow(
      children: [
        TableCell(child: Center(child: Text('$index', style: TextStyle(fontSize: context.getDefaultSize() * 2,),maxLines: 2,overflow: TextOverflow.ellipsis,))),
        TableCell(child: Center(child: Text(name, style: TextStyle(fontSize: context.getDefaultSize() * 2)))),
        TableCell(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: context.getDefaultSize(), vertical: context.getDefaultSize()),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(AppColors.updateButtonColor)),
                child: Text(
                  'Edit',
                  style: TextStyle(color: Colors.white, fontSize: context.getDefaultSize() * 1.5),
                ),
              ),
              ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll(AppColors.deleteButtonColor)),
                child: Text('Delete', style: TextStyle(color: Colors.white, fontSize: context.getDefaultSize() * 1.5)),
              ),
            ],
          ),
        )),
      ],
    );
