abstract class AppRoutes {
  AppRoutes._();

  // Authentication
  static const String signUp = '/auth/sign-up';
  static const String signIn = '/auth/sign-in';

  // Main App
  static const String home = '/home';
  static const String settings = '$home/settings';
  static const String profile = '$home/profile';

  // Nested App
  static const String upsertTask = '$home/upsert-task';
  static const String todayTasks = '$home/today-tasks';
  static const String activeTasks = '$home/active-tasks';
  static const String accomplishmentTasks = '$home/accomplishment-tasks';
  static const String reports = '$home/reports';
  static const String calendar = '$home/calendar';
  static const String reminder = '$home/reminder';

  // Category
  static const String upsertCategory = '$home/upsert-category';

  // Error
  static const String error = '/error';
}

abstract class AppRouteNames {
  AppRouteNames._();

  // Authentication
  static const String signUp = 'SignUp';
  static const String signIn = 'SignIn';

  // Main App
  static const String home = 'Home';
  static const String settings = 'Settings';
  static const String profile = 'Profile';

  // Nested App
  static const String addNewTask = 'AddNewTask';
  static const String editTask = 'EditTask';
  static const String todayTasks = 'TodayTasks';
  static const String activeTasks = 'ActiveTasks';
  static const String accomplishmentTasks = 'AccomplishmentTasks';
  static const String reports = 'Reports';
  static const String calendar = 'Calendar';
  static const String reminder = 'Reminder';

// Category
  static const String addNewCategory = 'AddNewCategory';
  static const String editCategory = 'EditCategory';

  // Error
  static const String error = 'Error';
}
