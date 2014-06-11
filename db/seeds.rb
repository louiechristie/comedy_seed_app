# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
            name:  'Bill Bailey', 
            email: 'billbailey@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=8-xcOrgGFtA',
            user_image: open("http://www.comedycv.co.uk/billbailey/2003-january-bill-bailey.jpg"),
            password: '12341234',
            bio: %Q{Bill Bailey’s career has gone from strength to strength from being the founder member of The Rubber Bishops in 1989 to performing nationally in concert halls on his own one man tour.

He also performs in universities and for corporate clients and internationally at the Melbourne and New Zealand Comedy Festivals as well as Hong Kong and Amsterdam.

Bill's success started when he wrote and performed 'ROCK' with Sean Lock at The Edinburgh Festival and following the unanimous critical acclaim took the show to Glastonbury. 'Rock' was soon after adapted as a series for 'Mark Radcliffe's Show' on Radio 1.

In the same year Bill wrote and appeared in two series of 'Alan's Big One' (1 FM) with Alan Davies.
Bill went on to win a Time Out award for a "Audacious mixture of comedy and sensational performances” He now has a number of television credits including:-

Black Books (Channel 4)
Frank Skinner's Blue Heaven (Channel 4)
Raw Soup (Carlton)
The Funny Farm (STV)
Space Cadets (BBC2)
The Happening (Channel 4)

"Hugely funny...highly talented" - Time Out

"Frequently hilarious and a damn good guitarist" - The Guardian'}
          )

User.create(
            name:  'Alan Carr', 
            email: 'alancarr@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=qytQnITpl8w',
            user_image: open("http://www.comedycv.co.uk/alancarr/alan-carr-2005-may.jpg"),
            password: '12341234',
            bio: %Q{"Alan Carr is the spiritual son of Frankie Howerd." City Life Magazine

Since winning the BBC New Comedy Award for Stand-up 2001 and CityLife Best Newcomer of the Year Alan Carr has risen to become one of the hottest young stand-up stars in Britain. His 2002 Edinburgh Festival show Me 'Ead's Spinnin was given a four star review in Edinburgh bible The List and also became the The Daily Telegraph's Critic's Choice. While 2003's I Love Alan Carr rated as a four star show in both the The Scotsman and The Independent.

Alan regularly appears at The Comedy Store and even has his own monthly show at the Manchester Comedy Store. Alan Carr's Ice Cream Sunday is a night of comedy and cabaret that has established itself as a must see show in Manchester attracting regular celebrity fans such as Tracey Shaw, Neil & Christine Hamilton & Coronation Streets Sally Lindsay.

He appears regularly at most major clubs across the country and has supported both Bob Downe and Men In Coats on nationwide tours.

Alan has featured in Baby Cow's Brain Candy on BBC3 and also as a panellist on Channel 4's Does Doug Know and BBC1's Whoops Baghdad. He has starred as a talking head for Sky One and ITV2. Additionally he has written for Lily Live, Lily Savage's topical show for LWT, and has done various voice-overs including Comfort. 

'Carr's a Star!' Manchester Evening News 
'Bellyachingly Funny' Sunday Telegraph

'The most exciting and most talked about comedian on the live comedy circuit today' The Sunday Herald

'Sharp, sassy material with pitch perfect comic timing' The List}
          )

