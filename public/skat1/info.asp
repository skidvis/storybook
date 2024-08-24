<%
select case fcount

case "winner"
 response.redirect "/manga/"

case "bad"
 response.redirect "/manga/"

case "a0"
  fname="a0.gif"
  ftext="Skat is a member of the Ninja Cat Organization, The ShadowBlades. Skat is one of their most powerful warriors, matched only by his best friend, Strix. Strix is a bunny that was raised by the ShadowBlades. In this Issue we will see how strong their friendship is.. or will we? You Decide."
  choice1="<A HREF=""index.asp?page=a1"" >Click</A>"
  choice2="<A HREF=""index.asp?page=a1"" >Here</A>"

case "a1"
  fname="a1.gif"
  ftext="Upon returning to his home, Skat discovers one of his fellow  clan members, Strix. He gives Skat a scroll with specific instructions on a mission ,along with the scroll, Skat is given one half payment for the missions expenses. 'Do you accept the mission, or refuse?' Strix asks..."
  choice1="<A HREF=""index.asp?page=b1"" >Accept the mission?</A>"
  choice2="<A HREF=""index.asp?page=c1"" >Refuse the mission?</A>"
 
case "b1"
  fname="b1.gif"
  ftext="The scroll reads 'Skat. You have been chosen to go on an important Task by the ShadowBlades. We need you to convince the Mayor of the Dogs to build us a special battleship. Cost means nothing to us, give him whatever he asks of you. Reasons for our request are best left unknown to you, but great significance rests on you're success. Good luck.'"
  choice1="<A HREF=""index.asp?page=b2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=b2"" >Here</A>"
 
case "b2"
  fname="b2.gif"
  ftext="Skat wastes no time and heads straight to the Mayor's building. After hearing the request for the special battleship, Mayor Bawer demands payment from Skat in the form of a rare stone called the Gemini Crystal."
  choice1="<A HREF=""index.asp?page=b3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=b3"" >Here</A>"
 
case "b3"
  fname="b3.gif"
  ftext="If Mayor Bawer is to build the special battleship, Skat must first retrieve the Gemini Crystal from the wolf tribe. Skat agrees to the Mayors terms, and sets out for the Crystal, But how will he get such a well guarded item? Skat must once again make an important decision on his mission. "
  choice1="<A HREF=""index.asp?page=d1"" >Use Force to take the Gemini Crystal!!</A>"
  choice2="<A HREF=""index.asp?page=e1"" >Use stealth to steal the Gemini Crystal!</A>"
 
case "c1"
  fname="c1.gif"
  ftext="'Refuse!?', Strix screams ' No one insults the clan with such betrayal. You surprise me, Skat. And though we are brothers I mustn't let you, or anyone bring shame to our clan. Now prepare for punishment!'  Skat knows Strix, and this threat is no bluff He will attack. "
  choice1="<A HREF=""index.asp?page=c2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=c2"" >Here</A>"
 
case "c2"
  fname="c2.gif"
  ftext="Skat has two of his favorite weapons mounted on the wall closeby. His Katana sword, and his dragon's star. Certain death will come to Skat if he fights hand to hand, So Quickly pick one before Strix turns him into a bloody pulp. Hurry!"
  choice1="<A HREF=""index.asp?page=f1"" >Choose the Katana!!</A>"
  choice2="<A HREF=""index.asp?page=g1"" >Choose the Dragon Star</A>"
 
case "d1"
  fname="d1.gif"
  ftext="After a long trip Skat reaches the Wolves village and proceeds to invade with brutal force. The further he progresses  into the village the stronger the wolf soldiers attack. Amazingly, Skat beats them all."
  choice1="<A HREF=""index.asp?page=d2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=d2"" >Here</A>"
 
case "d2"
  fname="d2.gif"
  ftext="Finally.He succeeds, gaining access to the room where the Gemini Crystal is being held. A strange yellow glow illuminates the stone, and Skat gazes for a moment before moving towards it."
  choice1="<A HREF=""index.asp?page=d3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=d3"" >Here</A>"
 
