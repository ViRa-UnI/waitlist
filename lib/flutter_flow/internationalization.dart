import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'ar'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? arText = '',
  }) =>
      [enText, arText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // HomePage
  {
    'jr625coq': {
      'en': 'Login to Waiting List',
      'ar': 'تسجيل الدخول إلى قائمة الانتظار',
    },
    'dxwf68b6': {
      'en': 'Email',
      'ar': 'بريد إلكتروني',
    },
    '5s2i3jdy': {
      'en': 'Enter your Email',
      'ar': 'أدخل بريدك الإلكتروني',
    },
    'ptqiss50': {
      'en': 'Password',
      'ar': 'كلمة المرور',
    },
    'ot0jna7e': {
      'en': 'Enter your Password',
      'ar': 'ادخل رقمك السري',
    },
    'jshnhtij': {
      'en': 'Login',
      'ar': 'تسجيل الدخول',
    },
    '6ejjx60a': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // guestEntry
  {
    '1tq2hf13': {
      'en': 'Enter Guest Details',
      'ar': 'أدخل تفاصيل الضيف',
    },
    'fpmmz20k': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'x2ft0rek': {
      'en': 'Add Guest',
      'ar': 'إضافة ضيف',
    },
    '5pif64kp': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'kjswjqq5': {
      'en': 'Menu',
      'ar': 'قائمة طعام',
    },
    '7ig2zl23': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    't9aoxoaf': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ListTable
  {
    'cgr7vcxa': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'gvpr6tn8': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // GuestDetailsPage
  {
    'cf4ft497': {
      'en': 'Sharq, Kuwait City',
      'ar': 'الشرق، مدينة الكويت',
    },
    'uvu0i55o': {
      'en': 'Waiting Time',
      'ar': 'وقت الانتظار',
    },
    'oxff2chf': {
      'en': 'Name: ',
      'ar': 'اسم:',
    },
    'c9se4onw': {
      'en': 'Mobile: ',
      'ar': 'متحرك:',
    },
    'g4g6d6w3': {
      'en': 'Party Size: ',
      'ar': 'حجم الحفلة:',
    },
    '3lnzvhz6': {
      'en': 'Time: ',
      'ar': 'وقت:',
    },
    'vdd0zsqt': {
      'en': 'Date: ',
      'ar': 'تاريخ:',
    },
    'fdlzy0fg': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // MainPage
  {
    'n14giklv': {
      'en': 'Add Guest',
      'ar': 'إضافة ضيف',
    },
    'aw0x9oaj': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'xaqmu1ap': {
      'en': 'Sort List',
      'ar': 'قائمة الفرز',
    },
    '2amsnl9a': {
      'en': 'Sort WT',
      'ar': 'فرز بالوزن',
    },
    'pvq5tvrq': {
      'en': 'M',
      'ar': 'م',
    },
    'owcfwnn2': {
      'en': 'F',
      'ar': 'F',
    },
    'vl56mmm3': {
      'en': 'Select Type',
      'ar': 'اختر صنف',
    },
    '3d2v63dd': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'y2pydc0j': {
      'en': 'Regular',
      'ar': 'عادي',
    },
    'nkftjdrr': {
      'en': 'Registered',
      'ar': 'مسجل',
    },
    'q2kbe0fe': {
      'en': 'Guest',
      'ar': 'ضيف',
    },
    '11ezbycu': {
      'en': 'Select Category',
      'ar': 'اختر الفئة',
    },
    'r3krunbq': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'ub8cgmep': {
      'en': 'Reset',
      'ar': 'إعادة ضبط',
    },
    'z61ny2k0': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'cky0kle8': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    '2gso5gao': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'jlmnm0cg': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'qnreduih': {
      'en': 'Seating Area',
      'ar': 'منطقة الجلوس',
    },
    '7xc28b78': {
      'en': 'WT',
      'ar': 'وزن',
    },
    '0i6xtjd2': {
      'en': 'RT',
      'ar': 'ر.ت',
    },
    'zcelkjzu': {
      'en': 'PS',
      'ar': 'ملاحظة',
    },
    'gb0lfzes': {
      'en': 'SMS ',
      'ar': 'رسالة قصيرة',
    },
    'oc0tl23k': {
      'en': 'Actions',
      'ar': 'أجراءات',
    },
    'v50kjoux': {
      'en': 'W Time',
      'ar': 'تمت زيارتها',
    },
    '9dxg9c5o': {
      'en': 'Visited',
      'ar': 'تمت زيارتها',
    },
    '4wwjwaqk': {
      'en': 'Not Visited',
      'ar': 'لم تتم زيارتها',
    },
    'x2fol8mp': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'igvfiu0e': {
      'en': 'Menu',
      'ar': 'قائمة طعام',
    },
    'yxugh615': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'edygqldv': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AppMenuPage
  {
    'iewqrfc4': {
      'en': 'Removed Entries',
      'ar': 'الإدخالات التي تمت إزالتها',
    },
    '881u7hsj': {
      'en': 'Customers',
      'ar': 'عملاء',
    },
    'j82oq3sx': {
      'en': 'Menu List',
      'ar': 'قائمة القائمة',
    },
    'iwf7x5yh': {
      'en': 'Add Menu Item',
      'ar': 'إضافة عنصر القائمة',
    },
    '9353p42z': {
      'en': 'Add Staff',
      'ar': 'أضف فريق العمل',
    },
    '0444iu49': {
      'en': 'Reports',
      'ar': 'التقارير',
    },
    'k8fm0fqy': {
      'en': 'Settings',
      'ar': 'إعدادات',
    },
    'm7ts6obq': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    '5t0si5ze': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'euh02lk9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // AddMenuItem
  {
    'b0bjn7ug': {
      'en': 'Add Menu',
      'ar': 'إضافة القائمة',
    },
    'p830ty0i': {
      'en': 'Item Name',
      'ar': 'اسم العنصر',
    },
    'yfeekuqc': {
      'en': 'Enter Item',
      'ar': 'أدخل العنصر',
    },
    '1qedhrfb': {
      'en': 'Item Desc.',
      'ar': 'وصف العنصر.',
    },
    'risd28b3': {
      'en': 'Enter Item Desc.',
      'ar': 'أدخل وصف العنصر.',
    },
    'irysqprh': {
      'en': 'Item Price',
      'ar': 'سعر السلعة',
    },
    'esfdsc8t': {
      'en': 'Enter Item Price',
      'ar': 'أدخل سعر العنصر',
    },
    'gxjyxw7j': {
      'en': 'Item Image.',
      'ar': 'صورة العنصر.',
    },
    'yebnt2nh': {
      'en': 'Enter Image URL.',
      'ar': 'أدخل عنوان URL للصورة.',
    },
    'juebzd5f': {
      'en': 'Choose Category',
      'ar': 'اختر الفئة',
    },
    'hai9w47m': {
      'en': 'Salads',
      'ar': 'سلطة',
    },
    '4uqdbsv4': {
      'en': 'Appetizers',
      'ar': 'المقبلات',
    },
    'nf4j20vn': {
      'en': 'Main Course',
      'ar': 'الطبق الرئيسي',
    },
    'nra3xvo5': {
      'en': 'Pasta & Risotto',
      'ar': 'المعكرونة والريسوتو',
    },
    '2e7r8d3y': {
      'en': 'Sliders',
      'ar': 'المتزلجون',
    },
    '81kh7jpw': {
      'en': 'Deserts',
      'ar': 'الصحارى',
    },
    'py749ll5': {
      'en': 'Soups',
      'ar': 'الحساء',
    },
    '8um0309x': {
      'en': 'Sides',
      'ar': 'الجانبين',
    },
    '639s1agy': {
      'en': 'Water & Soft Drinks',
      'ar': 'المياه والمشروبات الغازية',
    },
    '5tbm96h6': {
      'en': 'Drinks',
      'ar': 'مشروبات',
    },
    'dnkhw8xs': {
      'en': 'Please select...',
      'ar': 'الرجاء التحديد...',
    },
    'vzmysrfn': {
      'en': 'Search for an item...',
      'ar': 'البحث عن عنصر...',
    },
    'x5v9irk5': {
      'en': 'ADD ITEM',
      'ar': 'اضافة عنصر',
    },
    '26v2ch6a': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'sd7zq3eg': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'xtpvboec': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ListMenuItemsEnglish
  {
    'q33av81p': {
      'en': 'Menu',
      'ar': 'قائمة طعام',
    },
    'ssv585u2': {
      'en': 'Arabic',
      'ar': 'عربي',
    },
    'faecrgjh': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // TestPage
  {
    'ugp3lxmp': {
      'en': 'Test Page',
      'ar': 'صفحة الاختبار',
    },
    'zi2ucelg': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'kkv06y7x': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'b6zh9jyo': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    '2gm4t1tw': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'a2ve9qh2': {
      'en': 'Seating Area',
      'ar': 'منطقة الجلوس',
    },
    'u152gdmt': {
      'en': 'WT',
      'ar': 'وزن',
    },
    'v0h6bmex': {
      'en': 'RT',
      'ar': 'ر.ت',
    },
    'i9beu763': {
      'en': 'PS',
      'ar': 'ملاحظة',
    },
    '3kk2lm3x': {
      'en': 'SMS Status',
      'ar': 'حالة الرسائل القصيرة',
    },
    '3fdnoryy': {
      'en': 'Actions',
      'ar': 'أجراءات',
    },
    'lefprfp3': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // WTSupabase
  {
    'uzxer13y': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'yg1ae0oh': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'dp5qpo49': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // TestPageCopy
  {
    '242lc6iz': {
      'en': 'Test Page',
      'ar': 'صفحة الاختبار',
    },
    'g9zz27eh': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // vistedNotVisitedPage
  {
    '5n5iwxgz': {
      'en': 'Not Visited',
      'ar': 'لم تتم زيارتها',
    },
    'bwo3w3v2': {
      'en': 'Category Filter',
      'ar': 'مرشح الفئة',
    },
    '2a1luwxi': {
      'en': 'Type Filter',
      'ar': 'نوع التصفية',
    },
    'o128xsws': {
      'en': 'Sort List',
      'ar': 'قائمة الفرز',
    },
    'ybdy6boe': {
      'en': 'Sort WT',
      'ar': 'فرز بالوزن',
    },
    'kw5vdhtt': {
      'en': 'Name',
      'ar': 'اسم',
    },
    'vyjuwwnq': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'ryxo3re4': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'zhg0tlie': {
      'en': 'Category',
      'ar': 'فئة',
    },
    '2zrdn5w3': {
      'en': 'Seating Area',
      'ar': 'منطقة الجلوس',
    },
    'fia2lgmu': {
      'en': 'WT',
      'ar': 'وزن',
    },
    'dl530drm': {
      'en': 'Reason',
      'ar': 'سبب',
    },
    'xxh0odyw': {
      'en': 'PS',
      'ar': 'ملاحظة',
    },
    's4cc0o7h': {
      'en': 'Message Content',
      'ar': 'محتوى الرسالة',
    },
    'nleuebur': {
      'en': 'Actions',
      'ar': 'أجراءات',
    },
    'k58wgg7c': {
      'en': 'Visited List',
      'ar': 'قائمة الزيارة',
    },
    'sp58kqtr': {
      'en': 'Category Filter',
      'ar': 'مرشح الفئة',
    },
    'avx7p07t': {
      'en': 'Type Filter',
      'ar': 'نوع التصفية',
    },
    'dci2srjb': {
      'en': 'Sort List',
      'ar': 'قائمة الفرز',
    },
    'pqdosw35': {
      'en': 'Sort WT',
      'ar': 'فرز بالوزن',
    },
    'dp2t4r92': {
      'en': 'Name',
      'ar': 'اسم',
    },
    '5u9qcgnt': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'k3txlkab': {
      'en': 'Mobile',
      'ar': 'متحرك',
    },
    'x5n46vk7': {
      'en': 'Category',
      'ar': 'فئة',
    },
    'wd57pdy1': {
      'en': 'Seating Area',
      'ar': 'منطقة الجلوس',
    },
    '5e9dsen4': {
      'en': 'WT',
      'ar': 'وزن',
    },
    '34q70wlk': {
      'en': 'Notes',
      'ar': 'ملحوظات',
    },
    'e13reshv': {
      'en': 'PS',
      'ar': 'ملاحظة',
    },
    'ltm3lrqt': {
      'en': 'Message Content',
      'ar': 'محتوى الرسالة',
    },
    'yujyofnk': {
      'en': 'Actions',
      'ar': 'أجراءات',
    },
    't2m7suib': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'vadm9jo5': {
      'en': 'Menu',
      'ar': 'قائمة طعام',
    },
    '646jubc0': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'd7hvwoj3': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // customersTable
  {
    'k7i8t6pu': {
      'en': 'Waiting List',
      'ar': 'قائمة الانتظار',
    },
    'vpw56q8m': {
      'en': 'Menu',
      'ar': 'قائمة طعام',
    },
    'ewidmxxk': {
      'en': 'Log Out',
      'ar': 'تسجيل خروج',
    },
    'j7jjskfv': {
      'en': 'Category Filter',
      'ar': 'مرشح الفئة',
    },
    '9wn4ras5': {
      'en': 'Type Filter',
      'ar': 'نوع التصفية',
    },
    'cdhf37va': {
      'en': 'Sort List',
      'ar': 'قائمة الفرز',
    },
    'ftstcauc': {
      'en': 'Sort WT',
      'ar': 'فرز بالوزن',
    },
    'b0mpxaft': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ItemDetailsExpanded
  {
    '7cyqrac3': {
      'en': 'Back',
      'ar': 'خلف',
    },
    'ifkppwl9': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ListMenuItemsArabic
  {
    'qsetdfvj': {
      'en': 'English',
      'ar': 'إنجليزي',
    },
    '45bhdg9z': {
      'en': 'قائمة طعام',
      'ar': 'قائمة طعام',
    },
    '4guvje9m': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // ItemDetailsExpandedArabic
  {
    'qcpz2niy': {
      'en': 'Back',
      'ar': 'خلف',
    },
    '27p066xf': {
      'en': 'Home',
      'ar': 'بيت',
    },
  },
  // GuestEntryForm
  {
    '7dp0t92y': {
      'en': '',
      'ar': 'اسم الضيف',
    },
    'o2vzrpd8': {
      'en': 'Enter Guest Name',
      'ar': 'أدخل اسم الضيف',
    },
    '1h34zazm': {
      'en': 'Type',
      'ar': 'يكتب',
    },
    'oqszde7d': {
      'en': 'M',
      'ar': 'م',
    },
    '0vpajpbv': {
      'en': 'F',
      'ar': 'F',
    },
    'y3exx9qq': {
      'en': 'Couple',
      'ar': 'زوج',
    },
    'h95v3vqz': {
      'en': 'Family',
      'ar': 'عائلة',
    },
    'swdd6w9y': {
      'en': '',
      'ar': 'رقم الجوال',
    },
    'j8e78cz3': {
      'en': 'Enter Guest Mobile No.',
      'ar': 'أدخل رقم جوال الضيف',
    },
    'ujj2xced': {
      'en': 'Age',
      'ar': 'عمر',
    },
    '3fopjsib': {
      'en': 'Below 20',
      'ar': 'أقل من 20',
    },
    'ffy29gob': {
      'en': '20 - 40',
      'ar': '20 - 40',
    },
    'l0popp1o': {
      'en': 'Above 40',
      'ar': 'فوق 40',
    },
    'mkcr80hj': {
      'en': 'Category',
      'ar': 'فئة',
    },
    '6u4c06al': {
      'en': 'Visitor',
      'ar': 'زائر',
    },
    'lmgkpyyj': {
      'en': 'Guest',
      'ar': 'ضيف',
    },
    '00gtxl69': {
      'en': 'Client',
      'ar': 'عميل',
    },
    '3ec1rasv': {
      'en': 'Seating Area',
      'ar': 'منطقة الجلوس',
    },
    'tm1cqi4d': {
      'en': 'Indoor',
      'ar': 'داخلي',
    },
    'z7pjodtk': {
      'en': 'Outdoor',
      'ar': 'في الخارج',
    },
    'sbecnpf8': {
      'en': 'Any',
      'ar': 'أي',
    },
    'u64sysoi': {
      'en': 'Waiting Time',
      'ar': 'وقت الانتظار',
    },
    'rktz9ge1': {
      'en': '5',
      'ar': '5',
    },
    'j2sdaarp': {
      'en': '10',
      'ar': '10',
    },
    'c3cglqlu': {
      'en': '20',
      'ar': '20',
    },
    'ux287fyi': {
      'en': '30',
      'ar': '30',
    },
    'ee0xtlax': {
      'en': '40',
      'ar': '40',
    },
    'fypb26bm': {
      'en': '50',
      'ar': '50',
    },
    '5485r8d6': {
      'en': '60',
      'ar': '60',
    },
    '4djyujbp': {
      'en': '70',
      'ar': '70',
    },
    '98qgomar': {
      'en': '80',
      'ar': '80',
    },
    'p034eopr': {
      'en': '90',
      'ar': '90',
    },
    '52zxnjjy': {
      'en': '120',
      'ar': '120',
    },
    't4wvr16a': {
      'en': 'Party Size',
      'ar': 'حجم الحفلة',
    },
    '6v9te9kw': {
      'en': '1',
      'ar': '1',
    },
    '5991fmn1': {
      'en': '2',
      'ar': '2',
    },
    'ds7dcz5n': {
      'en': '3',
      'ar': '3',
    },
    'ez9fknrc': {
      'en': '4',
      'ar': '4',
    },
    'dhgudukj': {
      'en': '5',
      'ar': '5',
    },
    'v2hvf2v0': {
      'en': '6',
      'ar': '6',
    },
    'wgkkb6fv': {
      'en': '7',
      'ar': '7',
    },
    '17874gw6': {
      'en': '8',
      'ar': '8',
    },
    'pn9okaq0': {
      'en': '9',
      'ar': '9',
    },
    'fj5bv83h': {
      'en': 'More',
      'ar': 'أكثر',
    },
    'mfndj13t': {
      'en': 'Message Content',
      'ar': 'محتوى الرسالة',
    },
    'v5i6ir79': {
      'en': 'Message Content will be conbined here',
      'ar': 'سيتم دمج محتوى الرسالة هنا',
    },
    'p0ly6i4o': {
      'en': 'Country Code',
      'ar': 'الرقم الدولي',
    },
    'n144xyyr': {
      'en': 'Country Code',
      'ar': 'الرقم الدولي',
    },
    '3b50vz18': {
      'en': '965',
      'ar': '965',
    },
    '661t3yr6': {
      'en': 'Full Mobile Num',
      'ar': 'رقم الجوال كامل',
    },
    'wpemdmeh': {
      'en': 'Mobile Num Dynamically Populated',
      'ar': 'رقم الهاتف المحمول يتم ملؤه ديناميكيًا',
    },
    '5vgq62hp': {
      'en': 'Message Content',
      'ar': 'محتوى الرسالة',
    },
    'xam1ri6i': {
      'en': 'Message Content will be conbined here',
      'ar': 'سيتم دمج محتوى الرسالة هنا',
    },
    'sf6hpgvi': {
      'en': 'Message Content',
      'ar': 'محتوى الرسالة',
    },
    '5tni2z99': {
      'en': 'Message Content will be conbined here',
      'ar': 'سيتم دمج محتوى الرسالة هنا',
    },
    'docton1p': {
      'en': 'Status',
      'ar': 'حالة',
    },
    'bbwy7u5y': {
      'en': 'Add Guest',
      'ar': 'إضافة ضيف',
    },
  },
  // AppMenuIcon
  {
    '27fttio1': {
      'en': 'Menu',
      'ar': 'قائمة طعام',
    },
  },
  // AppMenuComp
  {
    '14h45ylf': {
      'en': 'Menu',
      'ar': 'قائمة طعام',
    },
  },
  // WaitingTimeEditComp
  {
    '48ob6ln4': {
      'en': 'Choose the Waiting Time',
      'ar': 'اختر وقت الانتظار',
    },
    'dlcxs5u9': {
      'en': '15',
      'ar': '15',
    },
    '32urlqku': {
      'en': '10',
      'ar': '10',
    },
    'o2r10zv3': {
      'en': '20',
      'ar': '20',
    },
    'vzifw31c': {
      'en': '30',
      'ar': '30',
    },
    'i9lizj1y': {
      'en': '40',
      'ar': '40',
    },
    '4xbpxej6': {
      'en': '50',
      'ar': '50',
    },
    'sckg6l7s': {
      'en': '60',
      'ar': '60',
    },
    '2995kwp3': {
      'en': '70',
      'ar': '70',
    },
    'x41raz08': {
      'en': '80',
      'ar': '80',
    },
    '4c5139g9': {
      'en': '90',
      'ar': '90',
    },
    '2l9yqka5': {
      'en': '120',
      'ar': '120',
    },
    'oirw1fze': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // NotVisitedComp
  {
    'ns1a7fqp': {
      'en': 'Select the Reason',
      'ar': 'حدد السبب',
    },
    'kqkjp4wm': {
      'en': 'Left to another restaurant',
      'ar': 'غادر إلى مطعم آخر',
    },
    'n3bass1w': {
      'en': 'Too Late',
      'ar': 'بعد فوات الأوان',
    },
    '5qx0vrzw': {
      'en': 'Not Answering',
      'ar': 'غير مجاب',
    },
    'f23722ni': {
      'en': 'Other',
      'ar': 'آخر',
    },
    'v48ykxmh': {
      'en': 'Confirm',
      'ar': 'تحديث',
    },
  },
  // VisitedComp
  {
    'x0z6vt11': {
      'en': 'Are you sure to seat the Guest ?',
      'ar': 'هل أنت متأكد من جلوس الضيف؟',
    },
    'k9rbz14f': {
      'en': 'Confirm',
      'ar': 'تحديث',
    },
  },
  // WTEditCompSupabase
  {
    'wuiihres': {
      'en': 'Choose the Waiting Time',
      'ar': 'اختر وقت الانتظار',
    },
    'am5zhhg2': {
      'en': '5',
      'ar': '5',
    },
    'p941su5j': {
      'en': '10',
      'ar': '10',
    },
    'k44a2kor': {
      'en': '20',
      'ar': '20',
    },
    'agep7nob': {
      'en': '30',
      'ar': '30',
    },
    'dz7q4b1g': {
      'en': '40',
      'ar': '40',
    },
    't3ze16ut': {
      'en': '50',
      'ar': '50',
    },
    'xm8i1ldg': {
      'en': '60',
      'ar': '60',
    },
    '3yskyq3s': {
      'en': '70',
      'ar': '70',
    },
    '240xganf': {
      'en': '80',
      'ar': '80',
    },
    '40ogtxe2': {
      'en': '90',
      'ar': '90',
    },
    'nn482yt9': {
      'en': '120',
      'ar': '120',
    },
    't5vzv1l5': {
      'en': 'Confirm',
      'ar': 'تحديث',
    },
  },
  // WaitListTable_Supabase
  {
    'jdaxkm22': {
      'en': 'RT',
      'ar': 'ر.ت',
    },
  },
  // categoryFilter
  {
    'r22m7yjf': {
      'en': 'Select Category',
      'ar': 'اختر الفئة',
    },
    'n2e75ap8': {
      'en': 'Regular',
      'ar': 'عادي',
    },
    '3ewdpwun': {
      'en': 'Registered',
      'ar': 'مسجل',
    },
    'qj21rl3y': {
      'en': 'Guest',
      'ar': 'ضيف',
    },
    'yf4i3gmn': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // typeFilter
  {
    'b6bgglc0': {
      'en': 'Select Type',
      'ar': 'اختر صنف',
    },
    '02qbc1g1': {
      'en': 'M',
      'ar': 'م',
    },
    'hx3edql0': {
      'en': 'F',
      'ar': 'F',
    },
    'q7yruk4g': {
      'en': 'Update',
      'ar': 'تحديث',
    },
  },
  // Miscellaneous
  {
    'qo8infmt': {
      'en': 'Allow Notifications ?',
      'ar': 'السماح بالإخطارات؟',
    },
    '2ngtsw9u': {
      'en': '',
      'ar': '',
    },
    'vqfi2ofy': {
      'en': '',
      'ar': '',
    },
    '0u53scxa': {
      'en': '',
      'ar': '',
    },
    'v1mgwa55': {
      'en': '',
      'ar': '',
    },
    'c5b4p3py': {
      'en': '',
      'ar': '',
    },
    '4itajd4x': {
      'en': '',
      'ar': '',
    },
    'doyjy56v': {
      'en': '',
      'ar': '',
    },
    'eaxt5f09': {
      'en': '',
      'ar': '',
    },
    'xcvig9v1': {
      'en': '',
      'ar': '',
    },
    'mixesi0l': {
      'en': '',
      'ar': '',
    },
    'nt3gfljw': {
      'en': '',
      'ar': '',
    },
    'i16ovpci': {
      'en': '',
      'ar': '',
    },
    'jfrue3e9': {
      'en': '',
      'ar': '',
    },
    'g9fedetl': {
      'en': '',
      'ar': '',
    },
    'p4dsb9tq': {
      'en': '',
      'ar': '',
    },
    'sdc3mpo6': {
      'en': '',
      'ar': '',
    },
    'gvdm9aba': {
      'en': '',
      'ar': '',
    },
    '5lb7m1wg': {
      'en': '',
      'ar': '',
    },
    'sn3jxpme': {
      'en': '',
      'ar': '',
    },
    '5g3vj68f': {
      'en': '',
      'ar': '',
    },
    'y17h5u53': {
      'en': '',
      'ar': '',
    },
    'p756y77b': {
      'en': '',
      'ar': '',
    },
    'dpdia6fd': {
      'en': '',
      'ar': '',
    },
  },
].reduce((a, b) => a..addAll(b));
