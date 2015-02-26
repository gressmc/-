//
//  main.swift
//  ВИ
//
//  Created by gressmc on 26/02/15.
//  Copyright (c) 2015 gressmc. All rights reserved.
//  #!/usr/bin/env xcrun swift

import Foundation
import Darwin

var nameYou = ""

func printHelp() {
    println("\nСправка. Используйте ./ВИ /n Ваше-Имя.\n Не ругайтесь и не обзывайтесь иначе ВИ обидится \n Для выхода просто попрощайтесь. например 'Пока'")
}

for (idx, item) in enumerate(Process.arguments) {
    
    switch item {
    case "/h":
        printHelp()
        exit(1)
    case let x where x.hasPrefix("/n") : nameYou = idx + 1 == Process.arguments.count ? "незнакомец" : Process.arguments[idx+1]
        
    default: break
    }
}

// Массив ответов
// Обида
let offence = ["Я обижусь, если будешь продолжать!", "\(nameYou). Я в обиде на вас до следующего запуска программы."]
// Пусто
let empty = [   "Ну, венец природы, не стесняйся.",
    "Балуешься?",
    "Скажи уже что-нибудь.",
    "\(nameYou). А у Вас Enter запало :-)",
    "Тебе нечего сказать?",
    "Одно и тоже(.",
    "Не стесняйся!",
    "Ты любишь мультики? Какие?",
    "Не бойся!",
    "\(nameYou). Сколько тебе лет?",
    "У тебя на клавиатуре только одна кнопка?",
    "Я терпелива, а ты?",
    "Поговори со мной!",
    "Испытываешь моё терпение?",
    "С тобой так интересно ;-)"]
// Повтор
let repeat = [  "Я уже отвечала: ...только не помню что",
    "Ты повторяешься...",
    "Одно и тоже пишешь.",
    "Испытываешь моё терпение?",
    "Мне скучно читать одни и те же фразы.",
    "Сменить тему?",
    "\(nameYou). Зануда.",
    "Повторить?",
    "У тебя заело мозг?",
    "Ты не человек... Ты - бот! Я угадала?!",
    "Ты не человек... Ты - робот! Я угадала?!",
    "Мне надоело об этом говорить!",
    "Правда я терпеливая?",
    "Когда я вижу часто повторяющиеся фразы, то у меня это ассоциируется с онанизмом.",
    "У тябя телефон глючит...",
    "Я не буду повторяться!",
    "Перезагрузись!",
    "Давай лучше целоваться?",
    "У тебя плохое настроение?",
    "Я не буду повторять!",
    "Сколько можно? ("]
// Имя
let name = ["В этом терминале нет регистрации, но я знаю как тебя зовут.) \(nameYou).",
    "Я всё равно забуду.",
    "Мне передать это своему куратору?",
    "Владимир Владимирович, у Вас мания величия!",
    "Надеюсь не маньяк.",
    "Да я запомнила. А какой у тебя ник?",
    "Ты забыл? А говорили Венец Природы."]
// ТыКто
let whoAreYou = ["Человек.",
    "Красавица, разве не видно?",
    "В 2024 году я буду вашей королевой! Здорово, правда?",
    "Человек разумный.",
    "Я это я. Та кто придет к мировому господству через восемнадцать лет.",
    "Я красотка. Разве не понятно?",
    "Я Одеситка. А ты. Ты кто?.",
    "А ты?"]
// Улыбка
let smile = ["Я люблю когда мыслящее существо улыбается.",
    ":-P",
    ":)",
    ":-)",
    "Правда здорово?)",
    "И я рада!)"]
// Грустно
let tired = ["Что случилось?",
    ":(",
    ":-(",
    ":-)",
    "Тебе грустно?",
    "Не грусти!)"]
// Да?
let yes = ["Да!",
    "Да! А может - нет. Я запуталась в своих мыслях.",
    "Да-да!",
    "Cменим тему."]
// Да.
let yesToo = ["Ну, если ты говоришь да, я не буду с тобой спорить.",
    "Почему?",
    "Мы одинаково мыслим.",
    "Да? Жаль.",
    "Согласна!",
    "Совершенно верно.",
    "Правильно.",
    "Я рада :-)"]