case "d3"
  fname="d3.gif"
  ftext="As he reaches for the Crystal a thunderous roar fills the room 'Intruder!' Skat turns around and sees he is surrounded by wolves, one of them steps forward 'You are  a skilled fighter and have gotten surprisingly far.' the wolf chief named Kendrick warns Skat 'Leave now, and we won't kill you. Stay...and you will die!'"
  choice1="<A HREF=""index.asp?page=h1"" >Admit Defeat  and walk away.</A>"
  choice2="<A HREF=""index.asp?page=i1"" >Challenge Kendrick to a fight!</A>"
 
case "e1"
  fname="e1.gif"
  ftext="Skat decides to sneak in the Wolf village by scaling the wall and striking the patrol towers with the Dragon's star. He succeeds, and proceeds to enter a building  he believes they would most likely keep the Gemini Crystal at."
  choice1="<A HREF=""index.asp?page=e2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=e2"" >Here</A>"
 
case "e2"
  fname="e2.gif"
  ftext="His suspicion has served him well. Skat has found the Crystal. 'This was too easy.' Skat thinks to himself as he grabs it and puts it in his pouch. At that moment a loud siren begins to sound 'I've been discovered! Time to get outta here, But which way? I obviously can't use the front door. I'll be outnumbered and killed.'"
  choice1="<A HREF=""index.asp?page=e3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=e3"" >Here</A>"
 
case "e3"
  fname="e3.gif"
  ftext="Skat must find a way to escape with the Crystal and his life. He can go out the window, or he can look around and see if there's a secret passage that can lead him to freedom."
  choice1="<A HREF=""index.asp?page=j1"" >Jump out the window!!</A>"
  choice2="<A HREF=""index.asp?page=k1"" >Look for another way out!!</A>"
 
case "f1"
  fname="f1.gif"
  ftext="Strix launches toward Skat at an incredible speed, but Skat's reflexes are enough to clear him from danger, and reach for his sword."
  choice1="<A HREF=""index.asp?page=f2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=f2"" >Here</A>"
 
case "f2"
  fname="f2.gif"
  ftext="Strix looks at Skat and smiles 'I knew you wouldn't be so easy to kill, Skat' he whispers. Even though Strix has no weapon Skat knows his chance of survival is 50-50.Both stay motionless waiting for the other to make the first move. This lasts a great while before Strix moves in with another attack."
  choice1="<A HREF=""index.asp?page=f3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=f3"" >Here</A>"
 
case "f3"
  fname="f3.gif"
  ftext="Skat's patience has paid off and he slashes Strix in the chest. A power move that would otherwise kill any other  opponent, drops Strix to the ground leaving him open for another attack. A deathblow. Skat stands over Strix's wounded body. 'Can I really kill him? We've known each other since childhood. Do I end it... ...like this??'"
  choice1="<A HREF=""index.asp?page=l1"" >KILL HIM!!!!</A>"
  choice2="<A HREF=""index.asp?page=m1"" >Let him go.</A>"
 
case "g1"
  fname="g1.gif"
  ftext="Skat jumps, escaping Strix's attack and grabbing the Dragon's star. 'HeHehe' Strix laughs out loud 'You're a fool to think you can win with that silly toy. Come on, Give it you're best shot!'"
  choice1="<A HREF=""index.asp?page=g2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=g2"" >Here</A>"
 
case "g2"
  fname="g2.gif"
  ftext="Skat takes aim and shoots the Dragon's star full strength at Strix...........He misses. Strix uses the opportunity to his advantage and attacks again---"
  choice1="<A HREF=""index.asp?page=g3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=g3"" >Here</A>"
 
case "g3"
  fname="g3.gif"
  ftext="He connects the first punch and continues with a flurry of rapid hits to the head, chest, and stomach. Strix shows no mercy and stops only to check for signs of life."
  choice1="<A HREF=""index.asp?page=g4"" >Click</A>"
  choice2="<A HREF=""index.asp?page=g4"" >Here</A>"
 
