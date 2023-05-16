// ignore_for_file: public_member_api_docs, sort_constructors_first
class Category {
  const Category({
    required this.image,
    required this.title,
  });

  final String image;
  final String title;
}

const daarat = Category(
  image: 'daarat',
  title: 'Даарат',
);

const namaz = Category(
  image: 'namaz',
  title: 'Намаз',
);

const orozo = Category(
  image: 'orozo',
  title: 'Орозо',
);

const umra = Category(
  image: 'umra',
  title: 'Ажылык Умра',
);

const zeket = Category(
  image: 'zeket',
  title: 'Зекет садака',
);

const demsaluu = Category(
  image: 'demsaluu',
  title: 'Дем салуу',
);

const kabyr = Category(
  image: 'kabyr',
  title: 'Кабыр казуу',
);

const talak = Category(
  image: 'talak',
  title: 'Талак',
);

const mazhab = Category(
  image: 'mazhab',
  title: 'Төрт мазхаб',
);

const kepin = Category(
  image: 'kepin',
  title: 'Кепин ороо',
);

const kuran = Category(
  image: 'kuran',
  title: 'Куран алиппеси',
);

const dubalar = Category(
  image: 'dubalar',
  title: 'Дубалар',
);

List<Category> categories = [
  daarat,
  namaz,
  orozo,
  umra,
  zeket,
  demsaluu,
  kabyr,
  talak,
  mazhab,
  kepin,
  kuran,
  dubalar,
];
