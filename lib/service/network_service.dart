import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:task_list_app/model/task.dart';

final networkServiceProvider = Provider<NetworkService>((ref) {
  return NetworkService();
});

class NetworkService {
  NetworkService();

  Future<List<Task>> getTasks() async {
    final now = DateTime.now();

    final descriptionText =
        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer rutrum condimentum odio id eleifend. Interdum et malesuada fames ac ante ipsum primis in faucibus. Cras dapibus elit tellus, sit amet porta eros luctus eu. Mauris ullamcorper mauris porttitor, dignissim tortor eget, sollicitudin arcu. Aenean eget vehicula orci. Donec pretium interdum lectus, nec scelerisque sapien finibus at. Nulla at vestibulum nibh, nec accumsan ante. Nulla in efficitur justo, eget imperdiet tellus. Quisque vulputate vel leo sed porttitor.";

    return [
      Task(
          id: '1',
          title: 'Read emails from mailbox',
          dateTime: now,
          description: descriptionText),
      Task(
          id: '2',
          title: 'Check latest news on Flutter',
          dateTime: now,
          description: descriptionText),
      Task(
          id: '3',
          title: 'Have a call with Flutter team',
          dateTime: now,
          description: descriptionText),
      Task(
          id: '4',
          title: 'Work on application performance',
          dateTime: now,
          description: descriptionText),
      Task(
          id: '5',
          title: 'Plan work for next week',
          dateTime: now,
          description: descriptionText),
      Task(
          id: '6',
          title: 'Order lunch',
          dateTime: now,
          description: descriptionText),
      Task(
          id: '7',
          title: 'Create an invoice for last month',
          dateTime: now,
          description: descriptionText),
    ];
  }
}
