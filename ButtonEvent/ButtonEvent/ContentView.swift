//
//  ContentView.swift
//  ButtonEvent
//
//  Created by wiwi on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Title!")
                .modifier(TextTitle())
            Text("Hello, world!!")
                .padding(20)
                .border(.gray, width: 1)
            Button(action: buttonAction) {
                Text("Label")
                    .padding(.init(top: 8, leading: 16, bottom: 8, trailing: 16))
                    .border(.blue, width: 1)
            }
            Button {
                print("image button")
            } label: {
                Image(systemName: "square.and.arrow.down")
            }
            
            Text("Hello, world!")
                .onAppear {
                    print("이 텍스트가 화면에 나올때!")
                }
                .onDisappear {
                    print("이 텍스트가 사라질떄!")
                }
        }
    }
    
    func buttonAction() {
        print("button push")
    }
}

struct TextTitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.title)
            .padding()
            .background(.orange)
            .border(.black, width: 0.2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
