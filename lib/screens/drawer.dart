import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage("https://encurtador.com.br/cyUWX"),
                fit: BoxFit.cover,
              ),
            ),
            accountName: Text(
              'MIND Moda Sustentável',
              style: TextStyle(
                height: 0.2,
                fontSize: 18,
                fontWeight: FontWeight.w800,
              ),
            ),
            accountEmail: Text('R. Caramuru, 11 - Centro, Canoas'),
          ),
          const ListTile(
              title: Text('Últimos Produtos',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18))),
          _widgetContainer(
            color: Color(0x2B18D174),
            title: Text('Bolsa de abelhas'),
            subtitle: Text("R\$38,99"),
            onTap: () {},
          ),
          _widgetContainer(
            color: Color(0x2B18D174),
            title: Text('Camisa Polo G'),
            subtitle: Text("R\$20,99"),
            onTap: () {},
          ),
          _widgetContainer(
            color: Color.fromARGB(45, 196, 196, 196),
            title: Text('Vestido rosa P'),
            subtitle: Text("R\$18,90"),
            onTap: () {},
          ),
          _widgetContainer(
            color: Color(0x2B18D174),
            title: Text('Camisa Polo Azul'),
            subtitle: Text("R\$20,99"),
            onTap: () {},
          ),
        ],
      ),
    );
  }

  _widgetContainer({
    required Widget? title,
    required Widget? subtitle,
    required Function onTap,
    required Color? color,
  }) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          onTap();
        },
        child: Container(
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            children: [
              const SizedBox(width: 16.0),
              ConstrainedBox(
                constraints: BoxConstraints(
                    maxWidth: MediaQuery.of(context).size.width - 180),
                child: ListTile(
                  title: title,
                  subtitle: subtitle,
                ),
              ),
              const Icon(Icons.keyboard_arrow_right, size: 24),
            ],
          ),
        ),
      ),
    );
  }
}
