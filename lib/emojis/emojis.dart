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
  timingsCategory,
  consumablesCategory
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
              name: "Messages",
              items: [
                    Emoji(emo: "👋", info: "Hi"),
                    Emoji(emo: "✌️", info: "Bye"),
                    Emoji(emo: "🙏", info: "Thank you"),
                    Emoji(emo: "☺️", info: "You are welcome"),
                    Emoji(emo: "👏", info: "Congrats!"),
              ]
          ),
          SubCategory(
              name: "Questions",
              items: [
                    Emoji(emo: "❔", info: "How are you?"),
                    Emoji(emo: "❓", info: "How is it going?"),
                    Emoji(emo: "⁉️", info: "Are you ok?"),
                    Emoji(emo: "❔", info: "How are you?"),
                    Emoji(emo: "🆙", info: "What's up?"),
              ]
          ),
          SubCategory(
              name: "Responses",
              items: [
                    Emoji(emo: "👍", info: "Yes"),
                    Emoji(emo: "🙅", info: "No"),
                    Emoji(emo: "🙆", info: "Ok"),
                    Emoji(emo: "🙋", info: "Me"),
                    Emoji(emo: "☺️", info: "You are welcome"),
                    Emoji(emo: "🙌", info: "Yup"),
                    Emoji(emo: "✌️", info: "Bye"),
                    Emoji(emo: "🤟", info: "Love you"),
                    Emoji(emo: "👌", info: "Nice"),
                    Emoji(emo: "🆒", info: "Cool"),
                    Emoji(emo: "✅", info: "Right"),
                    Emoji(emo: "❌", info: "Wrong"),
                    Emoji(emo: "🔺", info: "I Agree"),
                    Emoji(emo: "🔻", info: "I Disagree"),
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
            Emoji(emo: "🥳", info: "Congratulations"),
            Emoji(emo: "😆", info: "LOL"),
            Emoji(emo: "😂", info: "Hilarious"),
            Emoji(emo: "🤣", info: "Laughing Hard"),
            Emoji(emo: "🙃", info: "Sarcasm"),
            Emoji(emo: "🧐", info: "What is this"),
            Emoji(emo: "🤩", info: "Awesome"),
            Emoji(emo: "💯", info: "Hundred Percent"),
            Emoji(emo: "😍", info: "Loving It"),
            Emoji(emo: "😘", info: "Love you"),
            Emoji(emo: "😋", info: "Delicious"),
            Emoji(emo: "😎", info: "Awesome"),
            Emoji(emo: "😌", info: "Thank God"),
            Emoji(emo: "👻", info: "Surprise"),
            Emoji(emo: "😲", info: "Ohh"),
            Emoji(emo: "🙇", info: "Bow"),
            Emoji(emo: "🙌", info: "High Five"),
            Emoji(emo: "🙆", info: "Ok"),
            Emoji(emo: "🤔", info: "Thinking"),
            Emoji(emo: "🧐", info: "What is this?"),
            Emoji(emo: "🤷", info: "I don't know"),
            Emoji(emo: "🥵", info: "Hot"),
            Emoji(emo: "🥶", info: "Cold"),
          ]
      ),
      SubCategory(
          name: "Sad",
          items: [
            Emoji(emo: "😭", info: "Crying"),
            Emoji(emo: "😵", info: "Oh no"),
            Emoji(emo: "☹️", info: "Really sad"),
            Emoji(emo: "😮", info: "Ohh"),
            Emoji(emo: "🤒", info: "Not feeling well"),
            Emoji(emo: "🤕", info: "Injured"),
            Emoji(emo: "🤢", info: "Nauseated"),
            Emoji(emo: "🤮", info: "Vomiting"),
            Emoji(emo: "🤧", info: "Sneezing"),
            Emoji(emo: "😕", info: "Confused"),
            Emoji(emo: "🥴", info: "Woozy"),
            Emoji(emo: "😵", info: "Knocked Out"),
            Emoji(emo: "😪", info: "Tired"),
            Emoji(emo: "😶", info: "Speechless"),
            Emoji(emo: "😥", info: "Upset"),
            Emoji(emo: "😢", info: "Miss You"),
            Emoji(emo: "😫", info: "Tired, need a break"),
            Emoji(emo: "🤦", info: "Oh No"),
            Emoji(emo: "🥱", info: "Bored"),
          ]
      ),
      SubCategory(
          name: "Emotions",
          items: [
            Emoji(emo: "❤️", info: "I love you"),
            Emoji(emo: "💌", info: "Love Letter"),
            Emoji(emo: "💘", info: "In Relationship"),
            Emoji(emo: "💝️", info: "Love Gift"),
            Emoji(emo: "💖", info: "Falling in Love"),
            Emoji(emo: "💗", info: "Love you so much"),
            Emoji(emo: "❣️", info: "I very much agree on this"),
            Emoji(emo: "💔", info: "Breakup"),
          ]
      ),
      SubCategory(
          name: "Fear",
          items: [
            Emoji(emo: "😱", info: "Oh My God"),
            Emoji(emo: "😬️", info: "Awkward"),
            Emoji(emo: "😖", info: "Terrible"),
            Emoji(emo: "😨", info: "Fearful"),
            Emoji(emo: "😰", info: "Anxious"),
            Emoji(emo: "🤫", info: "Keep Quiet"),
            Emoji(emo: "😮‍💨", info: "Thank God"),
          ]
      ),
      SubCategory(
          name: "Angry",
          items: [
            Emoji(emo: "😒", info: "Annoying"),
            Emoji(emo: "️😤", info: "Frustrating"),
            Emoji(emo: "😠", info: "Angry"),
            Emoji(emo: "😡", info: "Extremely Angry"),
            Emoji(emo: "🤐", info: "Shut Up"),
            Emoji(emo: "🤯", info: "Head Exploding"),
            Emoji(emo: "💢", info: "I'm Angry"),
          ]
      ),
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

