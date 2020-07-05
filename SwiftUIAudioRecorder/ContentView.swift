//
//  ContentView.swift
//  SwiftUIAudioRecorder
//
//  Created by Lucas Spusta on 7/5/20.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var audioRecorder: AudioRecorder
    @State private var animateBigCircle = false
    @State private var animateSmallCircle = false
    
    var body: some View {
        NavigationView {
            VStack {
                RecordingsList(audioRecorder: audioRecorder)
                ZStack{
                        if audioRecorder.recording == false {
                            Button(action: {self.audioRecorder.startRecording()}) {
                                Image(systemName: "waveform.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 70, height: 70)
                                    .clipped()
                                    .foregroundColor(.red)
                                    .padding(.bottom, 40)
                                
                                
                            }
                            
                        } else {
                        
                            Button(action: {self.audioRecorder.stopRecording()}) {
                                Image(systemName: "stop.circle")
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: 70, height: 70)
                                    .clipped()
                                    .foregroundColor(.red)
                                    .padding(.bottom, 40)
                            }
                            
//                            Circle()
//                                .stroke()
//                                .frame(width: 325, height: 325)
//                                .foregroundColor(.gray)
//                                .scaleEffect(animateBigCircle ? 1 : 0.3)
//                                .opacity(animateBigCircle ? 0 : 1)
//                                .animation(Animation.easeInOut(duration: 1).repeatForever(autoreverses: false))
//                                .onAppear {
//                                    self.animateBigCircle.toggle()
//                                }
                        }
                }
            }
            
         
            
            .navigationBarTitle("Audio Recorder")
            .navigationBarItems(trailing: EditButton())
        }.navigationViewStyle(StackNavigationViewStyle())
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(audioRecorder: AudioRecorder())
    }
}
