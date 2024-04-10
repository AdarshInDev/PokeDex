import 'package:http/http.dart' as http;

class PokeRepo {
  Future<http.Response> getPokemon() async {
    final url = Uri.parse(
        'https://raw.githubusercontent.com/AdarshInDev/poke/main/pokedex.json');
    final response = await http.get(url);
    // log(response.body);
    return response;
  }
}
// 'https://ex.traction.one/pokedex/pokemon/'
// 'https://raw.githubusercontent.com/AdarshInDev/poke/main/pokedex.json'
// https://raw.githubusercontent.com/AdarshInDev/poke/main/pokedex.json