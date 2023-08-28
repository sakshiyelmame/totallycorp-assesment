//
//  DetailsView.swift
//  totallycorp-assesment
//
//  Created by Sakshi Yelmame on 27/08/23.
//

import SwiftUI

struct DetailsView: View {
    
    /// dismiss current view
    @Environment(\.presentationMode) var dismiss
    
    /// show bottom sheet
    @State private var showPlayer: Bool = false
    
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.yellow)
                    .frame(width: 100, height: 100)
                Text("CANDY\nBUST")
                Spacer()
                Button {
                    dismiss.wrappedValue.dismiss()
                } label: {
                    Image(systemName: "xmark")
                        .foregroundColor(.black)
                        .padding(.bottom, 54)
                }.padding()
                
            }
            Text("In fields of gold, where dreams take flight,A gentle breeze whispers through the night.")
            Button {
                // read more action
            } label: {
                Text("READ MORE")
                    .font(.footnote)
                    .foregroundColor(.green)
            }
            
            ScrollView(.horizontal, showsIndicators: true) {
                HStack(spacing: 10) {
                    ForEach(0..<5) { _ in
                        RoundedRectangle(cornerRadius: 20)
                            .fill(Color.gray).opacity(0.5)
                            .frame(width: 250)
                        
                    }
                }
            }
            ActionButton
        }.padding()
            .sheet(isPresented: $showPlayer) {
                PlayerView()
                    .presentationDetents([.height(250)])
            }
    }
    
    private var ActionButton: some View {
        Button {
            showPlayer.toggle()
        } label: {
            Text("DOWNLOAD")
                .font(.title3)
                .frame(minWidth: 0, maxWidth: .infinity)
                .foregroundColor(.white)
                .padding()
                .background(Color.green)
                .cornerRadius(23)
        }
        .frame(height: 46)
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView()
    }
}
