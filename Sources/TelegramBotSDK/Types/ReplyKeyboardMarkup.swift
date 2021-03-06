// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a custom keyboard with reply options (see Introduction to bots for details and examples).
///
/// - SeeAlso: <https://core.telegram.org/bots/api#replykeyboardmarkup>

public struct ReplyKeyboardMarkup: JsonConvertible, InternalJsonConvertible {
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

    /// Array of button rows, each represented by an Array of KeyboardButton objects
    public var keyboard: [[KeyboardButton]] {
        get { return internalJson["keyboard"].twoDArrayValue() }
        set {
            var rowsJson = [JSON]()
            rowsJson.reserveCapacity(newValue.count)
            for row in newValue {
                var colsJson = [JSON]()
                colsJson.reserveCapacity(row.count)
                for col in row {
                    let json = col.internalJson
                    colsJson.append(json)
                }
                rowsJson.append(JSON(colsJson))
            }
            internalJson["keyboard"] = JSON(rowsJson)
        }
    }

    /// Optional. Requests clients to resize the keyboard vertically for optimal fit (e.g., make the keyboard smaller if there are just two rows of buttons). Defaults to false, in which case the custom keyboard is always of the same height as the app's standard keyboard.
    public var resizeKeyboard: Bool? {
        get { return internalJson["resize_keyboard"].bool }
        set { internalJson["resize_keyboard"].bool = newValue }
    }

    /// Optional. Requests clients to hide the keyboard as soon as it's been used. The keyboard will still be available, but clients will automatically display the usual letter-keyboard in the chat – the user can press a special button in the input field to see the custom keyboard again. Defaults to false.
    public var oneTimeKeyboard: Bool? {
        get { return internalJson["one_time_keyboard"].bool }
        set { internalJson["one_time_keyboard"].bool = newValue }
    }

    /// Optional. Use this parameter if you want to show the keyboard to specific users only. Targets: 1) users that are @mentioned in the text of the Message object; 2) if the bot's message is a reply (has reply_to_message_id), sender of the original message.
    /// 
    /// Example: A user requests to change the bot‘s language, bot replies to the request with a keyboard to select the new language. Other users in the group don’t see the keyboard.
    public var selective: Bool? {
        get { return internalJson["selective"].bool }
        set { internalJson["selective"].bool = newValue }
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
