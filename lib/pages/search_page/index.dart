import 'package:flutter/cupertino.dart';

import 'package:yuque/components/app_scaffold.dart';
import 'package:yuque/core/app_provider.dart';
import 'package:yuque/config/theme.dart';

class SearchPage extends StatefulWidget {
  final String title;

  SearchPage({Key key, this.title}) : super(key: key);

  @override
  SearchPageState createState() => SearchPageState();
}

class SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      showNavigationBar: false,
      body: Container(
        margin: EdgeInsets.only(top: 20.0),
        child: Row(
          children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                    color: YQColor.grey7,
                    borderRadius: BorderRadius.circular(4.0)),
              child: Container(
                height: 35.0,
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(left: 10.0),
                padding: EdgeInsets.only(right: 5.0, left: 5.0),
                decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    borderRadius: BorderRadius.circular(4.0)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      child: Icon(CupertinoIcons.search, size: 20.0, color: YQColor.grey3)
                    ),
                    Expanded(
                      child: CupertinoTextField(
                        autofocus: true,
                        placeholder: '搜索',
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 0,
                            color: CupertinoColors.white,
                          ),
                        ),
                      )
                    )
                  ],
                ),
              )
            )
          ),
          Container(
            child: CupertinoButton(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: Text(
                '取消',
                style: TextStyle(fontSize: 18, color: YQColor.blue1)
              ),
              onPressed: (){
                AppProvider.getRouter(context).pop(context);
              },
            ),
          ),
        ],
      ),
      ),
    );
  }
}
