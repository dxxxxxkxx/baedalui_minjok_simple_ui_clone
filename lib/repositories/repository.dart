class Repository {
  final List<String> _addresses = ['우리집', '서올 송파구 위례성대로 2 장은빌딩 2층'];

  final String _hintText = '닭발? 순대? 곱창?';

  final List<String> _tags = [
    '맵단짠 찜닭',
    '쿠폰 받기🎟️',
    '집밥🏠',
    '초밥🍣',
    '찜 많은 가게',
    '족발🍖',
    '재주문 많아요',
    '얼얼한 마라탕',
    '샐러드🥗',
    '추천 더 보기👉'
  ];

  final List<String> _banners = [
    'http://www.dailypop.kr/news/photo/201810/35546_58614_2549.jpg',
    'https://www.safetimes.co.kr/news/photo/202112/104558_86910_138.jpg'
  ];

  List<String> get addresses => _addresses;

  String get hintText => _hintText;

  List<String> get banners => _banners;

  List<String> get tags => _tags;
}