case "g4"
  fname="g4.gif"
  ftext="Skat is surprisingly still alive 'You were always a great fighter, Skat.' Strix says 'Why did you go against the clan? ' Strix prepares to deliver the final strike, But he hesitates for just a moment 'We were friends' Strix thinks to himself 'Could this truly be the end of it all?' This could be Skat's last chance to make a come back. Should he try one last attack, or is he just too weak to win at this point?"
  choice1="<A HREF=""index.asp?page=n1"" >One more try!!</A>"
  choice2="<A HREF=""index.asp?page=o1"" >Leave Skat at  the mercy of Strix.</A>"
 
case "h1"
  fname="h1.gif"
  ftext="Skat decides to surrender. He returns the Gemini Crystal to it's original place, and Kendrick makes good on his word by allowing Skat to leave unharmed. It was just too obvious, he was outnumbered 10 to 1 any smart warrior would have done the same."
  choice1="<A HREF=""index.asp?page=h2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=h2"" >Here</A>"
 
case "h2"
  fname="h2.gif"
  ftext="Other warriors would have let their pride get to them, fighting to the bitter end, even knowing there's no way to win, but not Skat. His is an honorable end. He's satisfied with his results, as long as he knows he tried his best..."
  choice1="<A HREF=""index.asp?page=h3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=h3"" >Here</A>"
 
case "h3"
  fname="h3.gif"
  ftext="..Besides, he can always try again, later. END."
  choice1="<A HREF=""index.asp?page=bad"" >The</A>"
  choice2="<A HREF=""index.asp?page=bad"" >End</A>"
 
case "i1"
  fname="i1.gif"
  ftext="Skat must succeed at any cost. With no fear in his heart he strikes at the crowd of bloodthirsty wolves."
  choice1="<A HREF=""index.asp?page=i2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=i2"" >Here</A>"
 
case "i2"
  fname="i2.gif"
  ftext="But he is quickly overwhelmed by the pack and Kendrick snatches the Gemini Crystal. No mercy is shown to intruders and Skat was no exception. The savage wolves feed on his corpse for hours till only his head remains."
  choice1="<A HREF=""index.asp?page=i3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=i3"" >Here</A>"
 
case "i3"
  fname="i3.gif"
  ftext="As a warning to all others whom should dare to intrude the wolf village with ill will the Chief, Kendrick had Skat's head mounted on the entrance. From that night on no one would dare to trespass onto the village, and the Crystal was safe from all outsiders. END."
  choice1="<A HREF=""index.asp?page=bad"" >The</A>"
  choice2="<A HREF=""index.asp?page=bad"" >End</A>"
 
case "j1"
  fname="j1.gif"
  ftext="Skat leaps out the window and disappears into the night with the Gemini Crystal in his pouch. By the time the wolves notice the stone's been stolen, it's too late."
  choice1="<A HREF=""index.asp?page=j2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=j2"" >Here</A>"
 
case "j2"
  fname="j2.gif"
  ftext="Skats mission is going as planned. He heads toward his village now. Mayor Bawer is pleased with the Gemini Crystal...."
  choice1="<A HREF=""index.asp?page=j3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=j3"" >Here</A>"
 
case "j3"
  fname="j3.gif"
  ftext="He orders his people to begins construction on the ShadowBlades special battleship."
  choice1="<A HREF=""index.asp?page=j4"" >Click</A>"
  choice2="<A HREF=""index.asp?page=j4"" >Here</A>"
 
case "j4"
  fname="j4.gif"
  ftext="Skat delivers the success of his mission through Strix, and is later rewarded with the other half of his payment plus a bonus. END."
  choice1="<A HREF=""index.asp?page=winner"" >The</A>"
  choice2="<A HREF=""index.asp?page=winner"" >End</A>"
 
case "k1"
  fname="k1.gif"
  ftext="Skat searches desperately for the secret passageway, but he can't seem to find it. As he continues to look he can hear footsteps getting closer."
  choice1="<A HREF=""index.asp?page=k2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=k2"" >Here</A>"
 
case "k2"
  fname="k2.gif"
  ftext="Too late. Skat is discovered and the entire wolf village moves in and attacks him. It's a slaughter, they gang up on Skat and eat him alive."
  choice1="<A HREF=""index.asp?page=k3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=k3"" >Here</A>"
 
