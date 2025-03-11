part of 'app_locale_keys.dart';

class _Common {
  const _Common();
  _CommonMessages get messages => const _CommonMessages();
  _CommonErrors get errors => const _CommonErrors();
  _CommonFormatting get formatting => const _CommonFormatting();
}

class _CommonMessages {
  const _CommonMessages();
  static const _prefix = 'common.messages';
  String get loading => '$_prefix.loading'.tr();
  String get saving => '$_prefix.saving'.tr();
  String get deleting => '$_prefix.deleting'.tr();
  String get success => '$_prefix.success'.tr();
  String get error => '$_prefix.error'.tr();
  String get confirmDelete => '$_prefix.confirm_delete'.tr();
  String get unsavedChanges => '$_prefix.unsaved_changes'.tr();
  String get noData => '$_prefix.no_data'.tr();
}

class _CommonErrors {
  const _CommonErrors();
  static const _prefix = 'common.errors';
  String get generic => '$_prefix.generic'.tr();
  String get timeout => '$_prefix.timeout'.tr();
  String get serverError => '$_prefix.server_error'.tr();
  String get validationFailed => '$_prefix.validation_failed'.tr();
  String get notFound => '$_prefix.not_found'.tr();
}

class _CommonFormatting {
  const _CommonFormatting();
  static const _prefix = 'common.formatting';
  String get dueDate => '$_prefix.due_date'.tr();
  String get createdAt => '$_prefix.created_at'.tr();
  String get updatedAt => '$_prefix.updated_at'.tr();
  String get time => '$_prefix.time'.tr();
}
