//
//  WorkoutStyle.swift
//  WorkoutActionButtonExample Watch App
//
//  Created by Khaos Tian on 9/10/22.
//

import Foundation
import AppIntents

enum WorkoutStyle: String, AppEnum, CustomStringConvertible {

    static let typeDisplayRepresentation: TypeDisplayRepresentation = "Style"

    static let caseDisplayRepresentations: [WorkoutStyle : DisplayRepresentation] = [
        .dance: "Dance",
        .jump: "Jump",
    ]

    case dance
    case jump

    var description: String {
        return rawValue.capitalized
    }
}
