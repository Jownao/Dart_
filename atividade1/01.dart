void main() {
  // mapa de preços dos bolos
  Map<String, double> boloPrecos = {'ovos': 5.5, 'chocolate': 7.5, 'cenoura': 6.5};

  // pedido de bolos
  List<String> ordem = ['ovos', 'chocolate'];

  // variável para armazenar o total do pedido
  double total = 0;

  // percorre a lista de bolos do pedido e adiciona o preço de cada um ao total
  for (var bolo in ordem) {
    if (boloPrecos.containsKey(bolo)) {
      total += boloPrecos[bolo]!;
    } else {
      print('$bolo não está no cardápio');
    }
  }

  // imprime o total do pedido
  print('Total = $total');
}
