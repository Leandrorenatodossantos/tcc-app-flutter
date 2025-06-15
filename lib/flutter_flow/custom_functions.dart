import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

String getSaudacao() {
  final hora = DateTime.now().hour;

  if (hora >= 5 && hora < 12) {
    return 'Bom dia';
  } else if (hora >= 12 && hora < 18) {
    return 'Boa tarde';
  } else if (hora >= 18 && hora <= 23) {
    return 'Boa noite';
  } else {
    return 'Boa madrugada';
  }
}

/// Funçao que retorna  saudação e nome do usuario
String? saudacaoComNome(String? nome) {
  final hora = DateTime.now().hour;

  String saudacao;

  if (hora >= 5 && hora < 12) {
    saudacao = 'Bom dia';
  } else if (hora >= 12 && hora < 18) {
    saudacao = 'Boa tarde';
  } else if (hora >= 18 && hora <= 23) {
    saudacao = 'Boa noite';
  } else {
    saudacao = 'Boa madrugada';
  }

  return '$saudacao, $nome!';
}

String? dataporextenso() {
  final agora = DateTime.now();

  // Dias da semana
  const dias = [
    'Domingo',
    'Segunda-feira',
    'Terça-feira',
    'Quarta-feira',
    'Quinta-feira',
    'Sexta-feira',
    'Sábado',
  ];

  // Meses do ano
  const meses = [
    'janeiro',
    'fevereiro',
    'março',
    'abril',
    'maio',
    'junho',
    'julho',
    'agosto',
    'setembro',
    'outubro',
    'novembro',
    'dezembro',
  ];

  final diaSemana = dias[agora.weekday % 7];
  final dia = agora.day;
  final mes = meses[agora.month - 1];
  final ano = agora.year;

  return '$diaSemana, $dia de $mes de $ano';
}
