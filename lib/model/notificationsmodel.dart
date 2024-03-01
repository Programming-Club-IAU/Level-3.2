class NotificationModel {
  final String avatarUrl;
  final String message;

  NotificationModel(this.avatarUrl, this.message);
}

List<NotificationModel> notifications = [
  NotificationModel(
      'https://i.pravatar.cc/150?img=68', '@user1 liked your post'),
  NotificationModel(
      'https://i.pravatar.cc/150?img=5', '@user6 commented on your post'),
  NotificationModel(
      'https://i.pravatar.cc/150?img=68', '@user1 started following you'),
  NotificationModel(
      'https://i.pravatar.cc/150?img=59', '@user4 liked your post'),
  NotificationModel(
      'https://i.pravatar.cc/150?img=10', '@user5 mentioned you in a comment'),
];
