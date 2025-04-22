import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tutorial de Layout',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LayoutTutorial(),
    );
  }
}

class LayoutTutorial extends StatelessWidget {
  const LayoutTutorial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Layout Básico'),
      ),
      body: ListView(
        children: [
          Image.network(
            'https://images-wixmp-ed30a86b8c4ca887773594c2.wixmp.com/f/5512b8ac-6126-4b70-9660-b969a8689ec3/dhih0j6-2bfbff57-3111-4b94-a6ce-815595c464de.jpg/v1/fill/w_1280,h_854,q_75,strp/mystic_lake_by_ivictorisisimo_dhih0j6-fullview.jpg?token=eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOiJ1cm46YXBwOjdlMGQxODg5ODIyNjQzNzNhNWYwZDQxNWVhMGQyNmUwIiwiaXNzIjoidXJuOmFwcDo3ZTBkMTg4OTgyMjY0MzczYTVmMGQ0MTVlYTBkMjZlMCIsIm9iaiI6W1t7ImhlaWdodCI6Ijw9ODU0IiwicGF0aCI6IlwvZlwvNTUxMmI4YWMtNjEyNi00YjcwLTk2NjAtYjk2OWE4Njg5ZWMzXC9kaGloMGo2LTJiZmJmZjU3LTMxMTEtNGI5NC1hNmNlLTgxNTU5NWM0NjRkZS5qcGciLCJ3aWR0aCI6Ijw9MTI4MCJ9XV0sImF1ZCI6WyJ1cm46c2VydmljZTppbWFnZS5vcGVyYXRpb25zIl19.GYQyAW_3awaRS1tLnxzlzEZt0wZ_CtvDhw_eavrqu6Y',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          _TitleSection(),
          _ButtonSection(),
          _TextSection(),
        ],
      ),
    );
  }
}

class _TitleSection extends StatelessWidget {
  const _TitleSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Lago Místico',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  'Sørvágsvatn, Faroe Islands',
                  style: TextStyle(color: Colors.grey[500]),
                ),
              ],
            ),
          ),
          Icon(
            Icons.star,
            color: Colors.red[500],
          ),
          const Text('41'),
        ],
      ),
    );
  }
}

class _ButtonSection extends StatelessWidget {
  const _ButtonSection();

  @override
  Widget build(BuildContext context) {
    final Color color = Theme.of(context).primaryColor;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'LIGAR'),
        _buildButtonColumn(color, Icons.near_me, 'ROTA'),
        _buildButtonColumn(color, Icons.share, 'COMPARTILHAR'),
      ],
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}

class _TextSection extends StatelessWidget {
  const _TextSection();

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(32),
      child: Text(
       
        'Diz-se que Sørvágsvatn guarda em suas margens o sussurro das bruxas nórdicas, que ali lançavam encantamentos '
        'aos céus, e que, em certas madrugadas, é possível ouvir cantos distantes, como se as pedras do lago guardassem '
        'ecos de um passado jamais esquecido.\n\n'
        'Entre o real e o etéreo, Sørvágsvatn não é apenas um lago — é um espelho do invisível, um santuário de mistérios '
        'antigos e magia silenciosa, onde o tempo hesita, e a alma desperta.',
        softWrap: true,
        textAlign: TextAlign.justify,
        style: TextStyle(
          fontSize: 16,
          height: 1.5,
        ),
      ),
    );
  }
}