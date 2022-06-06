import 'package:employee_management_system/infrastructure/message/message_repository.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/domain_index.dart';

part 'message_event.dart';
part 'message_state.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final MessageRepository messageRepository;

  MessageBloc({required this.messageRepository}) : super(MessageInitial()) {
    on<MessageSend>((event, emit) async {
      try {
        await messageRepository.createMessage(
          token: event.token,
          senderId: event.senderId,
          reciverEmail: event.receiverEmail,
          message: event.message,
        );
        emit(MessageSentSuccessfully());
      } catch (err) {
        emit(MessageFailure(err));
      }
    });

    on<GetRecivedMessages>((event, emit) async {
      try {
        final List<ReceivedMessageModel> result = await messageRepository
            .getAllRecievedMessages(event.token, event.userId);
        emit(RecivedMessagesLoaded(result));
      } catch (err) {
        emit(MessageFailure(err));
      }
    });

    on<GetSentMessage>((event, emit) async {
      try {
        final result = await messageRepository.getAllSentMessage(
          token: event.token,
          id: event.userId,
        );
        emit(SentMessagesLoaded(result));
      } catch (err) {
        emit(MessageFailure(err));
      }
    });
    on<GetMessageDetail>((event, emit) async {
      try {
        final result = await messageRepository.getMessageDetail(
          token: event.token,
          messageId: event.messageId,
        );
        emit(MessageDetailLoaded(result));
      } catch (err) {
        emit(MessageFailure(err));
      }
    });
  }
}
