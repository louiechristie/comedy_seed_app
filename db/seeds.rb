# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

bill_bailey_user = User.create(
            name:  'Bill Bailey', 
            email: 'billbailey@louiechristie.com',
            password: '12341234')

bill_bailey_comedian = Comedian.create(
            user_id: bill_bailey_user.id,
            video: 'https://www.youtube.com/watch?v=8-xcOrgGFtA',
            image: open("http://www.comedycv.co.uk/billbailey/2003-january-bill-bailey.jpg"),
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