/// Consumables
var consumablesCategory = Category(
  name: "Consumables",
  icon: Mdi.foodAppleOutline,
  items: [
    SubCategory(
        name: "Prepared Foods & Meals",
        items: [
          Emoji(emo: "🍞", info: "Bread"),
          Emoji(emo: "🥞", info: "Pancakes"),
          Emoji(emo: "🧀", info: "Cheese"),
          Emoji(emo: "🍗", info: "Chicken Leg"),
          Emoji(emo: "🥩", info: "Meat"),
          Emoji(emo: "🍔", info: "Hamburger"),
          Emoji(emo: "🍟", info: "French Fries"),
          Emoji(emo: "🍕", info: "Pizza"),
          Emoji(emo: "🌭", info: "Hot Dog"),
          Emoji(emo: "🥪", info: "Sandwich"),
          Emoji(emo: "🥚", info: "Egg"),
          Emoji(emo: "🍳", info: "Omelet"),
          Emoji(emo: "🥗", info: "Salad"),
          Emoji(emo: "🍿", info: "Popcorn"),
          Emoji(emo: "🧈", info: "Butter"),
          Emoji(emo: "🍙", info: "Rice Ball"),
          Emoji(emo: "🍚", info: "Cooked Rice"),
          Emoji(emo: "🍣", info: "Sushi"),
          Emoji(emo: "🧂", info: "Salt"),
          Emoji(emo: "🥚", info: "Egg"),
        ]
    ),
    SubCategory(
        name: "Fruits",
        items: [
          Emoji(emo: "🍇", info: "Grapes"),
          Emoji(emo: "🍈", info: "Melon"),
          Emoji(emo: "🍉", info: "Watermelon"),
          Emoji(emo: "🍊", info: "Orange"),
          Emoji(emo: "🍋", info: "Lemon"),
          Emoji(emo: "🍌", info: "Banana"),
          Emoji(emo: "🍍", info: "Pineapple"),
          Emoji(emo: "🥭", info: "Mango"),
          Emoji(emo: "🍎", info: "Red Apple"),
          Emoji(emo: "🍏", info: "Green Apple"),
          Emoji(emo: "🍐", info: "Pear"),
          Emoji(emo: "🍑", info: "Peach"),
          Emoji(emo: "🍒", info: "Cherries"),
          Emoji(emo: "🍓", info: "Strawberry"),
          Emoji(emo: "🫐", info: "Blueberries"),
          Emoji(emo: "🥝", info: "Kiwi"),
          Emoji(emo: "🍅", info: "Tomato"),
          Emoji(emo: "🥥", info: "Coconut"),
        ]
    ),
    SubCategory(
        name: "Vegetables",
        items: [
          Emoji(emo: "🥑", info: "Avocado"),
          Emoji(emo: "🍆", info: "Eggplant"),
          Emoji(emo: "🥔", info: "Potato"),
          Emoji(emo: "🥕", info: "Carrot"),
          Emoji(emo: "🌽", info: "Corn"),
          Emoji(emo: "🌶️", info: "Hot Pepper"),
          Emoji(emo: "🫑", info: "Bell Pepper"),
          Emoji(emo: "🥒", info: "Cucumber"),
          Emoji(emo: "🥬", info: "Leafy Green"),
          Emoji(emo: "🥦", info: "Broccoli"),
          Emoji(emo: "🧄", info: "Garlic"),
          Emoji(emo: "🧅", info: "Onion"),
          Emoji(emo: "🍄", info: "Mushroom"),
          Emoji(emo: "🥜", info: "Peanuts"),
          Emoji(emo: "🌰", info: "Chestnut"),
        ]
    ),
    SubCategory(
        name: "Sweets",
        items: [
          Emoji(emo: "🍦", info: "Soft Ice Cream"),
          Emoji(emo: "🍧", info: "Shaved Ice"),
          Emoji(emo: "🍨", info: "Ice Cream"),
          Emoji(emo: "🍩", info: "Doughnut"),
          Emoji(emo: "🍪", info: "Cookie"),
          Emoji(emo: "🎂️", info: "Birthday Cake"),
          Emoji(emo: "🍰", info: "Short Cake"),
          Emoji(emo: "🧁", info: "Cup Cake"),
          Emoji(emo: "🥧", info: "Pie"),
          Emoji(emo: "🍫", info: "Chocolate Bar"),
          Emoji(emo: "🍬", info: "Candy"),
          Emoji(emo: "🍭", info: "Lollipop"),
          Emoji(emo: "🍮", info: "Custard"),
          Emoji(emo: "🍯", info: "Honey Pot"),
        ]
    ),
    SubCategory(
        name: "Drinks",
        items: [
          Emoji(emo: "🍼", info: "Baby Bottle"),
          Emoji(emo: "🥛", info: "Glass of Milk"),
          Emoji(emo: "☕", info: "Coffee"),
          Emoji(emo: "🫖", info: "Teapot"),
          Emoji(emo: "🍵", info: "Tea"),
          Emoji(emo: "️🍾", info: "Green Bottle of champagne"),
          Emoji(emo: "🍷", info: "Wine Glass"),
          Emoji(emo: "🍸", info: "Cocktail Glass"),
          Emoji(emo: "🍹", info: "Tropical Drink"),
          Emoji(emo: "🍺", info: "Beer Mug"),
          Emoji(emo: "🥂", info: "Clinking Glasses"),
          Emoji(emo: "🥃", info: "Tumbler Glass"),
          Emoji(emo: "🥤", info: "Cup with Straw"),
          Emoji(emo: "🧋", info: "Bubble Tea"),
          Emoji(emo: "🧃", info: "Beverage Box"),
          Emoji(emo: "🧉", info: "Mate"),
          Emoji(emo: "🧊", info: "Ice"),
        ]
    ),
  ]
);