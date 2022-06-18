import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:telegram/core/constants/color/color.dart';

class DissmissWidget extends StatelessWidget {
  Widget listTile;
  DissmissWidget({Key? key, required this.listTile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Slidable(
        key: UniqueKey(),
        startActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: ColorConst.kPrimaryColor,
              foregroundColor: Colors.white,
              icon: Icons.messenger,
              label: 'Unread',
            ),
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: ColorConst.kPin,
              foregroundColor: Colors.white,
              icon: Icons.push_pin,
              label: 'Pin',
            ),
          ],
        ),
        endActionPane: ActionPane(
          motion: DrawerMotion(),
          children: [
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: ColorConst.kMute,
              foregroundColor: Colors.white,
              icon: Icons.volume_mute_rounded,
              label: 'Mute',
            ),
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: ColorConst.kDelete,
              foregroundColor: Colors.white,
              icon: Icons.delete,
              label: 'Delete',
            ),
            SlidableAction(
              onPressed: (context) {},
              backgroundColor: Colors.grey.shade400,
              foregroundColor: Colors.white,
              icon: Icons.archive,
              label: 'Archive',
            ),
          ],
        ),
        child: listTile);
  }
}
