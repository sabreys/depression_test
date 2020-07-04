class QuestionSource{

  int questionNumber=0;
  int generalScore=0;

  List<Question> questions=[
    Question(text: "Üzüntülü yada neşesiz hissetmek"),
    Question(text: "mutsuz yada umutsuz hissetmek"),
    Question(text: "Ağlama nöbetleri yada ağlamaklı olmak"),
    Question(text: "Cesaretsiz hissetmek"),
    Question(text: "Çaresiz hissetmek"),
    Question(text: "Düşük özgüven"),
    Question(text: "Değersiz ve yetersiz hissetmek"),
    Question(text: "Suçluluk yada utanç"),
    Question(text: "Kendinizi eleştirmek ya da kendinizi suçlamak"),
    Question(text: "Karar vermede güçlük"),
    Question(text: "Aile,arkadaş ve iş arkadaşlarına yönelik ilgi kaybı"),
    Question(text: "Yalnızlık"),
    Question(text: "Aile ya da arkadaşlarla daha az zaman geçirme"),
    Question(text: "Motivasyon eksikliği"),
    Question(text: "İşte ve diğer aktivitelerde ilgi kaybı"),
    Question(text: "iş ve diğer aktivitelerden kaçınma"),
    Question(text: "Yaşamaktan zevk alamama ve tatmin olmanın kaybı"),
    Question(text: "Yorgunluk hissi"),
    Question(text: "Uykuya dalmada güçlük ya da çok fazla uyumak"),
    Question(text: "İştah kaybı ya da aşırı iştah"),
    Question(text: "Cinsel istek kaybı"),
    Question(text: "Sağlığınız hakkında aşırı endişelenme"),
    Question(text: "İntihar düşüncesi"),
    Question(text: "Yaşamınızı sona erdirmek ister misiniz?"),
    Question(text: "Kendinize zarar vermek için bir planınız var mı?"),
  ] ;


   String getQuestion(){
     if(questionNumber<25){
       return questions[ questionNumber].text;
     }
     else
       return "Genel Skor:"+ generalScore.toString();

   }

   void setScore(int score){
     questions[questionNumber++].score=score;
     generalScore+=score;
   }


}

class Question{
   String text;
   int score;

   Question({text, score=0}){
     this.text=text;
     this.score=score;
   }

}