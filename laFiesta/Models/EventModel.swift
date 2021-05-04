//
//  Event.swift
//  laFiesta
//
//  Created by Erick Gomes Vieira on 02/05/21.
//

import Foundation
import SwiftUI

struct EventModel: Identifiable {
    let id = UUID()
    let name: String
    let date: String
    let address: String
    let image: UIImage
}
