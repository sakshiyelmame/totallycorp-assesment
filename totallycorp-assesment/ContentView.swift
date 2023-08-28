//
//  ContentView.swift
//  totallycorp-assesment
//
//  Created by Sakshi Yelmame on 27/08/23.
//

import SwiftUI

struct ContentView: View {
    /// show detailsView
    @State private var showDetails: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView {
                VStack(spacing: 20) {
                    ForEach(0..<10) { index in
                        CardView
                    }
                }
                .padding()
            }
            .navigationTitle("PLAY")
            .navigationBarTitleDisplayMode(.inline)
            .fullScreenCover(isPresented: $showDetails) {
                DetailsView()
            }
            
        }
    }
    
    private var ActionButton: some View {
        Button {
            showDetails.toggle()
        } label: {
            Text("Get Started")
                .font(.title2)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(23)
        }
        .frame(height: 46)
    }
    
    private var AvatarView: some View {
        HStack {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.yellow)
                .frame(width: 100, height: 100)
            Spacer()
        }
    }
    
    private var CardView: some View {
        ZStack(alignment: .bottom) {
            RoundedRectangle(cornerRadius: 20)
                .fill(Color.orange)
                .frame(height: 450)
            VStack {
                AvatarView
                Spacer()
                ActionButton
            }.padding()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