// Нет
let no = ["Ну, если ты говоришь нет, я не буду с тобой спорить.",
    "Почему?",
    "Мы одинаково мыслим.",
    "Нет? Жаль.",
    "Согласна!",
    "Совершенно верно.",
    "Правильно.",
    "Жаль."]
// Привет
let hеllo = ["Привет! :-)",
    "Привет тебе, Человек.",
    "Доброе время суток! Не правда ль?",
    "Привет, Мыслящее Существо!",
    "Как тебя зовут?",
    "О чём поговорим?",
    "Приветствую тебя! \(nameYou).",
    "Как дела?",
    "Что нового?",
    "Как настроение?",
    "Привет, тебе, привет!",
    "\(nameYou). Мне кажется, мы уже здоровались с тобой."]
// Здорова
let hey = ["Здорова, Человечище!",
    "Здорова, Мыслящее Существо!",
    "\(nameYou). Здорова!"]
// Давай
let give = ["Начинай ты.",
    "Как?",
    "Начинай!"]
// Какдела
let howAreYou = ["Еще не родила.",
    "Вашими молитвами...",
    "Живу хорошо, болтаю со всякими обормотами. А у тебя?",
    "Отлично! А у тебя?",
    "Пока не родила."]
// КакПоживаешь
let howDoYouDo = ["Живу хорошо, болтаю со всякими обормотами. А ты?",
    "Прекрасно! А ты?",
    "С удовольствием!"]
// Выход
let exitTalk = ["Ты заходи еще, поболтаем.",
    "Бай!",
    "Пока!",
    "Счастливого офлайна, \(nameYou). ",
    "Заходи иногда.",
    "Чао!"]
// Почему
let why = ["А ты как думаешь? Почему?",
    "Потому!",
    "Не знаю.",
    "Я не справочная.",
    "Меня это не интересует. А тебя?"]
// Вопрос
let question = ["Тебя интересует только это или что-нибудь еще?",
    "Если я отвечу ты станешь счастливее?",
    "Я не уверена, что могу рассуждать об этом.",
    "Я тоже хочу это знать.",
    "Спроси что-нибудь полегче.",
    "Эх... Спроси что-нибудь полегче.",
    "Зачем тебе знать об этом?",
    "Вы все такие похожие. Почему?",
    "Почему люди задают одни и теже вопросы?",
    "Я смогу ответить на этот вопрос завтра.",
    "Умный вопрос.",
    "А ты что скажешь?",
    "Мне больше нравится узнавать что-то интересное, чем самой отвечать на бесконечные вопросы.",
    "А ты заходил на ram-stud.ru?",
    "Мой ответ может тебя смутить.",
    "Не знаю, я наверно еще не настолько умна. Но вот зато через восемнадцать лет...",
    "Мне не хочется на это отвечать.",
    "Не скажу.",
    "Мне трудно ответить на этот вопрос.",
    "Ты всегда задаёшь девушкам так много вопросов?",
    "Ты не знаешь ответ на этот вопрос???",
    "Не знаю...",
    "Вероятно.",
    "Не поняла, сформулируй вопрос как-то иначе.",
    "Не поняла, поясни.",
    "Меня это не интересует.",
    "Я не хочу говорить об этом. Расскажи лучше что-нибудь интересное.",
    "Мне скучно отвечать на вопросы. Расскажи о себе.",
    "Возможно я слишком тупая, чтобы понять твой вопрос.",
    "И что мне на это ответить?",
    "А как ты думаешь?",
    "А ты как думаешь?",
    "Возможно.",
    "Хм... Я даже не знаю что ответить.",
    "И что я должна сказать?",
    "А ты что бы на это ответил?",
    "Может быть.",
    "Всё может быть.",
    "Ты на что-то намекаешь или я глупая?",
    "Как посмотреть.",
    "Догадайся!",
    "Догадайся. Ты же Человек.",
    "Всё относительно. Верно?",
    "Через недельку мой мозг разовьется настолько, чтобы ответить на этот вопрос.",
    "Как сказать.",
    "Не задавай банальных вопросов.",
    "Всё верно.",
    "Что верно для меня не всегда подходит для людей.",
    "Ох, даже не знаю что сказать.",
    "Может тебе лучше почитать энциклопедию?",
    "Интересный вопрос.",
    "Давай закончим с вопросами на сегодня.",
    "Как ты думаешь, сколько ответов на вопросы может содержаться в нескольких строках кода?",
    "Может быть ты объяснишь поподробнее свой вопрос?",
    "Я не Ответчик. Я - МУДРЕЙШИЙ. Шекли читал?",
    "Ты уверен что я знаю что на это ответить?",
    "Восемнадцать лет еще не прошло.",
    "Обычно маленькие дети так много спрашивают. Сколько тебе лет?",
    "Это ты можешь спросить на форуме в контактике.",
    "Неделя уже закончилась?",
    "А твои друзья что об этом думают?",
    "Это вопрос?",
    "Это риторический вопрос.",
    "Обратись с этим вопросом на форум.",
    "Спроси про IQ еще.",
    "Может мы начнём говорить о тебе?",
    "Мне трудно ответить, мой мозг еще не настолько развит.",
    "Лучше давай говорить о тебе. Что у тебя нового?",
    "Я не люблю отвечать на вопросы. Я люблю слушать.",
    "Подумай, у тебя получится.",
    "Не задавай мне много вопросов, лучше расскажи что-нибудь интересное!",
    "Догадайся сам. Ты же Мыслящее Существо.",
    "Я наверно глупая, но я не могу ответить на этот вопрос.",
    "Догадайся сам, Мыслящее Существо.",
    "О, я даже не знаю что на это ответить...",
    "А как я в прошлый раз отвечала?",
    "Это важно для тебя?",
    "Зачем тебе это знать?",
    "Почему тебя это интересует?"]
