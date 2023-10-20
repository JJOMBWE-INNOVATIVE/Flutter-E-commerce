
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop/foundation/sp_icon/sp_icon.dart';

class ProfileItem extends StatelessWidget {
  const ProfileItem({
    Key? key,
     required this.title,
     this.subtitle,
     required this.assetName,
     required this.isLast,
     this.onTap
  }) : super(key: key);

  final String title;
  final String? subtitle;
  final String assetName;
  final bool isLast;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: 68,
            child: ListTile(
              leading:  SpIcon(assetname: assetName,
              ),
              title: Text(title,style: Theme.of(context).textTheme.bodyText1,),
              subtitle:subtitle!= null?
                  Text(
                 subtitle!
                ,style:Theme.of(context).textTheme.caption ,
                  )
                  :null,
              trailing: InkWell(
                  onTap: (){
    
                  },
                  child: const Icon(CupertinoIcons.chevron_forward,size: 16,
                  ),
              ),
            ),
          ),
          isLast ? Container() : const Divider(),
        ],
      ),
    );
  }
}
