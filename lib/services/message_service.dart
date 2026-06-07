import 'package:crochtale/models/message_model.dart';

class MessageService {
  static final MessageService _instance = MessageService._internal();

  factory MessageService() {
    return _instance;
  }

  MessageService._internal();

  final List<Message> _messages = [];
  final Map<String, List<Message>> _conversationHistory = {};

  List<Message> getMessages(String userId, String otherUserId) {
    final conversationKey = _getConversationKey(userId, otherUserId);
    return _conversationHistory[conversationKey] ?? [];
  }

  Future<bool> sendMessage({
    required String senderId,
    required String senderName,
    required String receiverId,
    required String text,
  }) async {
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      
      final message = Message(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        senderId: senderId,
        senderName: senderName,
        receiverId: receiverId,
        text: text,
        timestamp: DateTime.now(),
      );

      _messages.add(message);
      
      final conversationKey = _getConversationKey(senderId, receiverId);
      if (!_conversationHistory.containsKey(conversationKey)) {
        _conversationHistory[conversationKey] = [];
      }
      _conversationHistory[conversationKey]!.add(message);

      return true;
    } catch (e) {
      return false;
    }
  }

  String _getConversationKey(String userId1, String userId2) {
    final ids = [userId1, userId2]..sort();
    return '${ids[0]}_${ids[1]}';
  }

  List<Message> getAllMessages() {
    return _messages;
  }

  void clearMessages() {
    _messages.clear();
    _conversationHistory.clear();
  }
}