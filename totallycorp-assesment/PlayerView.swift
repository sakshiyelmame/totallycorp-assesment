//
//  PlayerView.swift
//  totallycorp-assesment
//
//  Created by Sakshi Yelmame on 27/08/23.
//

import SwiftUI

struct PlayerView: View {
    
    /// dismiss current view
    @Environment(\.presentationMode) var dismiss
    
    var body: some View {
        ZStack {
            Color(.brown).edgesIgnoringSafeArea(.all)
            VStack {
                Text("Ready to Play?")
                    .font(.title3)
                    .padding()
                Text("OSWALD")
                    .font(.title)
                HStack {
                    ForEach(0..<4) { _ in
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black).opacity(0.4)
                            .frame(width: 70, height: 50)
                    }
                }.padding(20)
                ActionButton
            }.padding()
        }
    }
    
    private var ActionButton: some View {
        Button {
            dismiss.wrappedValue.dismiss()
        } label: {
            Text("CONFIRM")
                .font(.title3)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.black)
                .cornerRadius(23)
        }
        .frame(height: 46)
    }
}

struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
    }
}
