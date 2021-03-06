// Telegram Bot SDK for Swift (unofficial).
// This file is autogenerated by API/generate_wrappers.rb script.

import Foundation


/// This object represents a voice note.
///
/// - SeeAlso: <https://core.telegram.org/bots/api#voice>

public struct Voice: JsonConvertible, InternalJsonConvertible {
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

    /// Unique identifier for this file
    public var fileId: String {
        get { return internalJson["file_id"].stringValue }
        set { internalJson["file_id"].stringValue = newValue }
    }

    /// Duration of the audio in seconds as defined by sender
    public var duration: Int {
        get { return internalJson["duration"].intValue }
        set { internalJson["duration"].intValue = newValue }
    }

    /// Optional. MIME type of the file as defined by sender
    public var mimeType: String? {
        get { return internalJson["mime_type"].string }
        set { internalJson["mime_type"].string = newValue }
    }

    /// Optional. File size
    public var fileSize: Int? {
        get { return internalJson["file_size"].int }
        set { internalJson["file_size"].int = newValue }
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
