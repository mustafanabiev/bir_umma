// ignore_for_file: public_member_api_docs, sort_constructors_first
class ZikirModel {
  const ZikirModel({
    required this.orun,
  });
  final String orun;
}

const bir = ZikirModel(orun: '1-орун');

const eki = ZikirModel(orun: '2-орун');

const uch = ZikirModel(orun: '3-орун');
List<ZikirModel> zikirModel = [
  bir,
  eki,
  uch,
];
