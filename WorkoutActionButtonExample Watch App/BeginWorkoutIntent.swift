//
//  BeginWorkoutIntent.swift
//  WorkoutActionButtonExample Watch App
//
//  Created by Khaos Tian on 9/10/22.
//

import Foundation
import AppIntents

/// For this to work, the app needs to have `workout-processing` in `WKBackgroundModes`, and `workoutStyle`
/// has to be a `@Parameter` for me.
struct BeginWorkoutIntent: StartWorkoutIntent {

    var displayRepresentation: DisplayRepresentation {
        DisplayRepresentation(title: "\(workoutStyle)")
    }

    static var title: LocalizedStringResource {
        "Start a workout"
    }

    @Parameter(title: "Workout")
    var workoutStyle: WorkoutStyle

    static var openAppWhenRun: Bool {
        true
    }

    static var suggestedWorkouts: [BeginWorkoutIntent] {
        return [
            BeginWorkoutIntent(
                style: .dance
            ),
            BeginWorkoutIntent(
                style: .jump
            ),
        ]
    }

    init() {
        self.workoutStyle = .dance
    }

    func perform() async throws -> some IntentResult {
        NSLog("Perform: \(workoutStyle)")
        /// `actionButtonIntent` is not working for me on simulator.
        return .result(actionButtonIntent: PauseIntent())
    }
}
