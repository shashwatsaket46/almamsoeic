import pyttsx3
import os
import datetime
import speech_recognition as sr 
import webbrowser
import wikipedia
import os
engine = pyttsx3.init()
voices=engine.getProperty('voices')
engine.setProperty('voices', voices[2].id)
{"Shashwat":"shashwat.saket46@gmail.com"}

def speak(audio):
    engine.say(audio)
    engine.runAndWait()
def wishMe():
    hour=int(datetime.datetime.now().hour)
    if hour>=0 and hour<12:
        speak("Good Morning !")
    elif hour>=12 and hour<18:
        speak("Good Afternoon!")
    else:
        speak("Good Evening!")
def takeCommand():
    #it takes microphone input and return string output
    r=sr.Recognizer()
    with sr.Microphone() as source:
        print("Listening...")
        r.pause_threshold=0.9
        audio=r.listen(source)
    try:
        print("Recognize")
        query =r.recognize_google(audio)
        print("You said: ")
        print(query)
    except Exception as e:
        print(e)
        print("Can You Please Speak it again?")
        return "None"
    return query

if __name__=="__main__":
    wishMe()
    speak("Hello Shahswat! This is Almamoseic. How may I help you")
    while True:
        query = takeCommand().lower()
        if 'wikipedia' in query:
            speak('Searching Wikipedia...')
            query=query.replace("Wikipedia", "")
            results=wikipedia.summary(query, sentences=2)
            speak("According to Wikipedia")
            print(results)
            speak(results)
        elif 'open youtube' in query:
            webbrowser.open_new_tab("www.youtube.com")
        elif 'open google' in query:
            webbrowser.open_new_tab("www.google.com")
        elif 'open medium' in query:
            webbrowser.open_new_tab("www.medium.com")
        elif 'time' in query:
            strtime=datetime.datetime.now().strftime("%H:%M:%S")
            speak("Sir, the time is: ")
            speak(strtime)
    
          



