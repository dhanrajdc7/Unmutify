import 'package:mdi/mdi.dart';
import 'package:unmutify/emojis/emoji.dart';
import 'package:unmutify/emojis/category.dart';
import 'package:unmutify/emojis/sub_category.dart';

/// ALL CATEGORIES
var allCategories = [
  commonCategory,
  numbersCategory,
  greetingsCategory,
  reactionsCategory,
  instructionsCategory,
  timingsCategory
];

/// NUMBERS
var numbersCategory = Category(
    name: "Numbers",
    icon: Mdi.orderNumericAscending,
    items: [
      SubCategory(
          name: "Numerics",
          items: [
            Emoji(emo: "0️⃣", info: "Zero"),
            Emoji(emo: "1️⃣", info: "One"),
            Emoji(emo: "2️⃣", info: "Two"),
            Emoji(emo: "3️⃣", info: "Three"),
            Emoji(emo: "4️⃣", info: "Four"),
            Emoji(emo: "5️⃣", info: "Five"),
            Emoji(emo: "6️⃣", info: "Six"),
            Emoji(emo: "7️⃣", info: "Seven"),
            Emoji(emo: "8️⃣", info: "Eight"),
            Emoji(emo: "9️⃣", info: "Nine"),
            Emoji(emo: "🔟", info: "Ten"),
          ]
      ),
      SubCategory(
          name: "Symbols",
          items: [
            Emoji(emo: "*️⃣", info: "Star"),
            Emoji(emo: "#️⃣", info: "Hash"),
          ]
      ),
      SubCategory(
          name: "Math",
          items: [
            Emoji(emo: "➕", info: "Plus"),
            Emoji(emo: "➖", info: "Minus"),
            Emoji(emo: "✖️", info: "Multiply"),
            Emoji(emo: "➗", info: "Divide"),
            Emoji(emo: "♾️", info: "Infinity"),
          ]
      ),
    ]
);

/// COMMONLY USED EMOJIS
var commonCategory = Category(
    name: "Common",
    icon: Mdi.messageReplyText,
    items: [
          SubCategory(
              name: "Feeling",
              items: [
                Emoji(emo: "👋", info: "Hi"),
                Emoji(emo: "👍", info: "Yes"),
                Emoji(emo: "🙅", info: "No"),
                Emoji(emo: "🙆", info: "Ok"),
                Emoji(emo: "🙏", info: "Thank you"),
                Emoji(emo: "🙋", info: "Me"),
                Emoji(emo: "☺️", info: "You are welcome"),
                Emoji(emo: "🙌", info: "Yup"),
                Emoji(emo: "👏", info: "Congrats"),
                Emoji(emo: "✌️", info: "Bye"),
                Emoji(emo: "🤟", info: "Love you"),
                Emoji(emo: "👌", info: "Nice"),
                Emoji(emo: "❔", info: "How are you"),
              ]
          )
    ]
);

/// GREETINGS
var greetingsCategory = Category(
    name: "Greetings",
    icon: Mdi.humanGreeting,
    items: [
          SubCategory(
              name: "Time",
              items: [
                Emoji(emo: "☀️", info: "Good Morning"),
                Emoji(emo: "🌙", info: "Good Night"),
                Emoji(emo: "⛅️", info: "Good Afternoon"),
                Emoji(emo: "🌆", info: "Good Evening"),
                Emoji(emo: "✨", info: "Have a nice day"),
                Emoji(emo: "🤔", info: "How are you"),
                Emoji(emo: "🤗", info: "Hope you are doing well"),
              ]
          )
    ]
);

/// REACTIONS
var reactionsCategory = Category(
    name: "Reactions",
    icon: Mdi.react,
    items: [
          SubCategory(
              name: "Happy",
              items: [
                Emoji(emo: "🤗", info: "Thank you so much"),
                Emoji(emo: "🤝", info: "Nice to meet you"),
                Emoji(emo: "🤯", info: "Mind Blowing"),
                Emoji(emo: "😱", info: "Oh My God"),
                Emoji(emo: "🥳", info: "Congratulations"),
                Emoji(emo: "😆", info: "LOL"),
                Emoji(emo: "🧐", info: "What is this"),
                Emoji(emo: "🤩", info: "Awesome"),
                Emoji(emo: "👻", info: "Surprise"),
                Emoji(emo: "🤷", info: "I don't know"),
              ]
          ),
          SubCategory(
              name: "Sad",
              items: [
                Emoji(emo: "😵", info: "Oh no"),
                Emoji(emo: "☹️", info: "Really sad"),
                Emoji(emo: "😮", info: "Ohh"),
                Emoji(emo: "🤒", info: "Not feeling well"),
              ]
          )
    ]
);

