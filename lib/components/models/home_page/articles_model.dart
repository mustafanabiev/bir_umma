// ignore_for_file: public_member_api_docs, sort_constructors_first
class Articles {
  const Articles({
    required this.title,
    required this.image,
  });

  final String title;
  final String image;
}

const gusul = Articles(
  title: 'Гусул',
  image: 'gusul',
);

const daarat = Articles(
  title: 'Даарат',
  image: 'daaratt',
);

const tayamum = Articles(
  title: 'Таямум',
  image: 'tayamum',
);

List<Articles> articles = [
  gusul,
  daarat,
  tayamum,
];
