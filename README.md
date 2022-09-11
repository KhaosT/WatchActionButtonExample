# WatchActionButtonExample

This repo contains a basic example for how to incorporate `StartWorkoutIntent` to support Apple Watch Ultra's new Action Button.

To adopt the full functionality of action button for a workout app, the app need to have the following:
1. `workout-processing` must be part of `WKBackgroundModes` declared in the watch app's Info.plist file.
2. `var workoutStyle: WorkoutStyle` must be annotated with `@Parameter` (otherwise the Settings app will only show open app action).

![Simulator Screen Shot - Apple Watch Ultra (49mm) - 2022-09-10 at 19 04 00](https://user-images.githubusercontent.com/1725664/189508698-6ad7d086-a5f6-4a63-9e46-9ab5663894b3.png)

References:
- https://twitter.com/mgorbach/status/1567570300820144131
- https://twitter.com/qzervaas/status/1568206906862497793
