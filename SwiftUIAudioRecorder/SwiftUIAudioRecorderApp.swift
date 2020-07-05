//
//  SwiftUIAudioRecorderApp.swift
//  SwiftUIAudioRecorder
//
//  Created by Lucas Spusta on 7/5/20.
//

import SwiftUI

@main
struct SwiftUIAudioRecorderApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(audioRecorder: AudioRecorder())
        }
    }
}
