import 'package:flutter/material.dart';

void main() => runApp(MyRoutes2());

class MyRoutes2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        ExtractArgumentsScreen.routeName: (context) => ExtractArgumentsScreen(),
      },

      onGenerateRoute: (settings) {

        if (settings.name == PassArgumentsScreen.routeName) {

          final args = settings.arguments as ScreenArguments;


          return MaterialPageRoute(
            builder: (context) {
              return PassArgumentsScreen(
                title: args.title,
                message: args.message,
              );
            },
          );
        }
        Padding(padding: EdgeInsets.all(10),
          child: Image.asset("imagens/huble.png"),);

        assert(false, 'Precisa implemetar ${settings.name}');
        return null;
      },
      title: 'Navegação com argumentos',
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rotas Nomeadas'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            ElevatedButton(
              onPressed: () {

                Navigator.pushNamed(
                  context,
                  ExtractArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Argumentos',
                    'Esta mensagem é extraída no método de construção. É a extração dos argumentos passados no método',
                  ),
                );
              },
              child: Text('Clique para enviar dados'),


            ),




            Padding(padding: EdgeInsets.all(8),
              child: Image.asset("imagens/lua.png"),),

            ElevatedButton(
              onPressed: () {

                Navigator.pushNamed(
                  context,
                  PassArgumentsScreen.routeName,
                  arguments: ScreenArguments(
                    'Recebendo do Route',
                    'Esta mensagem é extraída na função onGenerateRoute.',
                  ),

                );
              },
              child: Text('Navegue até uma rota que aceita argumentos'),
            ),
          ],
        ),
      ),
    );
  }
}


class ExtractArgumentsScreen extends StatelessWidget {
  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {

    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}


class PassArgumentsScreen extends StatelessWidget {
  static const routeName = '/passArguments';

  final String title;
  final String message;


  const PassArgumentsScreen({
    Key? key,
    required this.title,
    required this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(message),
      ),
    );
  }
}


class ScreenArguments {
  final String title;
  final String message;

  ScreenArguments(this.title, this.message);


}
