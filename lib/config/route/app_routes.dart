import 'package:get/get.dart';
import 'package:tasaned_project/features/another_screens/art_details/presentation/screens/art_details_screen.dart';
import 'package:tasaned_project/features/another_screens/art_details/presentation/screens/check_out_screen.dart';
import 'package:tasaned_project/features/another_screens/art_details/presentation/screens/payment_confirmation_screen.dart';
import 'package:tasaned_project/features/another_screens/artist_details/presentation/screens/artist_details_screen.dart';
import 'package:tasaned_project/features/another_screens/category/presentation/screens/category_Screen.dart';
import 'package:tasaned_project/features/another_screens/exhibition/presentation/screens/exhibition_screen.dart';
import 'package:tasaned_project/features/another_screens/learn_grow/presentation/screens/learn_and_grow_screen.dart';
import 'package:tasaned_project/features/another_screens/my_listing_screen/presentation/screens/my_listing_screen.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/screens/feature_arts_screen.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/screens/home_screen.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/screens/popular_artist_screen.dart';
import 'package:tasaned_project/features/another_screens/user_home/presentation/screens/upcomming_exhibition_screen.dart';
import '../../features/another_screens/grandle_gallery/presentation/screens/grandle_gallery.dart';
import '../../features/another_screens/nunny_booking/presentation/screens/nunny_booking_screen.dart';
import '../../features/another_screens/parent_booking/presentation/screens/parent_booking_screen.dart';
import '../../features/another_screens/saved/presentation/screens/saved_screens.dart';
import '../../features/auth/change_password/presentation/screen/change_password_screen.dart';
import '../../features/auth/forgot password/presentation/screen/create_password.dart';
import '../../features/auth/forgot password/presentation/screen/forgot_password.dart';
import '../../features/auth/forgot password/presentation/screen/verify_screen.dart';
import '../../features/auth/sign in/presentation/screen/sign_in_screen.dart';
import '../../features/auth/sign up/presentation/screen/sign_up_screen.dart';
import '../../features/auth/sign up/presentation/screen/verify_user.dart';
import '../../features/message/presentation/screen/chat_screen.dart';
import '../../features/message/presentation/screen/message_screen.dart';
import '../../features/notifications/presentation/screen/notifications_screen.dart';
import '../../features/onboarding_screen/screens/onboarding_screen.dart';
import '../../features/profile/presentation/screen/edit_profile.dart';
import '../../features/profile/presentation/screen/notification_settings.dart';
import '../../features/profile/presentation/screen/profile_screen.dart';
import '../../features/setting/presentation/screen/about_us_screen.dart';
import '../../features/setting/presentation/screen/help_and_support_screen.dart';
import '../../features/setting/presentation/screen/privacy_policy_screen.dart';
import '../../features/setting/presentation/screen/setting_screen.dart';
import '../../features/setting/presentation/screen/terms_of_services_screen.dart';
import '../../features/splash/splash_screen.dart';

class AppRoutes {
  static const String test = "/test_screen.dart";
  static const String splash = "/splash_screen.dart";
  static const String onboarding = "/onboarding_screen.dart";
  static const String signUp = "/sign_up_screen.dart";
  static const String verifyUser = "/verify_user.dart";
  static const String signIn = "/sign_in_screen.dart";
  static const String forgotPassword = "/forgot_password.dart";
  static const String verifyEmail = "/verify_screen.dart";
  static const String createPassword = "/create_password.dart";
  static const String changePassword = "/change_password_screen.dart";
  static const String notifications = "/notifications_screen.dart";
  static const String chat = "/chat_screen.dart";
  static const String message = "/message_screen.dart";
  static const String profile = "/profile_screen.dart";
  static const String editProfile = "/edit_profile.dart";
  static const String privacyPolicy = "/privacy_policy_screen.dart";
  static const String termsOfServices = "/terms_of_services_screen.dart";
  static const String setting = "/setting_screen.dart";
  static const String onboardingTwoScreen = "/onboardingTwoScreen.dart";
  static const String onboardingThreeScreen = "/onboardingThreeScreen.dart";
  static const String mamaCareScreen = "/mamaCareScreen.dart";
  static const String accountVerifiedScreen = "/account_verified_screen.dart";
  static const String addPhotoScreen = "/add_photo_screen.dart";
  static const String parentHomeScreen = "/parent_home.dart";
  static const String parentBookingScreen = "/parentBookingScreen.dart";
  static const String savedScreen = "/savedScreen.dart";
  static const String children = "/children.dart";
  static const String nunnySeeAllScreen = "/nunnySeeAllScreen.dart";
  static const String nunnyDetailsScreen = "/nunnyDetailsScreen.dart";
  static const String requestBookingScreen = "/requestBookingScreen.dart";
  static const String addChildrenScreen = "/addChildrenScreen.dart";
  static const String editChildrenScreen = "/editChildrenScreen.dart";
  static const String notificationSettings = "/notificationSettings.dart";
  static const String helpAndSupportScreen = "/helpAndSupportScreen.dart";
  static const String aboutUsScreen = "/aboutUsScreen.dart";
  static const String nunnyBookingScreen = "/nunnyBookingScreen.dart";
  static const String nunnHomeScreen = "/nunnHomeScreen.dart";
  static const String onGoingScreen = "/onGoingScreen.dart";
  static const String upCommingScreen = "/upCommingScreen.dart";
  static const String galleryScreen = "/galleryScreen.dart";
  static const String addPhotoGallery = "/addPhotoGallery.dart";
  static const String nunnyBookingDetailsScreen = "/NunnyBookingDetailsScreen.dart";
  static const String certificationsExperienceScreen = "/certificationsExperienceScreen.dart";
  static const String preferenceScreen = "/preferenceScreen";
  static const String serviceRateScreen = "/ServiceRateScreen";
  static const String availabilityScreen = "/availabilityScreen";
  static const String rescheduleBooking = "/rescheduleBooking";



