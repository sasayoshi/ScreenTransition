//
//  ContentView.swift
//  ScreenTransition
//
//  Created by sasayoshi on 2024/01/21.
//

import SwiftUI

struct ContentView: View {
    @State var isShowSecondView = false
    
    var body: some View {
        NavigationStack{
            VStack {
                NavigationLink(destination: SecondView(),
                               label: {
                    Text("SecondViewへナビ遷移")
                })
                Button("SecondViewへモーダル遷移"){
                    isShowSecondView = true
                }.padding()
            }
            .padding()
            .navigationTitle("TOP")
            .sheet(isPresented: $isShowSecondView, content: {
                SecondView()
                    .presentationDetents([.medium])
            })
        }
    }
}

#Preview {
    ContentView()
}
