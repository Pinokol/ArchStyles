//
//  QuizListRow.swift
//  ArchStyles
//
//  Created by Виталий Мишин on 09.12.2024.
//

import SwiftUI

struct QuizListRow: View {
    //окружающая среда
    @Environment(QiuizViewModel.self) var quiz
    
    let question: QuizItem
    
    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Text(question.question)
                .font(.system(size: 20, weight: .bold))
            
                .multilineTextAlignment(.leading)
            ForEach(question.answerOptions) { answerOption in
                Button(action: {
                    withAnimation(.spring()) {
                        quiz.answers[question.id] = answerOption.id
                    }
                }) {
                    HStack(alignment: .top) {
                        let isSelected: Bool = quiz.answers[question.id] == answerOption.id
                        Image(systemName: "square")
                            .resizable()
                            .foregroundStyle(Color.teal)
                            .frame(width: 24, height: 24)
                            .overlay {
                                Image(systemName: "checkmark")
                                    .foregroundStyle(Color.red)
                                    .opacity(isSelected ? 1 : 0)
                                
                            }
                        Text(answerOption.answer)
                            .foregroundStyle(Color.black)
                            .multilineTextAlignment(.leading)
                    }
                    .font(.system(size: 18, weight: .medium))
                }
            }
        }
        .padding(.leading, 16)
    }
}
