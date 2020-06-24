//
//  Home.swift
//  BiographyApp
//
//  Created by Wisnu Anggara on 22/06/20.
//  Copyright © 2020 Untitled Company. All rights reserved.
//

import SwiftUI

struct Home : View {
    
    @State var index = 0
    
    var body: some View{
        
        HStack(spacing: 0) {
            
            VStack{
                
                Button(action: {
                    self.index = 4
                }) {
                    
                    Image("menu")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 22, height: 22)
                    
                }
                .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
            
                
                Group{
                    
                    
                    Button(action: {
                        
                        self.index = 3
                        
                    }) {
                        
                        VStack{
                            
                            Text("Actors")
                            .frame(width: 120,height: 35)
                            .foregroundColor(self.index == 3 ? Color.white : Color.black)
                            
                        }
                        .background(Color("Color1").opacity(self.index == 3 ? 1 : 0))
                        .clipShape(CShape1())
                        
                    }
                    .rotationEffect(.init(degrees: -90))
                    .padding(.top, 80)
                    
                    Spacer(minLength: 0)
                    
                    
                    Button(action: {
                        
                        self.index = 2
                        
                    }) {
                        
                        VStack{
                            
                            Text("Athletes")
                            .frame(width: 120,height: 35)
                            .foregroundColor(self.index == 2 ? Color.white : Color.black)
                            
                        }
                        .background(Color("Color1").opacity(self.index == 2 ? 1 : 0))
                        .clipShape(CShape1())
                        
                    }
                    .rotationEffect(.init(degrees: -90))
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.index = 1
                        
                    }) {
                        
                        VStack{
                            
                            Text("Musicans")
                            .frame(width: 120,height: 35)
                            .foregroundColor(self.index == 1 ? Color.white : Color.black)
                            
                        }
                        .background(Color("Color1").opacity(self.index == 1 ? 1 : 0))
                        .clipShape(CShape1())
                        
                    }
                    .rotationEffect(.init(degrees: -90))
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                        self.index = 0
                        
                    }) {
                        
                        VStack{
                            
                            Text("Politicans")
                            .frame(width: 120,height: 35)
                            .foregroundColor(self.index == 0 ? Color.white : Color.black)
                            
                        }
                        .background(Color("Color1").opacity(self.index == 0 ? 1 : 0))
                        .clipShape(CShape1())
                        
                    }
                    .rotationEffect(.init(degrees: -90))
                    
                    Spacer(minLength: 0)
                    
                    Button(action: {
                        
                    }) {
                        
                        Image("search")
                            .renderingMode(.original)
                            .resizable()
                            .frame(width: 30, height: 30)
                    }
                    .padding(.bottom)
                    .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                
                }
            }
            .padding(.vertical)
            .frame(width: 60)
            .background(Color("Color"))
            .clipShape(CShape())
            
            GeometryReader{_ in
                
                VStack{
                    
                    if self.index == 0{
                        
                        PoliticansView()
                    }
                    else if self.index == 1{
                        
                        MusicansView()
                    }
                    else if self.index == 2{
                        
                        AthletesView()
                    }
                    else if self.index == 3{
                        ActorsView()
                    }
                    else{
                        
                        MenuView()
                        
                    }
                    
                }
                .padding(.top, UIApplication.shared.windows.first?.safeAreaInsets.top)
                 .padding(.bottom, UIApplication.shared.windows.first?.safeAreaInsets.bottom)
                
                // due to all edges are ignored...
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
