-- created automatically by the test generator and brutally overwritten on a regular basis.
-- To permanently mark a test as ignoring all of this copy the following into test.exw:
--<do not edit>
--ignore canonical_data.e
--</do not edit>
-- Otherwise copy/paste this lot (rather than include, so it can verify up-to-date-ness):
--  **NB** If this begins {-1,{`exercise`,`<slug_name>`, then it's still raw json, and the
--          test generator needs updating to munge it, or you can just ignore it as above.
--<do not edit>
constant canonical_data = {
{{},{},"no texts"},
{{"a"},{{'a',1}},"one text with one letter"},
{{"bbcccd"},{{'b',2},{'c',3},{'d',1}},"one text with multiple letters"},
{{"e","f"},{{'e',1},{'f',1}},"two texts with one letter"},
{{"ggh","hhi"},{{'g',2},{'h',3},{'i',1}},"two texts with multiple letters"},
{{"m","M"},{{'m',2}},"ignore letter casing"},
{{"   ","\t","\r\n"},{},"ignore whitespace"},
{{"!","?",";",",","."},{},"ignore punctuation"},
{{"1","2","3","4","5","6","7","8","9"},{},"ignore numbers"},
{{"本","φ","ほ","ø"},{{#672C/*(unicode)*/,1},{#3C6/*(unicode)*/,1},{#307B/*(unicode)*/,1},{#F8/*(unicode)*/,1}},"Unicode letters"},
{{"There, peeping among the cloud-wrack above a dark tower high up in the mountains, Sam saw a white star twinkle for a while.\n"&
  " The beauty of it smote his heart, as he looked up out of the forsaken land, and hope returned to him.\n"&
  " For like a shaft, clear and cold, the thought pierced him that in the end, the shadow was only a small and passing thing:\n"&
  " there was light and high beauty forever beyond its reach."},
 {{'a',32},{'b',4},{'c',6},{'d',14},{'e',37},{'f',7},{'g',8},{'h',29},{'i',19},{'k',6},{'l',12},{'m',7},{'n',19},{'o',22},{'p',7},
  {'r',17},{'s',16},{'t',30},{'u',9},{'v',2},{'w',9},{'y',4}},"combination of lower- and uppercase letters, punctuation and white space"},
{{"I am a sick man.... I am a spiteful man. I am an unattractive man.\n"&
  "I believe my liver is diseased. However, I know nothing at all about my disease, and do not\n"&
  "know for certain what ails me. I don\'t consult a doctor for it,\n"&
  "and never have, though I have a respect for medicine and doctors.\n"&
  "Besides, I am extremely superstitious, sufficiently so to respect medicine,\n"&
  "anyway (I am well-educated enough not to be superstitious, but I am superstitious).\n"&
  "No, I refuse to consult a doctor from spite.\n"&
  "That you probably will not understand. Well, I understand it, though.\n"&
  "Of course, I can\'t explain who it is precisely that I am mortifying in this case by my spite:\n"&
  "I am perfectly well aware that I cannot \"pay out\" the doctors by not consulting them;\n"&
  "I know better than anyone that by all this I am only injuring myself and no one else.\n"&
  "But still, if I don\'t consult a doctor it is from spite.\n"&
  "My liver is bad, well - let it get worse!\n"&
  "I have been going on like that for a long time - twenty years. Now I am forty.\n"&
  "I used to be in the government service, but am no longer.\n"&
  "I was a spiteful official. I was rude and took pleasure in being so.\n"&
  "I did not take bribes, you see, so I was bound to find a recompense in that, at least.\n"&
  "(A poor jest, but I will not scratch it out. I wrote it thinking it would sound very witty;\n"&
  "but now that I have seen myself that I only wanted to show off in a despicable way -\n"&
  "I will not scratch it out on purpose!) When petitioners used to come for\n"&
  "information to the table at which I sat, I used to grind my teeth at them,\n"&
  "and felt intense enjoyment when I succeeded in making anybody unhappy.\n"&
  "I almost did succeed. For the most part they were all timid people - of course,\n"&
  "they were petitioners. But of the uppish ones there was one officer in particular\n"&
  "I could not endure. He simply would not be humble, and clanked his sword in a disgusting way.\n"&
  "I carried on a feud with him for eighteen months over that sword. At last I got the better of him.\n"&
  "He left off clanking it. That happened in my youth, though. But do you know,\n"&
  "gentlemen, what was the chief point about my spite? Why, the whole point,\n"&
  "the real sting of it lay in the fact that continually, even in the moment of the acutest spleen,\n"&
  "I was inwardly conscious with shame that I was not only not a spiteful but not even an embittered man,\n"&
  "that I was simply scaring sparrows at random and amusing myself by it.\n"&
  "I might foam at the mouth, but bring me a doll to play with, give me a cup of tea with sugar in it,\n"&
  "and maybe I should be appeased. I might even be genuinely touched,\n"&
  "though probably I should grind my teeth at myself afterwards and lie awake at night with shame for\n"&
  "months after. That was my way. I was lying when I said just now that I was a spiteful official.\n"&
  "I was lying from spite. I was simply amusing myself with the petitioners and with the officer,\n"&
  "and in reality I never could become spiteful. I was conscious every moment in myself of many,\n"&
  "very many elements absolutely opposite to that. I felt them positively swarming in me,\n"&
  "these opposite elements. I knew that they had been swarming in me all my life and craving some outlet from me,\n"&
  "but I would not let them, would not let them, purposely would not let them come out.\n"&
  "They tormented me till I was ashamed: they drove me to convulsions and - sickened me, at last,\n"&
  "how they sickened me!",
  "Gentlemen, I am joking, and I know myself that my jokes are not brilliant\n"&
  ",but you know one can take everything as a joke. I am, perhaps, jesting against the grain.\n"&
  "Gentlemen, I am tormented by questions; answer them for me. You, for instance, want to cure men of their\n"&
  "old habits and reform their will in accordance with science and good sense.\n"&
  "But how do you know, not only that it is possible, but also that it is\n"&
  "desirable to reform man in that way? And what leads you to the conclusion that man\'s\n"&
  "inclinations need reforming? In short, how do you know that such a reformation will be a benefit to man?\n"&
  "And to go to the root of the matter, why are you so positively convinced that not to act against\n"&
  "his real normal interests guaranteed by the conclusions of reason and arithmetic is certainly always\n"&
  "advantageous for man and must always be a law for mankind? So far, you know,\n"&
  "this is only your supposition. It may be the law of logic, but not the law of humanity.\n"&
  "You think, gentlemen, perhaps that I am mad? Allow me to defend myself. I agree that man\n"&
  "is pre-eminently a creative animal, predestined to strive consciously for an object and to engage in engineering -\n"&
  "that is, incessantly and eternally to make new roads, wherever\n"&
  "they may lead. But the reason why he wants sometimes to go off at a tangent may just be that he is\n"&
  "predestined to make the road, and perhaps, too, that however stupid the \"direct\"\n"&
  "practical man may be, the thought sometimes will occur to him that the road almost always does lead\n"&
  "somewhere, and that the destination it leads to is less important than the process\n"&
  "of making it, and that the chief thing is to save the well-conducted child from despising engineering,\n"&
  "and so giving way to the fatal idleness, which, as we all know,\n"&
  "is the mother of all the vices. Man likes to make roads and to create, that is a fact beyond dispute.\n"&
  "But why has he such a passionate love for destruction and chaos also?\n"&
  "Tell me that! But on that point I want to say a couple of words myself. May it not be that he loves\n"&
  "chaos and destruction (there can be no disputing that he does sometimes love it)\n"&
  "because he is instinctively afraid of attaining his object and completing the edifice he is constructing?\n"&
  "Who knows, perhaps he only loves that edifice from a distance, and is by no means\n"&
  "in love with it at close quarters; perhaps he only loves building it and does not want to live in it,\n"&
  "but will leave it, when completed, for the use of les animaux domestiques -\n"&
  "such as the ants, the sheep, and so on. Now the ants have quite a different taste.\n"&
  "They have a marvellous edifice of that pattern which endures for ever - the ant-heap.\n"&
  "With the ant-heap the respectable race of ants began and with the ant-heap they will probably end,\n"&
  "which does the greatest credit to their perseverance and good sense. But man is a frivolous and\n"&
  "incongruous creature, and perhaps, like a chess player, loves the process of the game, not the end of it.\n"&
  "And who knows (there is no saying with certainty), perhaps the only goal on earth\n"&
  "to which mankind is striving lies in this incessant process of attaining, in other words,\n"&
  "in life itself, and not in the thing to be attained, which must always be expressed as a formula,\n"&
  "as positive as twice two makes four, and such positiveness is not life, gentlemen,\n"&
  "but is the beginning of death.","But these are all golden dreams. Oh, tell me, who was it first announced,\n"&
  "who was it first proclaimed, that man only does nasty things because he does not know his own interests;\n"&
  "and that if he were enlightened, if his eyes were opened to his real normal interests,\n"&
  "man would at once cease to do nasty things, would at once become good and noble because,\n"&
  "being enlightened and understanding his real advantage, he would see his own advantage in the\n"&
  "good and nothing else, and we all know that not one man can, consciously, act against his own interests,\n"&
  "consequently, so to say, through necessity, he would begin doing good? Oh, the babe! Oh, the pure,\n"&
  "innocent child! Why, in the first place, when in all these thousands of years has there been a time\n"&
  "when man has acted only from his own interest? What is to be done with the millions of facts that bear\n"&
  "witness that men, consciously, that is fully understanding their real interests, have left them in the\n"&
  "background and have rushed headlong on another path, to meet peril and danger,\n"&
  "compelled to this course by nobody and by nothing, but, as it were, simply disliking the beaten track,\n"&
  "and have obstinately, wilfully, struck out another difficult, absurd way, seeking it almost in the darkness.\n"&
  "So, I suppose, this obstinacy and perversity were pleasanter to them than any advantage....\n"&
  "Advantage! What is advantage? And will you take it upon yourself to define with perfect accuracy in what the\n"&
  "advantage of man consists? And what if it so happens that a man\'s advantage, sometimes, not only may,\n"&
  "but even must,  consist in his desiring in certain cases what is harmful to himself and not advantageous.\n"&
  "And if so, if there can be such a case, the whole principle falls into dust. What do you think -\n"&
  "are there such cases? You laugh; laugh away, gentlemen, but only answer me: have man\'s advantages been\n"&
  "reckoned up with perfect certainty? Are there not some which not only have not been included but cannot\n"&
  "possibly be included under any classification? You see, you gentlemen have, to the best of my knowledge,\n"&
  "taken your whole register of human advantages from the averages of statistical figures and\n"&
  "politico-economical formulas. Your advantages are prosperity, wealth, freedom, peace - and so on, and so on.\n"&
  "So that the man who should, for instance, go openly and knowingly in opposition to all that list would to your thinking,\n"&
  "and indeed mine, too, of course, be an obscurantist or an absolute madman: would not he? But, you know, this is\n"&
  "what is surprising: why does it so happen that all these statisticians,  sages and lovers of humanity,\n"&
  "when they reckon up human advantages invariably leave out one? They don\'t even take it into their reckoning\n"&
  "in the form in which it should be taken, and the whole reckoning depends upon that. It would be no greater matter,\n"&
  "they would simply have to take it, this advantage, and add it to the list. But the trouble is, that this strange\n"&
  "advantage does not fall under any classification and is not in place in any list. I have a friend for instance ...\n"&
  "Ech! gentlemen, but of course he is your friend, too; and indeed there is no one, no one to whom he is not a friend!",
  "Yes, but here I come to a stop! Gentlemen, you must excuse me for being over-philosophical;\n"&
  "it\'s the result of forty years underground! Allow me to indulge my fancy. You see, gentlemen, reason is an excellent thing,\n"&
  "there\'s no disputing that, but reason is nothing but reason and satisfies only the rational side of man\'s nature,\n"&
  "while will is a manifestation of the whole life, that is, of the whole human life including reason and all the impulses.\n"&
  "And although our life, in this manifestation of it, is often worthless, yet it is life and not simply extracting square roots.\n"&
  "Here I, for instance, quite naturally want to live, in order to satisfy all my capacities for life, and not simply my capacity\n"&
  "for reasoning, that is, not simply one twentieth of my capacity for life. What does reason know? Reason only knows what it has\n"&
  "succeeded in learning (some things, perhaps, it will never learn; this is a poor comfort, but why not say so frankly?)\n"&
  "and human nature acts as a whole, with everything that is in it, consciously or unconsciously, and, even it if goes wrong, it lives.\n"&
  "I suspect, gentlemen, that you are looking at me with compassion; you tell me again that an enlightened and developed man,\n"&
  "such, in short, as the future man will be, cannot consciously desire anything disadvantageous to himself, that that can be proved mathematically.\n"&
  "I thoroughly agree, it can - by mathematics. But I repeat for the hundredth time, there is one case, one only, when man may consciously, purposely,\n"&
  "desire what is injurious to himself, what is stupid, very stupid - simply in order to have the right to desire for himself even what is very stupid\n"&
  "and not to be bound by an obligation to desire only what is sensible. Of course, this very stupid thing, this caprice of ours, may be in reality,\n"&
  "gentlemen, more advantageous for us than anything else on earth, especially in certain cases. And in particular it may be more advantageous than\n"&
  "any advantage even when it does us obvious harm, and contradicts the soundest conclusions of our reason concerning our advantage -\n"&
  "for in any circumstances it preserves for us what is most precious and most important - that is, our personality, our individuality.\n"&
  "Some, you see, maintain that this really is the most precious thing for mankind; choice can, of course, if it chooses, be in agreement\n"&
  "with reason; and especially if this be not abused but kept within bounds. It is profitable and some- times even praiseworthy.\n"&
  "But very often, and even most often, choice is utterly and stubbornly opposed to reason ... and ... and ... do you know that that,\n"&
  "too, is profitable, sometimes even praiseworthy? Gentlemen, let us suppose that man is not stupid. (Indeed one cannot refuse to suppose that,\n"&
  "if only from the one consideration, that, if man is stupid, then who is wise?) But if he is not stupid, he is monstrously ungrateful!\n"&
  "Phenomenally ungrateful. In fact, I believe that the best definition of man is the ungrateful biped. But that is not all, that is not his worst defect;\n"&
  "his worst defect is his perpetual moral obliquity, perpetual - from the days of the Flood to the Schleswig-Holstein period."},
 {{'a',845},{'b',155},{'c',278},{'d',359},{'e',1143},{'f',222},{'g',187},{'h',507},{'i',791},{'j',12},{'k',67},{'l',423},{'m',288},{'n',833},{'o',791},
  {'p',197},{'q',8},{'r',432},{'s',700},{'t',1043},{'u',325},{'v',111},{'w',223},{'x',7},{'y',251}},"large texts"},
{repeat("abbccc",50),{{'a',50},{'b',100},{'c',150}},"many small texts"},
}
--</do not edit>

