// ignore_for_file: public_member_api_docs, sort_constructors_first
class Namazml {
  const Namazml({
    required this.title,
    required this.image,
  });

  final String title;
  final String image;
}

const namaz = Namazml(
  title: '5 убакыт намаз',
  image: 'namaz',
);

const ait = Namazml(
  title: 'Айт намаз',
  image: 'ait',
);

const nafil = Namazml(
  title: 'Нафил намаз',
  image: 'nafil',
);

List<Namazml> namazml = [
  namaz,
  ait,
  nafil,
];
class BeshUbakNamaz {
  const BeshUbakNamaz({
    required this.title,
    required this.image,
  });

  final String title;
  final String image;
}

const bagimdat = BeshUbakNamaz(
  title: 'Багымдат намазы',
  image: 'bagimdat',
);

const beshim = BeshUbakNamaz(
  title: 'Бешим намазы',
  image: 'beshim',
);

const asr = BeshUbakNamaz(
  title: 'Аср намазы',
  image: 'asr',
);
const sham = BeshUbakNamaz(
  title: 'Шам намазы',
  image: 'sham',
);
const kuptan = BeshUbakNamaz(
  title: 'Куптан намазы',
  image: 'kuptan',
);

List<BeshUbakNamaz> beshUbakNamaz = [
  bagimdat,
  beshim,
  asr,
  sham,
  kuptan
  
];