/// INSTRUCTIONS
var instructionsCategory = Category(
    name: "Instructions",
    icon: Mdi.checkboxMarkedCircleOutline,
    items: [
          SubCategory(
              name: "Actions",
              items: [
                Emoji(emo: "🤫", info: "Keep Quiet"),
                Emoji(emo: "🙄", info: "Look Up"),
                Emoji(emo: "🏃", info: "Run"),
                Emoji(emo: "🤔", info: "Think"),
                Emoji(emo: "🦻", info: "Listen"),
                Emoji(emo: "👀", info: "Look"),
                Emoji(emo: "💧", info: "Drop"),
                Emoji(emo: "✍️", info: "Write"),
              ]
          ),
          SubCategory(
              name: "Directions",
              items: [
                Emoji(emo: "⬆️", info: "Up"),
                Emoji(emo: "⬇️", info: "Down"),
                Emoji(emo: "⬅️", info: "Left"),
                Emoji(emo: "➡️", info: "Right"),
                Emoji(emo: "↖️", info: "Top Left"),
                Emoji(emo: "↗️", info: "Top Right"),
                Emoji(emo: "↘️", info: "Bottom Right"),
                Emoji(emo: "↙️", info: "Bottom Left"),
                Emoji(emo: "↕️", info: "Vertical"),
                Emoji(emo: "↔️", info: "Horizontal"),
              ]
          ),
          SubCategory(
              name: "Turn",
              items: [
                Emoji(emo: "⤴️", info: "Turn Up"),
                Emoji(emo: "⤵️", info: "Turn Down"),
                Emoji(emo: "↩️", info: "Turn Left"),
                Emoji(emo: "↪️", info: "Turn Right"),
                Emoji(emo: "🔄", info: "Turn Around"),
                Emoji(emo: "🔃", info: "Flip"),
              ]
          ),
          SubCategory(
              name: "Controls",
              items: [
                Emoji(emo: "▶️", info: "Play"),
                Emoji(emo: "⏸", info: "Pause"),
                Emoji(emo: "⏹️", info: "Stop"),
                Emoji(emo: "⏺️", info: "Record"),
                Emoji(emo: "⏮️️", info: "Previous Track"),
                Emoji(emo: "⏪", info: "Fast Reverse"),
                Emoji(emo: "⏩", info: "Fast Forward"),
                Emoji(emo: "⏭️", info: "Next Track"),
                Emoji(emo: "🔼", info: "Volume Up"),
                Emoji(emo: "🔽", info: "Volume Down"),
                Emoji(emo: "🔇", info: "Mute"),
                Emoji(emo: "🔊", info: "Unmute"),
                Emoji(emo: "🔀", info: "Shuffle"),
                Emoji(emo: "🔁", info: "Repeat"),
                Emoji(emo: "🔂", info: "Repeat Single"),
                Emoji(emo: "⏏️", info: "Eject"),
                Emoji(emo: "🔅", info: "Dim"),
                Emoji(emo: "🔆", info: "Bright"),
                Emoji(emo: "📳", info: "Vibrate Mode"),
                Emoji(emo: "📴", info: "Switch Off Mode"),
              ]
          )
    ]
);

/// TIMINGS
var timingsCategory = Category(
    name: "Timings",
    icon: Mdi.clockTimeEightOutline,
    items: [
            SubCategory(
                name: "Phase",
                items: [
                  Emoji(emo: "🌞", info: "Today"),
                  Emoji(emo: "⛅️", info: "Afternoon"),
                  Emoji(emo: "🌆️", info: "Evening"),
                  Emoji(emo: "🌚", info: "Tonight"),
                  Emoji(emo: "☀️", info: "Before Midday"),
                  Emoji(emo: "🌙", info: "After Midday"),
                ]
            ),
            SubCategory(
                name: "Period",
                items: [
                  Emoji(emo: "⏪", info: "Yesterday"),
                  Emoji(emo: "⏩", info: "Tomorrow"),
                  Emoji(emo: "🔂", info: "Next Week"),
                  Emoji(emo: "📅️", info: "This Month"),
                  Emoji(emo: "🗓", info: "Next Month"),
                ]
            ),
            SubCategory(
                name: "Clock",
                items: [
                  Emoji(emo: "🕛", info: "Twelve O Clock"),
                  Emoji(emo: "🕧", info: "Twelve Thirty"),
                  Emoji(emo: "🕐", info: "One O Clock"),
                  Emoji(emo: "🕜", info: "One Thirty"),
                  Emoji(emo: "🕑", info: "Two O Clock"),
                  Emoji(emo: "🕝", info: "Two Thirty"),
                  Emoji(emo: "🕒", info: "Three O Clock"),
                  Emoji(emo: "🕞", info: "Three Thirty"),
                  Emoji(emo: "🕓", info: "Four O Clock"),
                  Emoji(emo: "🕟", info: "Four Thirty"),
                  Emoji(emo: "🕔", info: "Five O Clock"),
                  Emoji(emo: "🕠", info: "Five Thirty"),
                  Emoji(emo: "🕕", info: "Six O Clock"),
                  Emoji(emo: "🕡", info: "Six Thirty"),
                  Emoji(emo: "🕖", info: "Seven O Clock"),
                  Emoji(emo: "🕢", info: "Seven Thirty"),
                  Emoji(emo: "🕗", info: "Eight O Clock"),
                  Emoji(emo: "🕣", info: "Eight Thirty"),
                  Emoji(emo: "🕘", info: "Nine O Clock"),
                  Emoji(emo: "🕤", info: "Nine Thirty"),
                  Emoji(emo: "🕙", info: "Ten O Clock"),
                  Emoji(emo: "🕥", info: "Ten Thirty"),
                  Emoji(emo: "🕚", info: "Eleven O Clock"),
                  Emoji(emo: "🕦", info: "Eleven Thirty"),
                ]
            ),
    ]
);


var consumablesCategory = Category(
  name: "Consumables",
  icon: Mdi.foodAppleOutline,
  items: [
    SubCategory(
        name: "Food",
        items: [

        ]
    )
  ]
);