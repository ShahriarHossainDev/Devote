//
//  NewTaskItemVIew.swift
//  Devote
//
//  Created by Shishir_Mac on 8/8/22.
//

import SwiftUI

struct NewTaskItemVIew: View {
    // MARK: - Property
    @State var task: String = ""
    
    @Environment(\.managedObjectContext) private var viewContext
    @Binding var isShowing: Bool
    
    private var isButtonDisabled: Bool {
        task.isEmpty
    }
    
    // MARK: - Function
    private func addItem() {
        withAnimation {
            let newItem = Item(context: viewContext)
            newItem.timestamp = Date()
            newItem.task = task
            newItem.completion = false
            newItem.id = UUID()
            
            do {
                try viewContext.save()
            } catch {
                let nsError = error as NSError
                fatalError("Unresolved error \(nsError), \(nsError.userInfo)")
            }
            task = ""
            hideKeyboard()
            isShowing = false
        }
    }
    
    // MARK: - Body
    var body: some View {
        VStack {
            Spacer()
            VStack(spacing: 16) {
                TextField("New Task", text: $task)
                    .padding()
                    .background(Color(UIColor.systemGray6))
                    .cornerRadius(10)
                    .foregroundColor(.pink)
                    .font(.system(size: 24, weight: .bold, design: .rounded))
                
                Button {
                    addItem()
                } label: {
                    Spacer()
                    Text("SAVE")
                        .font(.system(size: 24, weight: .bold, design: .rounded))
                    Spacer()
                }
                .padding()
                .foregroundColor(.white)
                .background(isButtonDisabled ? Color.blue : Color.pink)
                .cornerRadius(10)
                .disabled(isButtonDisabled)
                
            }// VStack
            .padding(.horizontal)
            .padding(.vertical, 20)
            .background(Color.white)
            .cornerRadius(16)
            .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.65), radius: 24)
            .frame(maxWidth: 640)
        } // VStack
        .padding()
    }
}

struct NewTaskItemVIew_Previews: PreviewProvider {
    static var previews: some View {
        NewTaskItemVIew(isShowing: .constant(true))
            .background(Color.gray.edgesIgnoringSafeArea(.all))
    }
}
