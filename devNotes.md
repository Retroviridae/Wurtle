So this is a page of notes as I'm going through making this app. I'm making this app to get practice with flutter, and get used to the widgets before jumping into bigger projects. Also, I've never made a game before so this will be a nice change of pace from the more utilitarian apps I've made so far. 

First off, I'm following this tutorial on youtube: https://www.youtube.com/playlist?list=PLRz1ICq5mNx8tYouCq1Qd9bRjnYxoCuWH

9/13/22 BIG ANNOYANCE: Almost completely moved on from the project. I was frustrated by the changing aspect ratio messing everything upp. Switching bewtween landscape and portrait completely destroyed the layout. I'm exagerrating because it does work, it's just that everything is ugly. The boxes are rectangles and whatnot. I found out that Flutter has a freakin aspect ratio widget. So I just wrapped the main part of the screen with that widget and centered it. Then boom! Everything is a nice 16:9 aspect ratio regardless. I think this is similar to legit wordle because the desktop verion has a lot of whitespace on the left and right of the game board. This is the biggest deviation/improvement I've made from the tutorial so far. He's building on a phone emulator so no changing aspect ratio. I think this change is just a simple improvement. 

Making good progress now. There's so many dang widgets man. I would've never known about a lot of these widgets. I mean an aspect ratio widget? A widget just to round the corners of a box? Crazy. Who thinks of those things?

9/14/22 More aspect ratio problems: So the next problem the tutorial runs me into is the sizing for the keyboard. He has it based off the dimensions of the screen you're on. This is fine for when you are in portrait, but when you switch to landscape the width of the rows overflows. So I made the width constant like the aspect ratio. This is only a problem because of how I set the aspect ratio and because I want it to work on all ascpect ratios. I left the height to be able to change based on screen size, but I don't think the height changing is as common. I check and changing the height does kinda break it, but I don't care. It shouldn't happen. I tried to fix it with box constraints but none quite worked for me. I'm just gonna build it to work for portrait and landscape, not everything. 

Fixed the problem I had earlier today. He used a component called Fittedbox, which has a fit property called BoxFit.contain. He used it on the letters within the grid, and I used it on the keyboard rows to keep them from overflowing. 

9/15/22: Strange problem with the colors on the game board not acting as expected. I found the github and everything I had written looked exactly the same but was behaving differently from his version. I copied his version and it started working, no idea what was different though despite comparing for a long time. 

Flutter has crazy good error catching. In controller.dart I had this written             
final resultKey = keysMap.entries.where((element) =>
                element.key == tilesEntered[j + (currentRow * 5)]);
Which threw the error "Equality operator `==` invocation with references of unrelated types." I didn't know what this meant but I looked back at the example and noticed I omitted a .letter at the end of tilesEntered. This got me onto the same page as the tutorial and I would have never caught it without that erro message. 
final resultKey = keysMap.entries.where((element) =>
                element.key == tilesEntered[j + (currentRow * 5)].letter);

Having some trouble with init state. I think I understand what it does but I don't understand why it is misbehaving. I made sure to follow the instructions to the letter but it didn't behave the same. I think it would only initstate when I pressed a button, instead of at build time. Not sure why this is happening or how to fix it. Well I might have fixed it by updating the state in the build but not sure if that will cause issues going forward. 

9/16/22 Animation: Started part 16 today and he started adding animation with the Animation Controller. I definitely don't fully understand how this widget works. I guess not super important because I don't expect I'll need many animations. 

Don't understand the builder syntax. Not sure what (_, notifier, __) means. I'll have to look it up. (context, value, child) are the defaiult values but even that is somewhat confusing, I'll check the flutter docs. part 18 definitely one of the most confusing parts so far. Doesn't seem like it'd be complicated but apparently it is. 
