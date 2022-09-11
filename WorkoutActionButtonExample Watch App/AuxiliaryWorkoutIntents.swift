//
//  AuxiliaryWorkoutIntents.swift
//  WorkoutActionButtonExample Watch App
//
//  Created by Khaos Tian on 9/10/22.
//

import Foundation
import AppIntents

struct PauseIntent: PauseWorkoutIntent {

    static var title: LocalizedStringResource = .init(stringLiteral: "Pause")

    func perform() async throws -> some IntentResult {
        NSLog("Perform pause")
        return .result()
    }
}

struct ResumeIntent: ResumeWorkoutIntent {

    static var title: LocalizedStringResource = .init(stringLiteral: "Resume")

    func perform() async throws -> some IntentResult {
        NSLog("Perform resume")
        return .result()
    }
}
