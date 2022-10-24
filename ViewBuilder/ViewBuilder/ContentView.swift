//
//  ContentView.swift
//  ViewBuilder
//
//  Created by wiwi on 2022/10/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        MyVStack {
            Text("빌더빌더")
            Text("스페이싱 10")
            Text("라지라지")
            Image(systemName: "star.fill")
            Image(systemName: "star")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct MyVStack<Content: View>: View {
    let content: () -> Content
    init(@ViewBuilder content: @escaping () -> Content) {
        self.content = content
    }
    
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            content()
        }
        .font(.largeTitle)
    }
}
