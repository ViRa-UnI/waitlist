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
      'ar': '',
    },
    'dxwf68b6': {
      'en': 'Email',
      'ar': '',
    },
    '5s2i3jdy': {
      'en': 'Enter your Email',
      'ar': '',
    },
    'ptqiss50': {
      'en': 'Password',
      'ar': '',
    },
    'ot0jna7e': {
      'en': 'Enter your Password',
      'ar': '',
    },
    'jshnhtij': {
      'en': 'Login',
      'ar': '',
    },
    '6ejjx60a': {
      'en': 'Home',
      'ar': '',
    },
  },
  // guestEntry
  {
    '1tq2hf13': {
      'en': 'Enter Guest Details',
      'ar': '',
    },
    'fpmmz20k': {
      'en': 'Waiting List',
      'ar': '',
    },
    'x2ft0rek': {
      'en': 'Add Guest',
      'ar': '',
    },
    '5pif64kp': {
      'en': 'Log Out',
      'ar': '',
    },
    'kjswjqq5': {
      'en': 'Menu',
      'ar': '',
    },
    '7ig2zl23': {
      'en': 'Search for an item...',
      'ar': '',
    },
    't9aoxoaf': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ListTable
  {
    'cgr7vcxa': {
      'en': 'Waiting List',
      'ar': '',
    },
    'gvpr6tn8': {
      'en': 'Home',
      'ar': '',
    },
  },
  // GuestDetailsPage
  {
    'cf4ft497': {
      'en': 'Sharq, Kuwait City',
      'ar': '',
    },
    'uvu0i55o': {
      'en': 'Waiting Time',
      'ar': '',
    },
    'oxff2chf': {
      'en': 'Name: ',
      'ar': '',
    },
    'c9se4onw': {
      'en': 'Mobile: ',
      'ar': '',
    },
    'g4g6d6w3': {
      'en': 'Party Size: ',
      'ar': '',
    },
    '3lnzvhz6': {
      'en': 'Time: ',
      'ar': '',
    },
    'vdd0zsqt': {
      'en': 'Date: ',
      'ar': '',
    },
    'fdlzy0fg': {
      'en': 'Home',
      'ar': '',
    },
  },
  // MainPage
  {
    'n14giklv': {
      'en': 'Add Guest',
      'ar': '',
    },
    'aw0x9oaj': {
      'en': 'Waiting List',
      'ar': '',
    },
    'xaqmu1ap': {
      'en': 'Sort List',
      'ar': '',
    },
    '2amsnl9a': {
      'en': 'Sort WT',
      'ar': '',
    },
    'pvq5tvrq': {
      'en': 'M',
      'ar': '',
    },
    'owcfwnn2': {
      'en': 'F',
      'ar': '',
    },
    'vl56mmm3': {
      'en': 'Select Type',
      'ar': '',
    },
    '3d2v63dd': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'y2pydc0j': {
      'en': 'Regular',
      'ar': '',
    },
    'nkftjdrr': {
      'en': 'Registered',
      'ar': '',
    },
    'q2kbe0fe': {
      'en': 'Guest',
      'ar': '',
    },
    '11ezbycu': {
      'en': 'Select Category',
      'ar': '',
    },
    'r3krunbq': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'ub8cgmep': {
      'en': 'Reset',
      'ar': '',
    },
    'z61ny2k0': {
      'en': 'Name',
      'ar': '',
    },
    'cky0kle8': {
      'en': 'Type',
      'ar': '',
    },
    '2gso5gao': {
      'en': 'Mobile',
      'ar': '',
    },
    'jlmnm0cg': {
      'en': 'Category',
      'ar': '',
    },
    'qnreduih': {
      'en': 'Seating Area',
      'ar': '',
    },
    '7xc28b78': {
      'en': 'WT',
      'ar': '',
    },
    '0i6xtjd2': {
      'en': 'RT',
      'ar': '',
    },
    'zcelkjzu': {
      'en': 'PS',
      'ar': '',
    },
    'gb0lfzes': {
      'en': 'SMS ',
      'ar': '',
    },
    'muq2r4tc': {
      'en': 'Sent',
      'ar': '',
    },
    'oc0tl23k': {
      'en': 'Actions',
      'ar': '',
    },
    'ep7udogh': {
      'en': 'Visited',
      'ar': '',
    },
    'f9vn5sk5': {
      'en': 'Not Visited',
      'ar': '',
    },
    'x2fol8mp': {
      'en': 'Waiting List',
      'ar': '',
    },
    'igvfiu0e': {
      'en': 'Menu',
      'ar': '',
    },
    'yxugh615': {
      'en': 'Log Out',
      'ar': '',
    },
    'edygqldv': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AppMenuPage
  {
    'iewqrfc4': {
      'en': 'Removed Entries',
      'ar': '',
    },
    '881u7hsj': {
      'en': 'Customers',
      'ar': '',
    },
    'j82oq3sx': {
      'en': 'Menu List',
      'ar': '',
    },
    'iwf7x5yh': {
      'en': 'Add Menu Item',
      'ar': '',
    },
    '9353p42z': {
      'en': 'Add Staff',
      'ar': '',
    },
    '0444iu49': {
      'en': 'Reports',
      'ar': '',
    },
    'k8fm0fqy': {
      'en': 'Settings',
      'ar': '',
    },
    'm7ts6obq': {
      'en': 'Waiting List',
      'ar': '',
    },
    '5t0si5ze': {
      'en': 'Log Out',
      'ar': '',
    },
    'euh02lk9': {
      'en': 'Home',
      'ar': '',
    },
  },
  // AddMenuItem
  {
    'b0bjn7ug': {
      'en': 'Add Menu',
      'ar': '',
    },
    'p830ty0i': {
      'en': 'Item Name',
      'ar': '',
    },
    'yfeekuqc': {
      'en': 'Enter Item',
      'ar': '',
    },
    '1qedhrfb': {
      'en': 'Item Desc.',
      'ar': '',
    },
    'risd28b3': {
      'en': 'Enter Item Desc.',
      'ar': '',
    },
    'irysqprh': {
      'en': 'Item Price',
      'ar': '',
    },
    'esfdsc8t': {
      'en': 'Enter Item Price',
      'ar': '',
    },
    'gxjyxw7j': {
      'en': 'Item Image.',
      'ar': '',
    },
    'yebnt2nh': {
      'en': 'Enter Image URL.',
      'ar': '',
    },
    'juebzd5f': {
      'en': 'Choose Category',
      'ar': '',
    },
    'hai9w47m': {
      'en': 'Salads',
      'ar': '',
    },
    '4uqdbsv4': {
      'en': 'Appetizers',
      'ar': '',
    },
    'nf4j20vn': {
      'en': 'Main Course',
      'ar': '',
    },
    'nra3xvo5': {
      'en': 'Pasta & Risotto',
      'ar': '',
    },
    '2e7r8d3y': {
      'en': 'Sliders',
      'ar': '',
    },
    '81kh7jpw': {
      'en': 'Deserts',
      'ar': '',
    },
    'py749ll5': {
      'en': 'Soups',
      'ar': '',
    },
    '8um0309x': {
      'en': 'Sides',
      'ar': '',
    },
    '639s1agy': {
      'en': 'Water & Soft Drinks',
      'ar': '',
    },
    '5tbm96h6': {
      'en': 'Drinks',
      'ar': '',
    },
    'dnkhw8xs': {
      'en': 'Please select...',
      'ar': '',
    },
    'vzmysrfn': {
      'en': 'Search for an item...',
      'ar': '',
    },
    'x5v9irk5': {
      'en': 'ADD ITEM',
      'ar': '',
    },
    '26v2ch6a': {
      'en': 'Waiting List',
      'ar': '',
    },
    'sd7zq3eg': {
      'en': 'Log Out',
      'ar': '',
    },
    'xtpvboec': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ListMenuItems
  {
    'q33av81p': {
      'en': 'Chops Restaurant',
      'ar': '',
    },
    'faecrgjh': {
      'en': 'Home',
      'ar': '',
    },
  },
  // TestPage
  {
    'ugp3lxmp': {
      'en': 'Test Page',
      'ar': '',
    },
    'zi2ucelg': {
      'en': 'Name',
      'ar': '',
    },
    'kkv06y7x': {
      'en': 'Type',
      'ar': '',
    },
    'b6zh9jyo': {
      'en': 'Mobile',
      'ar': '',
    },
    '2gm4t1tw': {
      'en': 'Category',
      'ar': '',
    },
    'a2ve9qh2': {
      'en': 'Seating Area',
      'ar': '',
    },
    'u152gdmt': {
      'en': 'WT',
      'ar': '',
    },
    'v0h6bmex': {
      'en': 'RT',
      'ar': '',
    },
    'i9beu763': {
      'en': 'PS',
      'ar': '',
    },
    '3kk2lm3x': {
      'en': 'SMS Status',
      'ar': '',
    },
    '3fdnoryy': {
      'en': 'Actions',
      'ar': '',
    },
    'lefprfp3': {
      'en': 'Home',
      'ar': '',
    },
  },
  // WTSupabase
  {
    'uzxer13y': {
      'en': 'Waiting List',
      'ar': '',
    },
    'yg1ae0oh': {
      'en': 'Log Out',
      'ar': '',
    },
    'dp5qpo49': {
      'en': 'Home',
      'ar': '',
    },
  },
  // TestPageCopy
  {
    '242lc6iz': {
      'en': 'Test Page',
      'ar': '',
    },
    'g9zz27eh': {
      'en': 'Home',
      'ar': '',
    },
  },
  // vistedNotVisitedPage
  {
    '5n5iwxgz': {
      'en': 'Not Visited',
      'ar': '',
    },
    'bwo3w3v2': {
      'en': 'Category Filter',
      'ar': '',
    },
    '2a1luwxi': {
      'en': 'Type Filter',
      'ar': '',
    },
    'o128xsws': {
      'en': 'Sort List',
      'ar': '',
    },
    'ybdy6boe': {
      'en': 'Sort WT',
      'ar': '',
    },
    'kw5vdhtt': {
      'en': 'Name',
      'ar': '',
    },
    'vyjuwwnq': {
      'en': 'Type',
      'ar': '',
    },
    'ryxo3re4': {
      'en': 'Mobile',
      'ar': '',
    },
    'zhg0tlie': {
      'en': 'Category',
      'ar': '',
    },
    '2zrdn5w3': {
      'en': 'Seating Area',
      'ar': '',
    },
    'fia2lgmu': {
      'en': 'WT',
      'ar': '',
    },
    'dl530drm': {
      'en': 'Reason',
      'ar': '',
    },
    'xxh0odyw': {
      'en': 'PS',
      'ar': '',
    },
    's4cc0o7h': {
      'en': 'Message Content',
      'ar': '',
    },
    'nleuebur': {
      'en': 'Actions',
      'ar': '',
    },
    'k58wgg7c': {
      'en': 'Visited List',
      'ar': '',
    },
    'sp58kqtr': {
      'en': 'Category Filter',
      'ar': '',
    },
    'avx7p07t': {
      'en': 'Type Filter',
      'ar': '',
    },
    'dci2srjb': {
      'en': 'Sort List',
      'ar': '',
    },
    'pqdosw35': {
      'en': 'Sort WT',
      'ar': '',
    },
    'dp2t4r92': {
      'en': 'Name',
      'ar': '',
    },
    '5u9qcgnt': {
      'en': 'Type',
      'ar': '',
    },
    'k3txlkab': {
      'en': 'Mobile',
      'ar': '',
    },
    'x5n46vk7': {
      'en': 'Category',
      'ar': '',
    },
    'wd57pdy1': {
      'en': 'Seating Area',
      'ar': '',
    },
    '5e9dsen4': {
      'en': 'WT',
      'ar': '',
    },
    '34q70wlk': {
      'en': 'Notes',
      'ar': '',
    },
    'e13reshv': {
      'en': 'PS',
      'ar': '',
    },
    'ltm3lrqt': {
      'en': 'Message Content',
      'ar': '',
    },
    'yujyofnk': {
      'en': 'Actions',
      'ar': '',
    },
    't2m7suib': {
      'en': 'Waiting List',
      'ar': '',
    },
    'vadm9jo5': {
      'en': 'Menu',
      'ar': '',
    },
    '646jubc0': {
      'en': 'Log Out',
      'ar': '',
    },
    'd7hvwoj3': {
      'en': 'Home',
      'ar': '',
    },
  },
  // customersTable
  {
    'k7i8t6pu': {
      'en': 'Waiting List',
      'ar': '',
    },
    'vpw56q8m': {
      'en': 'Menu',
      'ar': '',
    },
    'ewidmxxk': {
      'en': 'Log Out',
      'ar': '',
    },
    'j7jjskfv': {
      'en': 'Category Filter',
      'ar': '',
    },
    '9wn4ras5': {
      'en': 'Type Filter',
      'ar': '',
    },
    'cdhf37va': {
      'en': 'Sort List',
      'ar': '',
    },
    'ftstcauc': {
      'en': 'Sort WT',
      'ar': '',
    },
    '5go17gbv': {
      'en': 'Name',
      'ar': '',
    },
    'o21nlup4': {
      'en': 'Type',
      'ar': '',
    },
    'pvzy8iq6': {
      'en': 'Age',
      'ar': '',
    },
    '0frsh8jj': {
      'en': 'Mobile',
      'ar': '',
    },
    'oi1h05gz': {
      'en': 'Category',
      'ar': '',
    },
    '8tdqg2gy': {
      'en': 'Actions',
      'ar': '',
    },
    'b0mpxaft': {
      'en': 'Home',
      'ar': '',
    },
  },
  // ItemDetailsExpanded
  {
    'v1bqxsf0': {
      'en': 'Hello World',
      'ar': '',
    },
    '7cyqrac3': {
      'en': 'Back',
      'ar': '',
    },
    'ifkppwl9': {
      'en': 'Home',
      'ar': '',
    },
  },
  // GuestEntryForm
  {
    '7dp0t92y': {
      'en': 'Guest Name',
      'ar': '',
    },
    'o2vzrpd8': {
      'en': 'Enter Guest Name',
      'ar': '',
    },
    '1h34zazm': {
      'en': 'Type',
      'ar': '',
    },
    'oqszde7d': {
      'en': 'M',
      'ar': '',
    },
    '0vpajpbv': {
      'en': 'F',
      'ar': '',
    },
    'y3exx9qq': {
      'en': 'Couple',
      'ar': '',
    },
    'h95v3vqz': {
      'en': 'Family',
      'ar': '',
    },
    'swdd6w9y': {
      'en': 'Mobile Num',
      'ar': '',
    },
    'j8e78cz3': {
      'en': 'Enter Guest Mobile No.',
      'ar': '',
    },
    'ujj2xced': {
      'en': 'Age',
      'ar': '',
    },
    '3fopjsib': {
      'en': 'Below 20',
      'ar': '',
    },
    'ffy29gob': {
      'en': '20 - 40',
      'ar': '',
    },
    'l0popp1o': {
      'en': 'Above 40',
      'ar': '',
    },
    'mkcr80hj': {
      'en': 'Category',
      'ar': '',
    },
    '6u4c06al': {
      'en': 'Visitor',
      'ar': '',
    },
    'lmgkpyyj': {
      'en': 'Guest',
      'ar': '',
    },
    '00gtxl69': {
      'en': 'Client',
      'ar': '',
    },
    '3ec1rasv': {
      'en': 'Seating Area',
      'ar': '',
    },
    'tm1cqi4d': {
      'en': 'Indoor',
      'ar': '',
    },
    'z7pjodtk': {
      'en': 'Outdoor',
      'ar': '',
    },
    'sbecnpf8': {
      'en': 'Any',
      'ar': '',
    },
    'u64sysoi': {
      'en': 'Waiting Time',
      'ar': '',
    },
    'rktz9ge1': {
      'en': '5',
      'ar': '',
    },
    'j2sdaarp': {
      'en': '10',
      'ar': '',
    },
    'c3cglqlu': {
      'en': '20',
      'ar': '',
    },
    'ux287fyi': {
      'en': '30',
      'ar': '',
    },
    'ee0xtlax': {
      'en': '40',
      'ar': '',
    },
    'fypb26bm': {
      'en': '50',
      'ar': '',
    },
    '5485r8d6': {
      'en': '60',
      'ar': '',
    },
    '4djyujbp': {
      'en': '70',
      'ar': '',
    },
    '98qgomar': {
      'en': '80',
      'ar': '',
    },
    'p034eopr': {
      'en': '90',
      'ar': '',
    },
    '52zxnjjy': {
      'en': '120',
      'ar': '',
    },
    't4wvr16a': {
      'en': 'Party Size',
      'ar': '',
    },
    '6v9te9kw': {
      'en': '1',
      'ar': '',
    },
    '5991fmn1': {
      'en': '2',
      'ar': '',
    },
    'ds7dcz5n': {
      'en': '3',
      'ar': '',
    },
    'ez9fknrc': {
      'en': '4',
      'ar': '',
    },
    'dhgudukj': {
      'en': '5',
      'ar': '',
    },
    'v2hvf2v0': {
      'en': '6',
      'ar': '',
    },
    'wgkkb6fv': {
      'en': '7',
      'ar': '',
    },
    '17874gw6': {
      'en': '8',
      'ar': '',
    },
    'pn9okaq0': {
      'en': '9',
      'ar': '',
    },
    'fj5bv83h': {
      'en': 'More',
      'ar': '',
    },
    'mfndj13t': {
      'en': 'Message Content',
      'ar': '',
    },
    'v5i6ir79': {
      'en': 'Message Content will be conbined here',
      'ar': '',
    },
    'p0ly6i4o': {
      'en': 'Country Code',
      'ar': '',
    },
    'n144xyyr': {
      'en': 'Country Code',
      'ar': '',
    },
    '3b50vz18': {
      'en': '965',
      'ar': '',
    },
    '661t3yr6': {
      'en': 'Full Mobile Num',
      'ar': '',
    },
    'wpemdmeh': {
      'en': 'Mobile Num Dynamically Populated',
      'ar': '',
    },
    '5vgq62hp': {
      'en': 'Message Content',
      'ar': '',
    },
    'xam1ri6i': {
      'en': 'Message Content will be conbined here',
      'ar': '',
    },
    'sf6hpgvi': {
      'en': 'Message Content',
      'ar': '',
    },
    '5tni2z99': {
      'en': 'Message Content will be conbined here',
      'ar': '',
    },
    'docton1p': {
      'en': 'Status',
      'ar': '',
    },
    'bbwy7u5y': {
      'en': 'Add Guest',
      'ar': '',
    },
  },
  // AppMenuIcon
  {
    '27fttio1': {
      'en': 'Menu',
      'ar': '',
    },
  },
  // AppMenuComp
  {
    '14h45ylf': {
      'en': 'Menu',
      'ar': '',
    },
  },
  // WaitingTimeEditComp
  {
    '48ob6ln4': {
      'en': 'Choose the Waiting Time',
      'ar': '',
    },
    'dlcxs5u9': {
      'en': '15',
      'ar': '',
    },
    '32urlqku': {
      'en': '10',
      'ar': '',
    },
    'o2r10zv3': {
      'en': '20',
      'ar': '',
    },
    'vzifw31c': {
      'en': '30',
      'ar': '',
    },
    'i9lizj1y': {
      'en': '40',
      'ar': '',
    },
    '4xbpxej6': {
      'en': '50',
      'ar': '',
    },
    'sckg6l7s': {
      'en': '60',
      'ar': '',
    },
    '2995kwp3': {
      'en': '70',
      'ar': '',
    },
    'x41raz08': {
      'en': '80',
      'ar': '',
    },
    '4c5139g9': {
      'en': '90',
      'ar': '',
    },
    '2l9yqka5': {
      'en': '120',
      'ar': '',
    },
    'oirw1fze': {
      'en': 'Update',
      'ar': '',
    },
  },
  // NotVisitedComp
  {
    'ns1a7fqp': {
      'en': 'Select the Reason',
      'ar': '',
    },
    'kqkjp4wm': {
      'en': 'Left to another restaurant',
      'ar': '',
    },
    'n3bass1w': {
      'en': 'Too Late',
      'ar': '',
    },
    '5qx0vrzw': {
      'en': 'Not Answering',
      'ar': '',
    },
    'f23722ni': {
      'en': 'Other',
      'ar': '',
    },
    'v48ykxmh': {
      'en': 'Update',
      'ar': '',
    },
  },
  // VisitedComp
  {
    'x0z6vt11': {
      'en': 'Are you sure to seat the Guest ?',
      'ar': '',
    },
    'k9rbz14f': {
      'en': 'Update',
      'ar': '',
    },
  },
  // WTEditCompSupabase
  {
    'wuiihres': {
      'en': 'Choose the Waiting Time',
      'ar': '',
    },
    'am5zhhg2': {
      'en': '5',
      'ar': '',
    },
    'p941su5j': {
      'en': '10',
      'ar': '',
    },
    'k44a2kor': {
      'en': '20',
      'ar': '',
    },
    'agep7nob': {
      'en': '30',
      'ar': '',
    },
    'dz7q4b1g': {
      'en': '40',
      'ar': '',
    },
    't3ze16ut': {
      'en': '50',
      'ar': '',
    },
    'xm8i1ldg': {
      'en': '60',
      'ar': '',
    },
    '3yskyq3s': {
      'en': '70',
      'ar': '',
    },
    '240xganf': {
      'en': '80',
      'ar': '',
    },
    '40ogtxe2': {
      'en': '90',
      'ar': '',
    },
    'nn482yt9': {
      'en': '120',
      'ar': '',
    },
    't5vzv1l5': {
      'en': 'Update',
      'ar': '',
    },
  },
  // WaitListTable_Supabase
  {
    'jdaxkm22': {
      'en': 'RT',
      'ar': '',
    },
  },
  // categoryFilter
  {
    'r22m7yjf': {
      'en': 'Select Category',
      'ar': '',
    },
    'n2e75ap8': {
      'en': 'Regular',
      'ar': '',
    },
    '3ewdpwun': {
      'en': 'Registered',
      'ar': '',
    },
    'qj21rl3y': {
      'en': 'Guest',
      'ar': '',
    },
    'yf4i3gmn': {
      'en': 'Update',
      'ar': '',
    },
  },
  // typeFilter
  {
    'b6bgglc0': {
      'en': 'Select Type',
      'ar': '',
    },
    '02qbc1g1': {
      'en': 'M',
      'ar': '',
    },
    'hx3edql0': {
      'en': 'F',
      'ar': '',
    },
    'q7yruk4g': {
      'en': 'Update',
      'ar': '',
    },
  },
  // Miscellaneous
  {
    'qo8infmt': {
      'en': 'Allow Notifications ?',
      'ar': '',
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
