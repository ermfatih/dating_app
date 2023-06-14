enum LottieItems { themeChange }

extension LottieItemsExtension on LottieItems {
  String _path() {
    switch (this) {
      case LottieItems.themeChange:
        return 'theme_change';
    }
  }
  String get lottiePath => 'asset/lottie/${_path()}.json';
}
