//
//  Event.swift
//  laFiesta
//
//  Created by Erick Gomes Vieira on 02/05/21.
//

import Foundation
import SwiftUI

struct EventModel: Hashable, Codable  {
    let id:UUID
    let name: String
    let date: String
    let local: String

    private var imageName: String
    var image: Image {
        Image(imageName)
    }
    let description:String
    let saved:Bool

}
