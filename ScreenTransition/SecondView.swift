//
//  SecondView.swift
//  ScreenTransition
//
//  Created by sasayoshi on 2024/01/21.
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        ZStack{
            Color.red
                .ignoresSafeArea()
            Text("SecondView")
        }
    }
}

#Preview {
    SecondView()
}
