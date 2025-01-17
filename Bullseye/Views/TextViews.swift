import SwiftUI

struct InstructionText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .bold()
      .multilineTextAlignment(.center)
      .lineSpacing(4.0)
      .font(.footnote)
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
  }
}

struct BigNumberText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .kerning(-1.0)
      .font(.largeTitle)
      .fontWeight(.black)
      .foregroundColor(Color("TextColor"))
  }
}

struct SliderLabelText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct BodyText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .font(.subheadline)
      .fontWeight(.semibold)
      .multilineTextAlignment(.center)
      .lineSpacing(12)
      .foregroundColor(Color("TextColor"))
  }
}

struct ButtonText: View {
  var text: String
  
  var body: some View {
    Text(text)
      .bold()
      .padding()
      .frame(maxWidth: .infinity)
      .background(Color.accentColor)
      .foregroundStyle(.white)
      .cornerRadius(12)
  }
}

struct LabelText: View {
  var text: String
  
  var body: some View {
    Text(text.uppercased())
      .kerning(1.5)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct ScoreText: View {
  var score: Int
  
  var body: some View {
    Text(String(score))
      .kerning(-0.2)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct DateText: View {
  var date: Date
  
  var body: some View {
    Text(date, style: .time)
      .kerning(-0.2)
      .font(.title3)
      .bold()
      .foregroundColor(Color("TextColor"))
  }
}

struct BigBoldText: View {
  let text: String

  var body: some View {
    Text(text.uppercased())
      .kerning(2.0)
      .foregroundColor(Color("TextColor"))
      .font(.title)
      .fontWeight(.black)
  }
}

struct TextViews_Previews: PreviewProvider {
  static var previews: some View {
    VStack {
      InstructionText(text: "Instructions")
      BigNumberText(text: "999")
      SliderLabelText(text: "99")
      LabelText(text: "Score")
      BodyText(text: "You scored 200 Points\n 🎉🎉🎉")
      ButtonText(text: "Start New Round")
      ScoreText(score: 420)
      DateText(date: Date())
      BigBoldText(text: "Leaderboard")
    }
    .padding()
  }
}
