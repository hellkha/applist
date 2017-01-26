//
//  Account.swift
//
//  Created by Noturno on 26/01/17
//  Copyright (c) . All rights reserved.
//

import Foundation
import SwiftyJSON

public class Account: NSCoding {

  // MARK: Declaration for string constants to be used to decode and also serialize.
  private struct SerializationKeys {
    static let status = "status"
    static let articles = "articles"
    static let source = "source"
    static let sortBy = "sortBy"
  }

  // MARK: Properties
  public var status: String?
  public var articles: [Articles]?
  public var source: String?
  public var sortBy: String?

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
    status = json[SerializationKeys.status].string
    if let items = json[SerializationKeys.articles].array { articles = items.map { Articles(json: $0) } }
    source = json[SerializationKeys.source].string
    sortBy = json[SerializationKeys.sortBy].string
  }

  /// Generates description of the object in the form of a NSDictionary.
  ///
  /// - returns: A Key value pair containing all valid values in the object.
  public func dictionaryRepresentation() -> [String: Any] {
    var dictionary: [String: Any] = [:]
    if let value = status { dictionary[SerializationKeys.status] = value }
    if let value = articles { dictionary[SerializationKeys.articles] = value.map { $0.dictionaryRepresentation() } }
    if let value = source { dictionary[SerializationKeys.source] = value }
    if let value = sortBy { dictionary[SerializationKeys.sortBy] = value }
    return dictionary
  }

  // MARK: NSCoding Protocol
  required public init(coder aDecoder: NSCoder) {
    self.status = aDecoder.decodeObject(forKey: SerializationKeys.status) as? String
    self.articles = aDecoder.decodeObject(forKey: SerializationKeys.articles) as? [Articles]
    self.source = aDecoder.decodeObject(forKey: SerializationKeys.source) as? String
    self.sortBy = aDecoder.decodeObject(forKey: SerializationKeys.sortBy) as? String
  }

  public func encode(with aCoder: NSCoder) {
    aCoder.encode(status, forKey: SerializationKeys.status)
    aCoder.encode(articles, forKey: SerializationKeys.articles)
    aCoder.encode(source, forKey: SerializationKeys.source)
    aCoder.encode(sortBy, forKey: SerializationKeys.sortBy)
  }

}
