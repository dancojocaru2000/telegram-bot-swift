// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias ForwardMessageCompletion = (_ result: Message?, _ error: DataTaskError?) -> ()

    /// Use this method to forward messages of any kind. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - from_chat_id: Unique identifier for the chat where the original message was sent (or channel username in the format @channelusername)
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - message_id: Message identifier in the chat specified in from_chat_id
    /// - Returns: Message on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#forwardmessage>
    @discardableResult
    public func forwardMessageSync(
            chatId: ChatId,
            fromChatId: ChatId,
            disableNotification: Bool? = nil,
            messageId: Int,
            _ parameters: [String: Any?] = [:]) -> Message? {
        return requestSync("forwardMessage", defaultParameters["forwardMessage"], parameters, [
            "chat_id": chatId,
            "from_chat_id": fromChatId,
            "disable_notification": disableNotification,
            "message_id": messageId])
    }

    /// Use this method to forward messages of any kind. On success, the sent Message is returned.
    /// - Parameters:
    ///     - chat_id: Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - from_chat_id: Unique identifier for the chat where the original message was sent (or channel username in the format @channelusername)
    ///     - disable_notification: Sends the message silently. Users will receive a notification with no sound.
    ///     - message_id: Message identifier in the chat specified in from_chat_id
    /// - Returns: Message on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#forwardmessage>
    public func forwardMessageAsync(
            chatId: ChatId,
            fromChatId: ChatId,
            disableNotification: Bool? = nil,
            messageId: Int,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: ForwardMessageCompletion? = nil) {
        return requestAsync("forwardMessage", defaultParameters["forwardMessage"], parameters, [
            "chat_id": chatId,
            "from_chat_id": fromChatId,
            "disable_notification": disableNotification,
            "message_id": messageId],
            queue: queue, completion: completion)
    }
}

