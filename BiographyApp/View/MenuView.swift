//
//  MenuView.swift
//  BiographyApp
//
//  Created by Wisnu Anggara on 22/06/20.
//  Copyright © 2020 Untitled Company. All rights reserved.
//

import SwiftUI

struct MenuView : View {

    var body: some View{
        NavigationView{
            VStack{
                       ScrollView(.vertical, showsIndicators: false) {
                           
                           VStack(spacing: 20){
                               
                               ForEach(data){i in
                                   
                                   VStack {
                                       
                                       Image(i.imageName)
                                           .resizable()
                                           .frame(width: 300, height: 200)
                                           .cornerRadius(20)
                                       
                                       
                                       Button(action: {
                                        
                                       }, label: {
                                           Text(i.name)
                                               .fontWeight(.bold)
                                               .font(.title)
                                               .padding(.top)
                                               .foregroundColor(.black)
                                       })
                                       
                                       
                                       
                                       Text(i.shortDescription)
                                           .font(.caption)
                                           .padding(.top)
                                       
                                       Divider()
                                       
                                   }
                                   .padding(.vertical)
                                   .padding(.horizontal)
                               }
                           }
                           .padding(.horizontal, 20)
                       }
                   }.padding(.horizontal)
            .navigationBarTitle("All Result")
        }

    }
    
}

struct MenuView_Previews: PreviewProvider {
    static var previews: some View {
        MenuView()
    }
}
