import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wǒ de jiā',
      theme: ThemeData.dark().copyWith(
        primaryColorDark: Colors.black,
        colorScheme: ColorScheme.dark(),

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build( BuildContext context ) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text( 'Wǒ de jiā (v3.01)' ),
          //leading: BackArrow(),
          centerTitle: true,
          actions: <Widget>[
            /*Padding(
            					  padding: const EdgeInsets.only(right:20.0),
            					  child: ShowAdjustFontScale(),
            					),*/
          ],
        ),
        body: Table(
          border: TableBorder.all(borderRadius: BorderRadius.circular( 10 )),
          columnWidths: const <int, TableColumnWidth>{
            0: FixedColumnWidth(80),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
            3: FlexColumnWidth(),
            4: FlexColumnWidth(),
          },
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          children: <TableRow>[

            /// Header
            TableRow(
              children: <Widget>[

                Word(
                  chineseWord: '',
                  englishWord: '',
                ),

                Word(
                    chineseWord: '',
                    englishWord: '1'
                ),

                Word(
                    chineseWord: '',
                    englishWord: '2'
                ),

                Word(
                    chineseWord: '',
                    englishWord: '3'
                ),

                Word(
                    chineseWord: '',
                    englishWord: '4'
                ),

                Word(
                    chineseWord: '',
                    englishWord: '5'
                ),

              ],
            ),

            /// 1
            TableRow(
              children: <Widget>[

                Word(
                  chineseWord: '1',
                  englishWord: '',
                ),

                Word(
                  chineseWord: 'jīn tiān',
                  englishWord: 'today',
                ),

                Word(
                  chineseWord: 'zhōng guó',
                  englishWord: 'china',
                ),

                Word(
                  chineseWord: 'bīng shuǐ',
                  englishWord: 'ice water',
                ),

                Word(
                  chineseWord: 'zhī dào',
                  englishWord: 'to know',
                ),

                Word(
                  chineseWord: 'zhēn de',
                  englishWord: 'really?',
                )

              ],
            ),

            /// 2
            TableRow(
              children: <Widget>[

                Word(
                  chineseWord: '2',
                  englishWord: '',
                ),

                Word(
                    chineseWord: 'míng tiān',
                    englishWord: 'tomorrow'
                ),

                Word(
                    chineseWord: 'míng nián',
                    englishWord: 'next year'
                ),

                Word(
                    chineseWord: 'pí jiǔ',
                    englishWord: 'beer'
                ),

                Word(
                    chineseWord: 'róng yì',
                    englishWord: 'easy'
                ),

                Word(
                    chineseWord: 'shén me',
                    englishWord: 'what?'
                ),

              ],
            ),

            /// 3
            TableRow(
              children: <Widget>[

                Word(
                  chineseWord: '3',
                  englishWord: '',
                ),

                Word(
                    chineseWord: 'xǐ huān',
                    englishWord: 'like'
                ),

                Word(
                    chineseWord: 'qǐ chuáng',
                    englishWord: 'get up'
                ),

                Word(
                    chineseWord: 'nǐ hǎo',
                    englishWord: 'hello'
                ),

                Word(
                    chineseWord: 'chǎo fàn',
                    englishWord: 'fried rice'
                ),

                Word(
                    chineseWord: 'wǒ de',
                    englishWord: 'mine'
                ),

              ],
            ),

            /// 4
            TableRow(
              children: <Widget>[

                Word(
                  chineseWord: '4',
                  englishWord: '',
                ),

                Word(
                    chineseWord: 'miàn bāo',
                    englishWord: 'bread'
                ),

                Word(
                    chineseWord: 'wèn tí',
                    englishWord: 'question'
                ),

                Word(
                    chineseWord: 'zhè lǐ',
                    englishWord: 'here'
                ),

                Word(
                    chineseWord: 'zài jiàn',
                    englishWord: 'bye'
                ),

                Word(
                    chineseWord: 'xiè xie',
                    englishWord: 'thanks'
                ),

              ],
            ),


            /// Links: top row
            TableRow(
              children: <Widget>[

                Link(
                  title: '',
                  url: '',
                ),

                Link(
                  title: 'YouTube',
                  url: 'https://www.youtube.com/playlist?list=WL',
                ),

                Link(
                  title: 'RunPee',
                  url: 'https://runpee.com',
                ),

                Link(
                  title: 'RunPee Post',
                  url: 'https://runpee.com/wp-admin/edit.php',
                ),

                Link(
                  title: 'Bleacher Report',
                  url: 'https://bleacherreport.com/alabama-crimson-tide-football',
                ),

                Link(
                  title: 'IMDb',
                  url: 'https://www.imdb.com/movies-in-theaters/?ref_=cs_inth',
                ),

              ],
            ),


            /// Links: bottom row
            TableRow(
              children: <Widget>[

                Link(
                  title: '',
                  url: '',
                ),

                Link(
                  title: 'VOX',
                  url: 'https://www.vox.com/',
                ),

                Link(
                  title: 'The Guardian',
                  url: 'https://www.theguardian.com/us',
                ),

                Link(
                  title: 'Amazon',
                  url: 'https://amazon.com',
                ),

                Link(
                  title: 'Weather',
                  url: 'https://www.wunderground.com/forecast/us/nc/asheville/28801?cm_ven=localwx_10day',
                ),

                Link(
                  title: 'na',
                  url: '',
                ),

              ],
            ),



          ],
        ),
      ),
    );
  }
}


class Word extends StatelessWidget {

  final String chineseWord;
  final String englishWord;

  Word( {
    required this.chineseWord,
    required this.englishWord
  } );

  @override
  Widget build( BuildContext context ) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [

          Text( chineseWord,
            style: Theme.of(context).textTheme.headline4,
            textAlign: TextAlign.center,
          ),

          Text( englishWord,
            style: Theme.of(context).textTheme.headline6,
            textAlign: TextAlign.center,
          ),

        ],
      ),
    );
  }
}

class Link extends StatelessWidget {

  final String title;
  final String url;

  Link( {
    required this.title,
    required this.url
  } );

  @override
  Widget build( BuildContext context ) {
    return Center(
      child: TextButton(
        child: Text( title,
          style: TextStyle(
              fontSize: 16,
              decoration: TextDecoration.underline
          ),
        ),
        onPressed: (){
          launch( url, webOnlyWindowName: '_self' );
        },
      ),
    );
  }
}