  //============================
  static const String userHomeScreen = "/userHomeScreen";
  static const String categoryScreen = "/categoryScreen";
  static const String learnAndGrowScreen = "/learnAndGrowScreen";
  static const String featureArtsScreen = "/featureArtsScreen";
  static const String popularArtistScreen = "/popularArtistScreen";
  static const String upComingExhibitionScreen = "/upComingExhibitionScreen";
  static const String artDetailsScreen = "/artDetailsScreen";
  static const String checkOutScreen = "/checkOutScreen";
  static const String grandleGallery = "/grandleGallery";
  static const String artistDetailsScreen = "/artistDetailsScreen";
  static const String paymentConfirmationScreen = "/paymentConfirmationScreen";
  static const String exhibitionScreen = "/exhibitionScreen";
  static const String myListingScreen = "/myListingScreen";



  static List<GetPage> routes = [
    GetPage(name: splash, page: () => const SplashScreen()),
    GetPage(name: onboarding, page: () =>  OnboardingScreen()),
    GetPage(name: signUp, page: () => SignUpScreen()),
    GetPage(name: verifyUser, page: () => const VerifyUser()),
    GetPage(name: signIn, page: () => SignInScreen()),
    GetPage(name: forgotPassword, page: () => ForgotPasswordScreen()),
    GetPage(name: verifyEmail, page: () => const VerifyScreen()),
    GetPage(name: createPassword, page: () => CreatePassword()),
    GetPage(name: changePassword, page: () => ChangePasswordScreen()),
    GetPage(name: notifications, page: () => const NotificationScreen()),
    GetPage(name: chat, page: () => const ChatListScreen()),
    GetPage(name: message, page: () => const MessageScreen()),
    GetPage(name: profile, page: () => const ProfileScreen()),
    GetPage(name: editProfile, page: () => EditProfile()),
    GetPage(name: privacyPolicy, page: () => const PrivacyPolicyScreen()),
    GetPage(name: termsOfServices, page: () => const TermsOfServicesScreen()),
    GetPage(name: setting, page: () => const SettingScreen()),

    GetPage(name: parentBookingScreen, page: () => ParentBookingScreen()),
    GetPage(name: savedScreen, page: () => SavedScreens()),
    GetPage(name: notificationSettings, page: () => NotificationSettings()),
    GetPage(name: helpAndSupportScreen, page: () => HelpAndSupportScreen()),
    GetPage(name: aboutUsScreen, page: () => AboutUsScreen()),
    GetPage(name: nunnyBookingScreen, page: () => NunnyBookingScreen()),


    //================ user home screen

    GetPage(name: userHomeScreen, page: () => UserHomeScreen()),
    GetPage(name: categoryScreen, page: () => CategoryScreen()),
    GetPage(name: learnAndGrowScreen, page: () => LearnAndGrowScreen()),
    GetPage(name: featureArtsScreen, page: () => FeatureArtsScreen()),
    GetPage(name: popularArtistScreen, page: () => PopularArtistScreen()),
    GetPage(name: upComingExhibitionScreen, page: () => UpComingExhibitionScreen()),
    GetPage(name: artDetailsScreen, page: () => GrandleGalleryScreen()),
    GetPage(name: checkOutScreen, page: () => CheckOutScreen()),
    GetPage(name: paymentConfirmationScreen, page: () => PaymentConfirmationScreen()),
    GetPage(name: grandleGallery, page: () => GrandleGallery()),
    GetPage(name: artistDetailsScreen, page: () => ArtistDetailsScreen()),
    GetPage(name: exhibitionScreen, page: () => ExhibitionScreen()),
    GetPage(name: myListingScreen, page: () => MyListingScreen()),

  ];
}
