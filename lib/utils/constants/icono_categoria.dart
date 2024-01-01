import 'package:flutter/material.dart';

enum CategoriaEnum {
  Comida,
  Vivienda,
  Entretenimiento,
  Salud,
  Ropa,
  Educacion,
  Tecnologia,
  Viaje,
  Ahorros,
  Deudas,
  Inversiones,
  Miscelanea,
}

class IconoCategoria {
  static IconData obtenerIconoCategoria(String categoria) {
    final Map<String, IconData> mapaIconos = {
      'Comida': Icons.local_dining,
      'Vivienda': Icons.home,
      'Entretenimiento': Icons.theaters,
      'Salud': Icons.local_hospital,
      'Ropa': Icons.shopping_bag,
      'Educacion': Icons.school,
      'Tecnologia': Icons.devices,
      'Viaje': Icons.flight,
      'Ahorros': Icons.account_balance,
      'Deudas': Icons.credit_card,
      'Inversiones': Icons.show_chart,
      'Miscelanea': Icons.category,
    };

    final IconData icono =
        mapaIconos[categoria] ?? Icons.category; // Icono predeterminado si la categoría no se encuentra
    return icono;
  }

  static IconData obtenerIconoPorEnum(CategoriaEnum categoria) {
    final Map<CategoriaEnum, IconData> mapaIconos = {
      CategoriaEnum.Comida: Icons.local_dining,
      CategoriaEnum.Vivienda: Icons.home,
      CategoriaEnum.Entretenimiento: Icons.theaters,
      CategoriaEnum.Salud: Icons.local_hospital,
      CategoriaEnum.Ropa: Icons.shopping_bag,
      CategoriaEnum.Educacion: Icons.school,
      CategoriaEnum.Tecnologia: Icons.devices,
      CategoriaEnum.Viaje: Icons.flight,
      CategoriaEnum.Ahorros: Icons.account_balance,
      CategoriaEnum.Deudas: Icons.credit_card,
      CategoriaEnum.Inversiones: Icons.show_chart,
      CategoriaEnum.Miscelanea: Icons.category,
    };

    final IconData icono =
        mapaIconos[categoria] ?? Icons.category; // Icono predeterminado si la categoría no se encuentra
    return icono;
  }
}