User.create(
            name:  'Micky Flanagan', 
            email: 'mickyflanagan@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=IXyt6VcoUQI',
            user_image: open("http://www.comedycv.co.uk/mickyflanagan/2003-march-micky-flanagan.jpg"),
            password: '12341234',
            bio: %Q{A professional stand-up since 1997, Micky Flanagan draws on his East End background as he ruthlessly deconstructs the Cockney myth with razor-sharp observational wit. He tells a comic tale of a working class upbringing, where alphabetti spaghetti is a luxury. Micky has come a long way since then, thanks to a university education, and he is now that rare delight - an intellectual Cockney.

Micky's unique brand of intelligent humour appeals to men and women equally, as he bemoans the lot of modern man in pursuit of the perfect idle day, and celebrates being turned away from a night club because his feet are killing him.

LIVE PERFORMANCES

Micky has built a reputation for reliably strong performances on the nationwide comedy circuit. He headlines all of the main venues including The Comedy Store, Lee Hurst¹s Backyard, Up the Creek, The Stand (both Edinburgh and Glasgow), Komedia, Banana, Bearcat, Hampstead Clinic, Ealing Broadway Comedy, etc.

Micky headlined the sell-out Big Value Comedy Show at the Edinburgh Festival 2001.

PRESS QUOTES

Pick of the Week - "The rising star Micky Flanagan" - Sunday Times

"Astonishingly good - a cockney extraordinaire, very entertaining." - Time Out

"The charming Micky Flanagan ended the show with a popular set, very confident and even enigmatic, he uses pace and silence with skill and has a strong physicality." - The Stage

"Micky is the very embodiment of the cheeky, chirpy Cockney, and his chatty, effervescent delivery engages the most reticent of rooms. The infectious energy is also heightened by his exaggerated, almost camp, reactions. It all makes for a rambunctious set that's sometimes rude, sometimes thoughtful, but rarely short of hilarious. Recommended." Chortle.co.uk}
          )

User.create(
            name:  'Sarah Millican', 
            email: 'sarahmillican@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=Gyuo9ZH3frE',
            user_image: open("http://www.comedycv.co.uk/sarahmillican/sarah-millican-2005-may.jpg"),
            password: '12341234',
            bio: %Q{Winner - Amused Moose Comedy Awards 2005
Runner Up - So You Think You're Funny 2005
Runner Up - Funny Women 2005

"Millican is softly spoken (with a seductively lilting North-Eastern accent), cool, calm and collected, and talks maturely about her life. She paints a delightful picture of her domestic situation, recently divorced and living back home with her mother and father - a man with an uncanny knack to be utterly heartless by complete accident. It's assured, accomplished stuff and we'll be hearing a lot more of it on the circuit" - Chortle

"..this sweet voiced Geordie has a winning style." Chortle

"Sarah blew the crowd away and absolutely tore the roof off the gig. After 20 minutes she left the stage to a deafening ovation, and left the headliner with one hell of a job following her" - Dave Ingram

"Slick" - BBC Wear

"She had the audience roaring in recognition" - BBC Tees


Until September 2004, Sarah's wit came from the mouths of others. Her comedy writing has been recognised by the BBC, Live Theatre Newcastle and The Customs House in South Shields where her first play will be staged in September 2005.

One open spot later and she began her rapid ascent to become one of the North East's hottest comics. She hates the term "comedienne". So don't use it.

While relatively new to the circuit, Sarah has established herself as a crowd pleasing act with well written material and a gentle delivery style which disguises her cutting observations on life, love and moving back in with your parents.

A regular at the Funny Bones Comedy Clubs, Stand Up Live and various gigs around the North East, Sarah is happy doing 10 - 20 min sets. She is a prolific writer and plays Gavin Webster's new material night regularly. Armed with her wit, an abundance of smelly gel pens and a specially bought travel sponge, Sarah is about to venture beyond where her metro pass takes her and tell the country about her curtains. No, really.


Clubs where Sarah has performed sets between 10 and 20 min sets include The Stand, HI FI Club, Funny Bones, The Other Side, Comedy Junction and Mirth Control. She has performed 50 gigs and has over 50 booked including The Comedy Store, Covent Garden Comedy Club, Laugh @ Ginglik, XS Malarkey, The Frog and Bucket, Just Laugh and gigs for CK Productions and Agraman.}
          )

