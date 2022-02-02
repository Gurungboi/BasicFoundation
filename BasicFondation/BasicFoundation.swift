//
//  BasicFoundation.swift
//  BasicFondation
//
//  Created by Sunil on 3/2/22.
//

import SwiftUI

struct Basic: View {
    var body: some View {
        NavigationView {
            VStack {
                NavigationLink(destination: PageOne(), label: {
                    Text("Click me")
                })
            }
        }
    }
}

struct Basic_Previews: PreviewProvider {
    static var previews: some View {
        Basic()
    }
}

struct PageOne: View {
    @State private var showingPopover = false
    var body: some View {
        VStack {
            Button("Page One") {
                showingPopover = true
            }
            .popover(isPresented: $showingPopover) {
                Text("Click me")
                    .font(.headline)
                    .padding()
            }

        }
    }
}

struct PageTwo: View {
    var body: some View {
        Text("This is Page two")
    }
}