case "k3"
  fname="k3.gif"
  ftext="Mayor Bawer denied having any involvement in the incident and the ShadowBlades special battleship was never made. Skat has failed his mission, and he was so close. END."
  choice1="<A HREF=""index.asp?page=bad"" >The</A>"
  choice2="<A HREF=""index.asp?page=bad"" >End</A>"
 
case "l1"
  fname="l1.gif"
  ftext="Without a second thought Skat strikes killing Strix. After years of dedication to the ShadowBlades Skat has grown tired of serving the clan."
  choice1="<A HREF=""index.asp?page=l2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=l2"" >Here</A>"
 
case "l2"
  fname="l2.gif"
  ftext="Strix was the closest thing to a friend Skat has  ever known and now it's over. A new life lies ahead for  Skat. He knows they will send more troops after him and he must now leave his home in search of a new home."
  choice1="<A HREF=""index.asp?page=l3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=l3"" >Here</A>"
 
case "l3"
  fname="l3.gif"
  ftext="Skat moves to a faraway island inhabited by pigs where he lives out the majority his life before he is found  by the ShadowBlades, and killed. END."
  choice1="<A HREF=""index.asp?page=bad"" >The</A>"
  choice2="<A HREF=""index.asp?page=bad"" >End</A>"
 
case "m1"
  fname="m1.gif"
  ftext="Remembering all the memories he's shared with Strix, Skat could not bring himself to killing his childhood friend. He walks away leaving Strix broken on the floor."
  choice1="<A HREF=""index.asp?page=m2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=m2"" >Here</A>"
 
case "m2"
  fname="m2.gif"
  ftext="Strix has been the closest thing to a friend Skat has known. He knew Strix would have shown him  the same mercy. Friends for life, Brothers forever..."
  choice1="<A HREF=""index.asp?page=m3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=m3"" >Here</A>"
 
case "m3"
  fname="m3.gif"
  ftext="Like a true ninja Strix has taken Skats moment of compassion, and turned it against him. Strix  delivers a powerful blow to Skat's kidney killing him instantly. Death has taught Skat his final lesson in life. END."
  choice1="<A HREF=""index.asp?page=bad"" >The</A>"
  choice2="<A HREF=""index.asp?page=bad"" >End</A>"
 
case "n1"
  fname="n1.gif"
  ftext="With the last bit of strength in Skat's body he atempts one last attack..."
  choice1="<A HREF=""index.asp?page=n2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=n2"" >Here</A>"
 
case "n2"
  fname="n2.gif"
  ftext="'HE,He,he.You are weaker than I've ever imagined' Strix raises his hand preparing to hit Skat with one last Blow 'You disappoint me, Skat. You should have just accepted the mission, but no. You had to insult the clan.'"
  choice1="<A HREF=""index.asp?page=n3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=n3"" >Here</A>"
 
case "n3"
  fname="n3.gif"
  ftext="'Why?!'! Strix kills Skat. The ShadowBlades never figured out why Skat would betray them, but they still needed someone to complete the mission. Strix was given the task. He accepted and completed the mission. END."
  choice1="<A HREF=""index.asp?page=bad"" >The</A>"
  choice2="<A HREF=""index.asp?page=bad"" >End</A>"
 
case "o1"
  fname="o1.gif"
  ftext="Strix usually finishes his opponents off without hesitation, but this was different. Skat has been Strix's friend since childhood."
  choice1="<A HREF=""index.asp?page=o2"" >Click</A>"
  choice2="<A HREF=""index.asp?page=o2"" >Here</A>"
 
case "o2"
  fname="o2.gif"
  ftext="Strix decides to let Skat free with a warning 'Go, but if we ever meet again know this. I will kill you.' Surprised, Skat limps away. He knows how the ShadowBlades work. They will hunt him down till he is dead."
  choice1="<A HREF=""index.asp?page=o3"" >Click</A>"
  choice2="<A HREF=""index.asp?page=o3"" >Here</A>"
 
case "o3"
  fname="o3.gif"
  ftext="Skat spends the rest of his life in hiding. His death came to him in the form of a rare illness. He died knowing no one knew who he really was. END."
  choice1="<A HREF=""index.asp?page=bad"" >The</A>"
  choice2="<A HREF=""index.asp?page=bad"" >End</A>"
 
end select
%>