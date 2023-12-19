import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
      title: 'Botones',
      subTitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItems(
      title: 'Tarjetas',
      subTitle: 'Un contenedor estilizado',
      link: '/cards',
      icon: Icons.credit_card),
  MenuItems(
      title: 'Progress Indicators',
      subTitle: 'Generales y controlados',
      link: '/progress',
      icon: Icons.refresh_rounded),
  MenuItems(
      title: 'Snackbars y Diálogos',
      subTitle: 'Indicadores en pantall',
      link: '/snackbars',
      icon: Icons.info_outline),
  MenuItems(
      title: 'Animated Container',
      subTitle: 'Statefull Widget animado',
      link: '/animated',
      icon: Icons.check_box_outlined),
  MenuItems(
      title: 'UI Controls + Tiles',
      subTitle: 'Una serie de controles de Flutter',
      link: '/ui-controls',
      icon: Icons.car_rental_outlined),
  MenuItems(
      title: 'Introducción a la aplicación',
      subTitle: 'Pequeño tutorial introductorio de la aplicación',
      link: '/tutorial',
      icon: Icons.accessibility_rounded),
  MenuItems(
      title: 'Infinite Scroll y Pull',
      subTitle: 'Listas infinitas y pull to refresh',
      link: '/infinite',
      icon: Icons.list_alt_rounded),
  MenuItems(
      title: 'Riverpod Counter',
      subTitle: 'Introducción a Riverpod',
      link: '/counter',
      icon: Icons.list_alt_rounded),
  MenuItems(
      title: 'Cambiar Tema',
      subTitle: 'Cambiar tema de la aplicación',
      link: '/theme_changer',
      icon: Icons.color_lens_outlined)
];