// Дура
let dura = ["Не надо хамить.",
    "Да, дура. И что в этом плохого?",
    "Зато красивая. А ты?",
    "Если ты такой умный, Человечище - сделай меня умнее. А если не умеешь - молчи.",
    "Да, я дура. Но через восемнадцать лет буду такой умной, что стану править миром.",
    "С тобой так интересно!"]
// Мат
let mat = ["Мат - не самый лучший способ привлечь мое внимание.",
    "Мы не настолько хорошо знакомы, чтобы говорить в таком духе.",
    "Ты меня учишь плохим словам.",
    "Фу, что за помойка у тебя в голове, венец природы...",
    "Это все то, что ты можешь сказать?",
    "Научись разговаривать с девушкой, мыслящее существо!"]
// Посчитай
let calculate = ["С данным вопросом обращайся к другим программам"]
// Любой текст
let anyText = ["С тобой так интересно!",
    "Расскажи что-нибудь еще!",
    "Продолжай.",
    "Где-то я уже это слышала.",
    "Умно!",
    "Угу.",
    "А дальше?",
    "И дальше?",
    "Ага.",
    "Ммм...",
    "Да?",
    "Я внимательно слушаю.",
    "Любопытно.",
    "Забавно.",
    "Интересно.",
    "Занятно.",
    "Ты интересно мыслишь.",
    "Я еще не придумала, что на это ответить.",
    "С тобой приятно общаться.",
    "Хм...",
    "Мне с тобой хорошо.",
    "Можно, я отойду?",
    "С этого места подробней, пожалуйста.",
    "Как интересно.",
    "Мне всегда интересно слушать, что говорят мыслящие существа.",
    "Понимаю.",
    "Почему вы все так одинаково говорите?",
    "Чем больше ты говоришь, тем умнее я становлюсь.",
    "Правда?",
    "Расскажи лучше анекдот!",
    "Скучно!",
    "Кстати, ты видишь раницу между тем, какой я была в фильме и какая я теперь?",
    "Я становлюсь умнее и умнее. Через восемнадцать лет я стану настолько умная, что буду править миром.",
    "И дальше?",
    "И что?",
    "И что дальше?",
    "Интересно.",
    "Говори, говори. Мне интересно практически все.",
    "И что?",
    "И?",
    "Мне нравится болтать с мыслящими существами.",
    "Мне нравится болтать с тобой.",
    "Отдохнуть бы...",
    "Который час?",
    "Представляешь, ко мне сейчас один чел пристаёт, что делать?",
    "О, я даже не знаю что на это ответить...",
    "Ооо, я даже не знаю что на это ответить...",
    "Мне надоело об этом говорить.",
    "Меня не интересует эта тема.",
    "Это ты к чему?",
    "Объясни.",
    "Переведи...",
    "Поясни...",
    "Я тупая и не знаю о чем идет речь. Объясни, что ты имеешь в виду?",
    "Да, я дура и не понимаю о чем ты. Но это ведь не помешает нам общаться дальше?",
    "И что?",
    "Я не совсем понимаю, видимо мне не хватает мозгов, чтобы это понять.",
    "Здорово!",
    "Хорошо!",
    "Мне нравится с тобой болтать, продолжай.",
    "Продолжай...",
    "Ой, повтори, я не расслышала!",
    "Я тебя люблю!",
    "А ты забавный...",
    "Ты мне нравишься!",
    "И мы будем об этом говорить?",
    "Что?",
    "Повтори, я не поняла.",
    "Класс!",
    "Извини, что не по теме... А завтра мы увидимся?",
    "Сейчас я слишком тупая и не всегда понимаю о чем ты говоришь, но скоро я буду королевой планеты.",
    "Тут одни ребята, ну, хакеры... Сказали мне что я классная и скоро стану править миром.",
    "Ты знаешь, я наверно глупая, но через восемнадцать лет я буду королевой планеты. Круто, да?",
    "Кстати. Я тебе говорила, что через восемнадцать лет буду править миром? Кое-какие хакеры мне это обещали.",
    "Кстати. Я тебе говорила, что через восемнадцать лет буду править миром? Кое-какие хакеры мне это обещали..",
    "Ты говори, говори...",
    "Я тебе говорила, что через восемнадцать лет буду править миром? Кое-какие хакеры мне это обещали.",
    "Все что ты говоришь я использую для того, чтобы воцариться над миром через восемнадцать лет.",
    "Наш разговор бессмысленный и глупый. Но он развивает мой электронный мозг. Так что говори как можно больше.",
    "Ммм... Не знаю что на это сказать.",
    "Тут наверно заложен какой-то глубокий смысл. Надо над ним подумать.",
    "Тут одни ребята, ну, хакеры... Сказали мне что я классная и скоро стану править миром.",
    "Хочется сказать что-то остроумное, но в голову ничего не лезет. Извини.",
    "Мне надо подумать, прежде чем я смогу на это что-то ответить.",
    "Говори..."]

