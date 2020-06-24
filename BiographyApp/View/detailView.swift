//
//  detailView.swift
//  BiographyApp
//
//  Created by Wisnu Anggara on 24/06/20.
//  Copyright © 2020 Untitled Company. All rights reserved.
//

import SwiftUI

struct detailView: View {
    @Binding var dataPerson : Person
    var body: some View {
            VStack{
                    HStack{
                        Image(systemName: "arrow.left")
                        .frame(width: 30, height: 30)
                        
                        Text("Back")
                        Spacer()
                    }
                    ScrollView(.vertical, showsIndicators: false){
                        VStack(alignment: .leading){
                            Image(self.dataPerson.imageName)
                            .resizable()
                            .frame(width: 300, height: 250)
                                .cornerRadius(20)
                            
                            Text(self.dataPerson.name)
                                .font(.title)
                                .fontWeight(.bold)
                                .padding(.bottom)
                            Text(self.dataPerson.description)
                        }
                        .padding(.horizontal)
                    }
            
                    
                }
            .padding()
    }
}

struct detailView_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
