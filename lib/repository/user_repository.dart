import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:login_user/models/user_model.dart';

class UserRepository {
  Future<List<Data>> GetUser() async {
    try{
    final url = Uri.parse('https://reqres.in/api/users?page=2');
    List<Data> lista = [];
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final result = jsonDecode(response.body);
      result['data'].forEach(
        (item) => lista.add(
          Data.fromJson(item),
        ),
      );
      return lista;
    } else {
      throw Exception('Erro ao acessar os dados');
    }
    }catch(e){
      throw Exception('Erro ao acessar os dados');
    }
  }
}