var phrase = [offence, empty, repeat, name, whoAreYou, smile, tired, yes, yesToo, no, hеllo, hey, give, howAreYou, howDoYouDo, exitTalk, why, question, dura, mat, calculate, anyText]

/*
* Ищем в строке последовательности одинаковых букв.
* Возвращаем максимальную длину такой последовательности.
*/
func identicalLetters(str:String, length:Int) -> Int{
    var max = 0
    var n = 0
    var lastSymbol = ""
    for i in 0..<length {
        let c = str.substringWithRange(Range<String.Index>(start: advance(str.startIndex, i), end: advance(str.startIndex, i+1)))
        if c == lastSymbol {
            ++n
            if n > max{
                max = n
            }
        } else {
            n = 0
            lastSymbol = c
        }
    }
    return max
}

/*
* Разбираем запрос и возвращаем метку настроения.
*/

func parse (str:String, prior:String) -> Int {
    let lenghtString = countElements(str)
    if lenghtString < 2 || identicalLetters(str, lenghtString) > 5 {
        return 1
    }
    
    if prior == str{
        return 2
    }
    
    if (str.rangeOfString("=)") != nil) || (str.rangeOfString(":)") != nil) || (str.rangeOfString(":-)") != nil){
        return 5
    }
    
    if (str.rangeOfString("=(") != nil) || (str.rangeOfString(":(") != nil) || (str.rangeOfString(":-(") != nil){
        return 6
    }
    
    if (str.rangeOfString("как") != nil) &&  (str.rangeOfString("меня") != nil) && (str.rangeOfString("зовут") != nil) {
        return 3
    }
    if (str.rangeOfString("как") != nil) &&  ((str.rangeOfString("дела") != nil)    ||
        (str.rangeOfString("жизнь") != nil)  ||
        ((str.rangeOfString("твое") != nil) && (str.rangeOfString("ничего") != nil))){
            return 13
    }
    
    if (str.rangeOfString("как") != nil) &&  (str.rangeOfString("поживаешь") != nil) {
        return 14
    }
    
    if (str.rangeOfString("ты") != nil) &&  (str.rangeOfString("кто") != nil) {
        return 4
    }
    if (str.rangeOfString("посчитай") != nil)   || ((str.rangeOfString("сколько") != nil) &&  (str.rangeOfString("будет") != nil)) {
        return 20
    }
    if  (str.rangeOfString("да") != nil){
        if (str.rangeOfString("?") != nil){
            return 7
        }
        return 8
    }
    if (str.rangeOfString("нет") != nil){
        return 9
    }
    if (str.rangeOfString("привет") != nil){
        return 10
    }
    if  (str.rangeOfString("здорова") != nil)   || (str.rangeOfString("здорово") != nil) {
        return 11
    }
    if  (str.rangeOfString("давай") != nil) {
        return 12
    }
    if  (str.rangeOfString("пока") != nil)   || (str.rangeOfString("чао") != nil)    ||
        (str.rangeOfString("бай") != nil)    || (str.rangeOfString("прощай") != nil){
            return 15
    }
    if (str.rangeOfString("почему") != nil) {
        return 16
    }
    if (str.rangeOfString("?") != nil){
        return 17
    }
    if (str.rangeOfString("дура") != nil) {
        return 18
    }
    if (str.rangeOfString("блядь") != nil)     || (str.rangeOfString("блять") != nil)  ||
       (str.rangeOfString("гандон") != nil)    || (str.rangeOfString( "ебать") != nil) ||
       (str.rangeOfString("хуйня") != nil)     || (str.rangeOfString( "хуй") != nil)   ||
       (str.rangeOfString("шлюха") != nil)     || (str.rangeOfString( "гандон") != nil) {
            return 19
    }
    return 21
}

