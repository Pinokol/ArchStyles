//
//  HelloView.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 01.12.2024.
//

import Observation
import SwiftUI

struct ArchQuizView: View {
    
    @State var quiz: QiuizViewModel = .init()
    
    @State var showResult: Bool = false
    
    var body: some View {
        ZStack () {
            switch quiz.mode {
            case .start:
                startView
                    .transition(.move(edge: .leading))
            case .inProgress:
                inProgressView
                    .transition(.move(edge: .trailing))
            }
        }
        .popover(isPresented: $showResult) {
            popoverView
                .presentationDetents([.height(200)])
                .onDisappear{
                    withAnimation {
                        quiz.answers.removeAll()
                    }
                }
        }
        
    }
    
    // Стартовый экран
    var startView: some View {
        VStack {
            Image(systemName: "building.columns.circle")
                .imageScale(.large)
                .font(.largeTitle)
                .foregroundColor(.blue)
            Text("Архитектурный Квиз")
                .font(.largeTitle)
                .foregroundColor(.blue)
                .padding()
            Button("Начать") {
                withAnimation(.spring(duration: 0.25)) {
                    quiz.mode = .inProgress
                }
            }
            .font(.largeTitle)
            .foregroundColor(.green)
        }
    }
    
    // Экран с процессом опроса
    var inProgressView: some View {
        ZStack() {
            LinearGradient.greenGradient
                .ignoresSafeArea()
            VStack() {
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 8) {
                        ForEach(quiz.questions) { question in
                            QuizListRow(question: question)
                                .environment(quiz)
                        }
                    }
                }
                
                Button(action: {
                    showResult = true
                }) {
                    Text("Проверить")
                }
                .buttonStyle(BorderedButtonStyle())
                .disabled(quiz.answers.keys.count != quiz.questions.count)
            }
            .padding(.bottom, 24)
            .padding(.top, 32)
        }
    }
    
    // Экран с результатом опроса
    var popoverView: some View {
        ZStack() {
            LinearGradient.greenGradient
                .ignoresSafeArea()
            
            let answers: Int = {
                var result: Int = 0
                quiz.questions.forEach({
                    if $0.rightAnswerID == quiz.answers[$0.id] {
                        result += 1 }
                })
                return result
            }()
            
            VStack() {
                Text("Ваш результат \(answers) из \(quiz.answers.keys.count)")
                Text("Опрос \(answers < quiz.answers.keys.count ? "не пройден" : "пройден")")
                
                HStack(spacing: 24) {
                    Button(action: {
                        showResult = false
                        withAnimation { quiz.answers.removeAll() }
                    }) {
                        Text("Повторить")
                    }
                    .buttonStyle(BorderedButtonStyle())
                    
                    Button(action: {
                        showResult = false
                        withAnimation {
                            quiz.answers.removeAll()
                            quiz.mode = .start
                        }
                    }) {
                        Text("Выйти")
                    }
                    .buttonStyle(BorderedButtonStyle())
                }
            }
            
        }
    }
    
}

struct ArchQuizView_Previews: PreviewProvider {
    static var previews: some View {
        ArchQuizView()
    }
    
}






