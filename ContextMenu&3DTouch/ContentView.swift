//
//  ContentView.swift
//  ContextMenu&3DTouch
//
//  Created by ramil on 09.04.2020.
//  Copyright © 2020 com.ri. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    
    var body: some View {
        VStack {
            Text("\(self.counter)")
                .padding()
            Text("Press Hard!")
                .padding()
                .contextMenu {
                    VStack {
                        Button(action: {
                            self.counter += 1
                        }) {
                            Text("Increment")
                        }
                        Button(action: {
                            self.counter = 0
                        }) {
                            Text("Delete")
                        }
                        .foregroundColor(Color.red)
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