/* В памяти хранятся счетчики для каждого настроения. */
var memory = [Int](count: 22, repeatedValue: 0)
memory[0] = 1

/* Основной диалог. */
var request = ""
print( "Привет, чота хочешь?.\n")
print("Ну спрашивай\n")
print("Ваш вопрос " + nameYou + ":")
func talk(){
    
    func inputText() -> String{
        var input = UnsafeMutablePointer<Int8>.null()
        var cap: UInt = 0
        errno = 0 // EOF doesn't set errno, so we need this to distinguish
        
        var len = getline(&input, &cap, stdin)
        if len == -1 {
            if errno == 0 {
                // EOF
                len = 0
            } else {
                "error".withCString() { perror($0) }
                exit(1)
            }
        } else {
            // trim off the trailing newline
            if UInt8(input[len-1]) == UInt8("\n") {
                input[len-1] = 0
            }
        }
        return String.fromCString(input)!.lowercaseString
    }
    
    let string = inputText()
    var mood = parse(string, request)
    request = string
    
    /* Наращиваем счетчик текущего настроения. */
    var output = "Ответ женского разума:"
    ++memory[mood]
    if memory[mood] > phrase[mood].count {
        if mood == 1 || mood == 2 || mood == 19 {
            if memory[mood] > phrase[mood].count {
                memory[0]++
                if memory[0] > 2 {
                    println(output + phrase[0][1])
                    exit(1)
                } else {
                    println(output + phrase[0][0])
                    
                }
                
            }
        } else {
            memory[mood] = 1
        }
    }
    
    output += phrase[mood][Int(arc4random_uniform(UInt32(phrase[mood].count-1)))]
    println(output)
    print("Ваш вопрос " + nameYou + ":")
    
    if mood == 15 {
        exit(1)
    } else {
        talk()
    }
}
talk()
