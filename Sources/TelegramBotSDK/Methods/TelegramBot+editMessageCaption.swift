// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation
import Dispatch

public extension TelegramBot {
    typealias EditMessageCaptionCompletion = (_ result: MessageOrBool?, _ error: DataTaskError?) -> ()

    /// Use this method to edit captions of messages sent by the bot or via the bot (for inline bots). On success, if edited message is sent by the bot, the edited Message is returned, otherwise True is returned.
    /// - Parameters:
    ///     - chat_id: Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - message_id: Required if inline_message_id is not specified. Identifier of the sent message
    ///     - inline_message_id: Required if chat_id and message_id are not specified. Identifier of the inline message
    ///     - caption: New caption of the message
    ///     - parse_mode: Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    ///     - reply_markup: A JSON-serialized object for an inline keyboard.
    /// - Returns: MessageOrBool on success. Nil on error, in which case `TelegramBot.lastError` contains the details.
    /// - Note: Blocking version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#editmessagecaption>
    @discardableResult
    public func editMessageCaptionSync(
            chatId: ChatId? = nil,
            messageId: Int? = nil,
            inlineMessageId: String? = nil,
            caption: String? = nil,
            parseMode: ParseMode? = nil,
            replyMarkup: InlineKeyboardMarkup? = nil,
            _ parameters: [String: Any?] = [:]) -> MessageOrBool? {
        return requestSync("editMessageCaption", defaultParameters["editMessageCaption"], parameters, [
            "chat_id": chatId,
            "message_id": messageId,
            "inline_message_id": inlineMessageId,
            "caption": caption,
            "parse_mode": parseMode?.rawValue,
            "reply_markup": replyMarkup])
    }

    /// Use this method to edit captions of messages sent by the bot or via the bot (for inline bots). On success, if edited message is sent by the bot, the edited Message is returned, otherwise True is returned.
    /// - Parameters:
    ///     - chat_id: Required if inline_message_id is not specified. Unique identifier for the target chat or username of the target channel (in the format @channelusername)
    ///     - message_id: Required if inline_message_id is not specified. Identifier of the sent message
    ///     - inline_message_id: Required if chat_id and message_id are not specified. Identifier of the inline message
    ///     - caption: New caption of the message
    ///     - parse_mode: Send Markdown or HTML, if you want Telegram apps to show bold, italic, fixed-width text or inline URLs in the media caption.
    ///     - reply_markup: A JSON-serialized object for an inline keyboard.
    /// - Returns: MessageOrBool on success. Nil on error, in which case `error` contains the details.
    /// - Note: Asynchronous version of the method.
    ///
    /// - SeeAlso: <https://core.telegram.org/bots/api#editmessagecaption>
    public func editMessageCaptionAsync(
            chatId: ChatId? = nil,
            messageId: Int? = nil,
            inlineMessageId: String? = nil,
            caption: String? = nil,
            parseMode: ParseMode? = nil,
            replyMarkup: InlineKeyboardMarkup? = nil,
            _ parameters: [String: Any?] = [:],
            queue: DispatchQueue = .main,
            completion: EditMessageCaptionCompletion? = nil) {
        return requestAsync("editMessageCaption", defaultParameters["editMessageCaption"], parameters, [
            "chat_id": chatId,
            "message_id": messageId,
            "inline_message_id": inlineMessageId,
            "caption": caption,
            "parse_mode": parseMode?.rawValue,
            "reply_markup": replyMarkup],
            queue: queue, completion: completion)
    }
}

