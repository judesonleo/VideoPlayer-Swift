//
//  ContentView.swift
//  VideoPlayer
//
//  Created by Judeson Leo J S on 10/10/22.
//
import AVKit
import SwiftUI

struct ContentView: View {
//  let url = URL(string: "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ForBiggerEscapes.mp4")!
    @State private var player = AVPlayer()
    
    var body: some View {
        
                VideoPlayer(player: AVPlayer(url: Bundle.main.url(forResource: "RickRoll", withExtension: "mov")!))
                    .edgesIgnoringSafeArea(.all)
                    .onAppear{
                        player.play()
                    }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
