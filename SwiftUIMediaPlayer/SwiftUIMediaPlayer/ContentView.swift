//
//  ContentView.swift
//  SwiftUIMediaPlayer
//
//  Created by Angelos Staboulis on 30/8/21.
//

import SwiftUI
import AVKit
struct ContentView: View {
    @State var player:AVPlayer!
    @State var url:[URL]=[]
    @State var paths:[String]=[]
    var body: some View {
        ZStack{
           
            VideoPlayer(player: player).padding()
                .overlay(Text("SwiftUIMediaPlayer").padding().position(x:UIScreen.main.bounds.width/2,y:100).foregroundColor(.white))
                .overlay(Button(action: {
                        initialValues()
                    url.append(URL(fileURLWithPath:Bundle.main.path(forResource: "GiaToParon1", ofType: "mp3")!))
                    player = AVPlayer(url:url[url.count-1])
                    }, label: {
                        Text("GiaToParon1")
                    }).padding().position(x:(UIScreen.main.bounds.width/2)-150,y:150).foregroundColor(.white)
                )
                .overlay(Button(action: {
                        initialValues()
                        url.append(URL(fileURLWithPath:Bundle.main.path(forResource: "GiaToParon2-typoi", ofType: "mp3")!))
                        player = AVPlayer(url:url[url.count-1])
                    }, label: {
                        Text("GiaToParon2")
                    }).padding().position(x:(UIScreen.main.bounds.width/2)-35,y:150).foregroundColor(.white)
                )
                .overlay(Button(action: {
                        initialValues()
                        url.append(URL(fileURLWithPath:Bundle.main.path(forResource: "tournas1", ofType: "mp3")!))
                    player = AVPlayer(url:url[url.count-1])
                    }, label: {
                        Text("tournas1")
                    }).padding().position(x:(UIScreen.main.bounds.width/2)+75,y:150).foregroundColor(.white)
                )
                .overlay(Button(action: {
                        initialValues()
                        url.append(URL(fileURLWithPath:Bundle.main.path(forResource: "tournas2", ofType: "mp3")!))
                        player = AVPlayer(url:url[url.count-1])
                    }, label: {
                        Text("tournas2")
                    }).padding().position(x:(UIScreen.main.bounds.width/2)+175,y:150).foregroundColor(.white)
                )
                .overlay(Image("mediaplayer").frame(width: 100, height: 200, alignment: .center))
                
            
        }.background(Rectangle()).foregroundColor(.black).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
    }
    func initialValues(){
        if paths.count > 0 && url.count > 0 {
            paths.removeAll()
            url.removeAll()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
