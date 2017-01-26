//
//  Articles.swift
//
//  Created by Noturno on 26/01/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Articles: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let urlToImage = "urlToImage"
    static let descriptionValue = "description"
    static let title = "title"
    static let publishedAt = "publishedAt"
    static let author = "author"
    static let url = "url"
  }

  // MARK: Properties
  public var urlToImage: String?
  public var descriptionValue: String?
  public var title: String?
  public var publishedAt: String?
  public var author: String?
  public var url: String?

  // MARK: SwiftyJSON Initializers
  /// Initiates the instance based on the object.
  ///
  /// - parameter object: The object of either Dictionary or Array kind that was passed.
  /// - returns: An initialized instance of the class.
  public convenience init(object: Any) {
    self.init(json: JSON(object))
  }

  /// Initiates the instance based on the JSON that was passed.
  ///
  /// - parameter json: JSON object from SwiftyJSON.
  public required init(json: JSON) {
    urlToImage = json[SerializationKeys.urlToImage].string
    descriptionValue = json[SerializationKeys.descriptionValue].string
    title = json[SerializationKeys.title].string
    publishedAt = json[SerializationKeys.publishedAt].string
    author = json[SerializationKeys.author].string
    url = json[SerializationKeys.url].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = urlToImage { dictionary[SerializationKeys.urlToImage] = value }
    if let value = descriptionValue { dictionary[SerializationKeys.descriptionValue] = value }
    if let value = title { dictionary[SerializationKeys.title] = value }
    if let value = publishedAt { dictionary[SerializationKeys.publishedAt] = value }
    if let value = author { dictionary[SerializationKeys.author] = value }
    if let value = url { dictionary[SerializationKeys.url] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.urlToImage = aDecoder.decodeObject(forKey: SerializationKeys.urlToImage) as? String
    self.descriptionValue = aDecoder.decodeObject(forKey: SerializationKeys.descriptionValue) as? String
    self.title = aDecoder.decodeObject(forKey: SerializationKeys.title) as? String
    self.publishedAt = aDecoder.decodeObject(forKey: SerializationKeys.publishedAt) as? String
    self.author = aDecoder.decodeObject(forKey: SerializationKeys.author) as? String
    self.url = aDecoder.decodeObject(forKey: SerializationKeys.url) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(urlToImage, forKey: SerializationKeys.urlToImage)
    aCoder.encode(descriptionValue, forKey: SerializationKeys.descriptionValue)
    aCoder.encode(title, forKey: SerializationKeys.title)
    aCoder.encode(publishedAt, forKey: SerializationKeys.publishedAt)
    aCoder.encode(author, forKey: SerializationKeys.author)
    aCoder.encode(url, forKey: SerializationKeys.url)
  }

}