User.create(
            name:  'Russell Howard', 
            email: 'russellhoward@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=4wCDuJUiisU',
            user_image: open("http://www.comedycv.co.uk/russellhoward/russell-howard-2005-october.jpg"),
            password: '12341234',
            bio: %Q{An instant hit with his innate ability to improvise on any subject, Russell makes the stage his own personal playground and thrives on spontaneous chats with his audience, leading them down a never-ending series of unstoppably comical journeys.

Star of The Comedy Zone at the 2003 Edinburgh Festival, Russell has twice toured as the special guest of Perrier Award Winner, Daniel Kitson. Fast making a name for himself as one of the exciting young guns of UK comedy, Russell returned to the Edinburgh festival in 2004 to perform his acclaimed debut solo show.

Russell was commissioned by BBC Radio One to write and perform on their new late-night comedy show The Milk Run

What the press said:

"A complete natural" - BBC TV

"Side-splitting, sure to be a future comedy star" - Bristol Evening Post

"Howard has a tiggerish restlessness, bounding around the stage perpetually in search of new angles for his seemingly limitless imagination" - Venue Magazine

"He has the ability to riff joyfully on anything and everything around him" - The Scotsman

"An adorable talent…quick witted, flippant and very funny" - Three Weeks}
          )

User.create(
            name:  'Jimmy Carr', 
            email: 'jimmycarr@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=fcDeLX_-oMk',
            user_image: open("http://comedycv.co.uk/jimmycarr/jimmy-carr-2010-october.jpg"),
            password: '12341234',
            bio: %Q{It's fair to say that Jimmy has grown on us quite a bit. When he first 'launched' we couldn't stand the bloke, but things are looking better for hmi now in that department. He's bound to be pleased.

We knew Carr was a bit posh but it was confirmed to us when we discovered that he attended Gonville and Caius College in Cambridge. We've no idea if it's actually any good but it certainly sounds like it with a name like that.

Carr sold out a full run of his 2003 Edinburgh Festival show, Charm Offensive, and bagged a whole host of 5-star reviews from the national press. He followed up in 2004 with shows in Dublin, Leicester and Glasgow before recording his first live DVD at his show in the Bloomsbury Theatre, London.

Jimmy has been the face of a number of TV shows, fronting Channel 4 quiz 'Your Face Or Mine?' (no, we don't remember it either) and 'Distraction' (no clue). He's also fronted 'Have I Got News For You', 8 Out Of 10 Cats and '100 Greatest Cartoon Characters'.

Jimmy made a teeny bit of history by being the first relatively-well-known-comedian to perform a show in the virtual world, Second Life. A massive success, Jimmy has hinted that there may be future shows to follow.

Although Jimmy is engaged to his long-term girlfriend, he's admitted that he didn't lose his virginity until the age of 26 because of some strict religious beliefs he held.}
          )

User.create(
            name:  'Jack Dee', 
            email: 'jackdee@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=mxlD1sPCvXU',
            user_image: open("http://comedycv.co.uk/jackdee/2002-october-jack-dee.jpg"),
            password: '12341234',
            bio: %Q{Since The Jack Dee Show hit the small screen in February 1992, Jack Dee has become a household name.

Born in Petts Wood and brought up in a family with a history of musical entertainers and mental illness, he left a Winchester comprehensive to start a career in catering. Realising his dour persona got more laughs
than respect in the restaurant business, he followed up the advice of numerous colleagues and customers and took to the boards. That was in 1988 and Jack Dee has not looked back since.

Awards
In 1991, Jack won the British Comedy Award for Best Stage Newcomer and following numerous guest TV appearances and a successful run of Edinburgh shows, he was nominated for the 1991 Perrier Award.

His impressive list of awards to-date include two at the 1995 British Comedy Awards; one Gold and two Silver Arrows for his now infamous 'widget'. John Smith's Bitter commercials (1997) at the British Advertising Awards; and the prestigious Best Stand Up Comedian at the 1997 British Comedy Awards.

On the small screen
Jack's TV career has gone from strength to strength. By 1995, he was staring in his own series on ITV. Since then, he has rarely been away from our screens, staring in his own Christmas specials; over on Channel 4 in Jack and Jeremy Police 4 with Jeremy Hardy; Glamorama (a 70's pop quiz) and Jack and Jeremy's Real Lives. He also appeared in Granada Television's comedy drama, The Grimleys. ; Jack Dee's Sunday Service, recorded in front of a live studio audience, It's Only TV But I Like It (BBC1); Jack Dee's Full Mountie (BBC1) and Jack Dee's Happy Hour.

Treading the boards
In 1991, Jack appeared in dramatic roles in an episode of the BBC1 drama The Ambassador, with Pauline Collins as well as the BBC1 drama Silent Witness with Amanda Burton.

In 1998, Jack fulfilled a dream and performed in a West End play for the first time, as Yvan in Yasmina Reza's award-winning play Art. The director Matthew Warchus was so impressed with Jack's performance, he asked him back to play the part of Serge for a 13 week run. That year, Jack released another successful
video, Live and Uncut (VVL) - his award-winning stand-up show which was filmed at the world famous Gielgud Theatre.

And in between times, Jack has brought the house down on numerous sell-out tours in the UK and internationally.

Jack survived Celebrity Big Brother. So far this year, Jack has completed over 100 dates on his UK tour. His finale was two sell-out nights at the Hammersmith Apollo. If you missed it, you'll be able to buy it on
video or DVD in November: Jack Dee Live at the Apollo, (VVL). You may also have spotted Jack on Celebrity Big Brother for Comic Relief. To Jack's surprise, he not only survived the week and the company of Anthea Turner, Vanessa Feltz and Chris Eubank, he came away with the coveted title as the last to leave the house. Later this year you will see Jack facing yet another challenge, surviving in the frozen wastes of Siberia with only a herd of reindeer for company in Celebrity Alone (BBC1) to be screened in December.}
          )

User.create(
            name:  'John Bishop', 
            email: 'johnbishop@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=-xA31VgRzNY',
            user_image: open("http://comedycv.co.uk/johnbishop/2002-october-john-bishop.jpg"),
            password: '12341234',
            bio: %Q{John Bishop performed stand-up comedy for the first time in October 2000, within four months he was the headline act at some of the regular comedy clubs in the North of England.

No two shows are ever the same with John. His engaging brand of observational humour mines his varied and colourful life experience - from fatherhood to cycling around the world, from a successful career in the corporate sector to playing semi-professional football and currently playing in the Emlyn Hughes Charity All Star team, and from working as a night club doorman to being voted by the listeners of BBC Radio Merseyside to be the person most likely to turn on the Liverpool City Christmas lights.

John now regularly performs at all the well-established and major comedy clubs throughout the UK including The Comedy Store in London and Manchester.

John has won and been nominated for five of the comedy industry's main awards including: 
Winner of the 2001 City Life North West Comedian of The Year Award 
Finalist in the 2001 Channel 4's So You Think Your Funny Awards 
Finalist in the 2001 Daily Telegraph's Open Mic Awards 
Finalist in the 2001 BBC New Comedy Awards 
Finalist in the Mercury Comedy Awards at the Leicester Comedy Festival

TV and RADIO
How To Survive... (BBC Choice) 
Four At The Store (BBC Radio 4)

Coprorate clients
John is already a much sought after and accomplished after dinner speaker, corporate clients have included: 
The British Yeast Foundation 
The Annual Conference of the UK
Sociologist Society 
The University Welfare Workers Conference

The UK Media Librarians Congress 
M2 Annual Conference 
Hanover International Financial Services Annual Conference

"Comedy needs Bishop" - City Life magazine, Manchester

"John Bishop is on the brink of the big time" - The Liverpool Echo

"An act filled with sharp observational humour" - Buxton Reporter

"A great act and we would love to have him back..." - The Baghdad Times

"The level of popularity that Bishop elicits is because, from the very beginning, he's shown spontaneity rarely seen in someone of his experience. "I just do the stuff that's in my head, but there's a little bit of structure to it. Though Steve Harris (comedian) said to me once 'I like it when I'm watching you because there are times that you almost die.'" City Life

}
          )

User.create(
            name:  'Lee Evans', 
            email: 'leeevans@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=iPWuSH529nA',
            user_image: open("http://comedycv.co.uk/leeevans/2002-october-lee-evans.jpg"),
            password: '12341234',
            bio: %Q{"A DAZZLING COMIC GENIUS"

Now established as one of Britain's best-loved and biggest comedy stars, ex-boxer Lee Evans has captured audiences' and critics' imagination with his irrepressible physicality and disarming charm.

The winner of the Time Out Award for Comedy, Smash Hits Award and the highly coveted Perrier Award, he has been described by the press as "a dazzling comic genius".

Lee has recently finished filming Plots With a View (co-starring Christopher Walken and Brenda Blethyn) for Autumn release in the UK and the Hollywood movie Highbinders, with martial arts king Jackie Chan, due for release in 2003.

After leaving art school, Lee spent six years touring clubs all across the British Isles and, eventually, on what became the alternative comedy circuit, gaining a regular weekly spot at London's famous Comedy Store.

In 1993, Lee achieved a life long ambition...
Like a lot of new established comics, his break came in 1993 when Lee took the Edinburgh Festival by storm by winning the Perrier Award. Also in the same year he achieved a life long ambition by performing and selling out for two nights at The London Palladium. 
Following the sell-out success of his eight week season in the West End, Lee took his show 'Same World, Different Planet' on a major UK tour throughout May, June and July 1996. Lee then broke all box office records at The Lyric Theatre, in London's West End, with the highest ever advance for a solo comedian in a Stoll Moss Theatre. He subsequently extended his run for a further two weeks at The Apollo Theatre where he recorded a Christmas special, The Lee Evans Show for the ITV network and the video Lee Evans Live - The Different Planet Tour.


TV
In early Spring 2001, Lee hit the UK TV screens with the BBC 1 sitcom Lee Evans - So What Now? in which he starred and co-wrote. Lee was nominated as Most Popular Comedy Performer at The National Television Awards 2001 for his portrayal of the hapless accident-prone character.

Christmas Special for the ITV network and the video Lee Evans Live - The Different Planet Tour (1996)

The World of Lee Evans series, Channel 4 (1995)

Viva Cabaret (1994)

An Evening with Lee Evans, Channel 4 (Christmas 1993)

The Jack Dee Christmas Show Channel 4 (1993) 
Friday Night Live, Channel 4 (1993)


FILM
Lee is currently working on the all-action movie Highbinders with the legendary Jackie Chan (release date 2003)

The Tortoise and the Hare, the follow up to Chicken Run for Dreamworks and Aardmann Productions. (release date tbc)

Plots with a View with Christopher Walken, Brenda Blethyn and Alfred Molina, due for release next year. (2003)

Vacuums, a STOMP feature film, due to be released later this year. (2002)

The Martins with Kathy Burke (2001)

In 2000, Lee worked with the NBC Saturday Night Live team on the film Ladies Man with Tim Meadows and Will Farrell

Lee starred in the Farrelly Brothers' movie There's Something About Mary alongside Cameron Diaz and Ben Stiller

In 1998 Lee appeared in the box office smash Mousehunt with co-stars Nathan Lane of Birdcage fame and Christopher Walken

The Oscar-nominated short film Brooms by the creators of STOMP (1997)

The Fifth Element with Bruce Willis and Gary Oldman. (1997)

Funny Bones, directed by Peter Chelsom (Hear My Song) (1995)
}
          )

User.create(
            name:  'Peter Kay', 
            email: 'peterkay@louiechristie.com',
            video: 'https://www.youtube.com/watch?v=NsuZ-CDnCVY',
            user_image: open("http://comedycv.co.uk/peterkay/2002-november-peter-kay.jpg"),
            password: '12341234',
            bio: %Q{'A brilliant stand-up comedian.' - The Times


Peter Kay, the multi award-winning star of the Channel Four hit TV series Phoenix Night's and That Peter Kay Thing, embarks on his latest UK stand-up tour. His critically acclaimed 1999 tour of the North East was a sell-out success and the subsequent video release Peter Kay Live At The Top Of The Tower, became a best-seller. Peter's unique brand of stand-up has attracted a massive following and won him a prestigious Perrier Award nomination and a British Comedy Award.}
          )