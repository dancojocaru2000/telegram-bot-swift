// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents an incoming update.
/// At most one of the optional parameters can be present in any given update.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#update>

public struct Update: JsonConvertible, InternalJsonConvertible {
    /// Original JSON for fields not yet added to Swift structures.
    public var json: Any {
        get {
            return internalJson.object
        }
        set {
            internalJson = JSON(newValue)
        }
    }
    internal var internalJson: JSON

    /// The update‘s unique identifier. Update identifiers start from a certain positive number and increase sequentially. This ID becomes especially handy if you’re using Webhooks, since it allows you to ignore repeated updates or to restore the correct update sequence, should they get out of order. If there are no new updates for at least a week, then identifier of the next update will be chosen randomly instead of sequentially.
    public var updateId: Int {
        get { return internalJson["update_id"].intValue }
        set { internalJson["update_id"].intValue = newValue }
    }

    /// Optional. New incoming message of any kind — text, photo, sticker, etc.
    public var message: Message? {
        get {
            let value = internalJson["message"]
            return value.isNullOrUnknown ? nil : Message(internalJson: value)
        }
        set {
            internalJson["message"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. New version of a message that is known to the bot and was edited
    public var editedMessage: Message? {
        get {
            let value = internalJson["edited_message"]
            return value.isNullOrUnknown ? nil : Message(internalJson: value)
        }
        set {
            internalJson["edited_message"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. New incoming channel post of any kind — text, photo, sticker, etc.
    public var channelPost: Message? {
        get {
            let value = internalJson["channel_post"]
            return value.isNullOrUnknown ? nil : Message(internalJson: value)
        }
        set {
            internalJson["channel_post"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. New version of a channel post that is known to the bot and was edited
    public var editedChannelPost: Message? {
        get {
            let value = internalJson["edited_channel_post"]
            return value.isNullOrUnknown ? nil : Message(internalJson: value)
        }
        set {
            internalJson["edited_channel_post"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. New incoming inline query
    public var inlineQuery: InlineQuery? {
        get {
            let value = internalJson["inline_query"]
            return value.isNullOrUnknown ? nil : InlineQuery(internalJson: value)
        }
        set {
            internalJson["inline_query"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. The result of an inline query that was chosen by a user and sent to their chat partner. Please see our documentation on the feedback collecting for details on how to enable these updates for your bot.
    public var chosenInlineResult: ChosenInlineResult? {
        get {
            let value = internalJson["chosen_inline_result"]
            return value.isNullOrUnknown ? nil : ChosenInlineResult(internalJson: value)
        }
        set {
            internalJson["chosen_inline_result"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. New incoming callback query
    public var callbackQuery: CallbackQuery? {
        get {
            let value = internalJson["callback_query"]
            return value.isNullOrUnknown ? nil : CallbackQuery(internalJson: value)
        }
        set {
            internalJson["callback_query"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. New incoming shipping query. Only for invoices with flexible price
    public var shippingQuery: ShippingQuery? {
        get {
            let value = internalJson["shipping_query"]
            return value.isNullOrUnknown ? nil : ShippingQuery(internalJson: value)
        }
        set {
            internalJson["shipping_query"] = newValue?.internalJson ?? JSON.null
        }
    }

    /// Optional. New incoming pre-checkout query. Contains full information about checkout
    public var preCheckoutQuery: PreCheckoutQuery? {
        get {
            let value = internalJson["pre_checkout_query"]
            return value.isNullOrUnknown ? nil : PreCheckoutQuery(internalJson: value)
        }
        set {
            internalJson["pre_checkout_query"] = newValue?.internalJson ?? JSON.null
        }
    }

    internal init(internalJson: JSON = [:]) {
        self.internalJson = internalJson
    }
    public init(json: Any) {
        self.internalJson = JSON(json)
    }
    public init(data: Data) {
        self.internalJson = JSON(data: data)
    }
}
