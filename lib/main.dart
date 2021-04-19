import 'package:bloc_app/bloc/usuario/usuario_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [BlocProvider(create: (_) => UsuarioBloc())],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          // builder cuando haya cambio del state vulve a redibujar el contenido del return
          body: BlocBuilder<UsuarioBloc, UsuarioState>(
            builder: (context, state) {
              print(state.existeUsuario);
              return Center(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  state.existeUsuario
                      ? CircularProgressIndicator()
                      : Container(),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40),
                    child: TextButton(
                        onPressed: () {
                          if (state.existeUsuario) {
                            BlocProvider.of<UsuarioBloc>(context)
                                .add(ActivarUsuario(false));
                          } else {
                            BlocProvider.of<UsuarioBloc>(context)
                                .add(ActivarUsuario(true));
                          }
                        },
                        child: Text('Desaictvar Loading')),
                  )
                ],
              ));
              // return Center(
              //     child: TextButton(
              //   onPressed: () {
              //     print('Funciona');
              //   },
              //   child: Text('Hola'),
              // ));
            },
          ),
        ),
      ),
    );
  }
}
