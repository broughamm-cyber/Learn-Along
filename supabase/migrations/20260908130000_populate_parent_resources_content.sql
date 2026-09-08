-- Populate public.parent_resources with the 18 articles referenced by
-- live weekly_activities.resource_keys that did not yet have a row.
--
-- Note: 2 of the original 20 target IDs (phonics-at-home, reading-fluency-not-speed)
-- already existed in parent_resources prior to this migration and are
-- intentionally excluded here to avoid a primary key conflict / duplicate content.
--
-- stage_keys below were cross-referenced from live weekly_activities.resource_keys
-- (unnested) joined against weekly_activities.stage_key, not guessed.

INSERT INTO public.parent_resources
  (id, title, category, summary, body, stage_keys, focus_keys, tips, avoid, source_basis, content_version, sort_order, active)
VALUES
  (
    'big-feelings-small-children',
    'Big feelings in small children aren''t a behaviour problem',
    'Social & emotional',
    'A short guide to what''s actually going on when a 3-4 year old melts down, and how to help them ride it out without shaming or shutting it down.',
    'At three and four, big feelings arrive faster than the words to explain them. A dropped biscuit can trigger a reaction that looks wildly out of proportion — and in a sense it is, but not because your child is being dramatic. Their brain is still building the wiring that lets emotions and thinking work together. Right now, feeling comes first and settling down takes practice, every single time.

This isn''t something to fix or train out of them. It''s the normal shape of this age. Your job isn''t to stop the feeling — it''s to be the calm outside them while they''re loud inside. That''s what actually builds the skill, over hundreds of small repetitions, not a handful of big lessons.

When a meltdown starts, the most useful thing you can do is almost nothing: get down to their level, keep your voice low and steady, and wait. Trying to reason, negotiate, or explain while they''re mid-flood rarely lands — the part of the brain that listens to logic has temporarily gone offline. Naming what you see ("you''re really cross that we have to leave") does more than any explanation, because it tells them someone understands, even before they''ve calmed down enough to hear it properly.

Once the storm passes — and it will, usually within a few minutes if you''re not adding fuel — that''s when there''s room for a short, simple word about what happened. Not a lecture. A sentence.

What you''re doing when you stay steady through this, over and over, is showing your child what regulation looks like from the outside, long before they can do it from the inside. That''s the whole skill. There''s no shortcut that gets them there faster, and there''s no failure on your part when a meltdown happens anyway — it''s not a sign you''ve done something wrong, it''s a sign they''re a preschooler.',
    ARRAY['m36', 'm48']::text[],
    ARRAY['social', 'emotional_regulation']::text[],
    '["Get physically low and quiet before you say anything.", "Name the feeling in one short sentence, not a question.", "Wait for the peak to pass before offering words, choices, or explanations.", "Keep your own voice slower and lower than theirs — it gives them something to match."]'::jsonb,
    '["Asking \"why are you crying?\" mid-meltdown — they usually can''t answer yet.", "Rushing to distract or bribe them out of the feeling before it''s run its course.", "Telling them to \"calm down\" — it rarely works and can add shame to the mix."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    36,
    true
  ),
  (
    'support-sharing-turns',
    'Turn-taking is a skill, not a personality trait',
    'Social & emotional',
    'What actually helps a 3-5 year old get better at sharing and waiting their turn — because telling them to "share nicely" doesn''t teach the skill.',
    'Sharing looks simple from the outside, which is exactly why it''s confusing when your child seems bad at it. In reality, taking turns asks a three-, four- or five-year-old to hold three things in their head at once: what they want right now, what someone else wants, and the fact that "later" is still coming even though they can''t see it yet. That last part — trusting that a turn will come back around — is the hardest bit, and it takes real practice to build.

So when a toy grab turns into a standoff, that''s not defiance, it''s a child who hasn''t yet built the patience muscle for "not yet." The good news is that muscle grows fast at this age, especially with a few consistent, low-key habits rather than one big lecture about sharing.

The most useful tool is a visible way to track whose turn it is — a timer, a sand-glass, or just saying "after three more pushes on the swing, it''s Ana''s turn" out loud before the turn starts, not after someone''s already upset. Predictability lowers the stakes. Kids who know exactly when their turn is coming wait much better than kids who are just told to "wait."

It also helps to build turn-taking into ordinary moments that aren''t emotionally loaded — rolling a ball back and forth, taking turns choosing a song in the car, passing a bowl at dinner. These low-stakes reps build the pattern before it''s tested under the pressure of a favourite toy.

When conflict does happen, narrate rather than referee: "You both want the truck. That''s hard. Let''s figure out a turn." That keeps you out of the judge role and puts the problem back in their hands, with your support.',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['social', 'emotional_regulation']::text[],
    '["Say how long a turn will last before it starts, not after a protest.", "Use a visible timer or a simple countdown so \"later\" feels real.", "Practise turn-taking in low-stakes moments, not just contested ones.", "Narrate the shared problem (\"you both want it\") instead of declaring a winner."]'::jsonb,
    '["Forcing an immediate handover without warning — it teaches nothing but panic.", "Making one child the example of \"good sharing\" in front of the other.", "Stepping in to solve it every time — a little supported struggle builds the skill."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    37,
    true
  ),
  (
    'pretend-play-learning',
    'Pretend play is doing more than it looks like',
    'Early years',
    'Why letting a three-year-old turn a saucepan into a hat matters more than it seems, and how to join in without taking over.',
    'Watch a three-year-old feed a stuffed rabbit imaginary soup, scold a toy truck for being naughty, or turn the sofa into a boat, and it''s easy to file it under "just playing." But pretend play at this age is doing serious work: practising language, sequencing events, managing emotions through a safe character, and testing out social rules — all while having fun, which is exactly why it sticks.

When your child assigns you a role — "you be the baby, I''ll be the mum" — they''re organising a mini-story with a beginning, characters and rules, entirely from their own head. That''s planning and narrative skill in action, long before they could ever explain it that way.

The best thing you can do is follow their lead rather than redirect it. If they say the spoon is a phone, it''s a phone — going along with their logic, even when it makes no adult sense, keeps the play alive and keeps them in charge of it, which is where the learning happens. Ask a question in character ("is the soup very hot, Chef?") rather than stepping outside the game to explain or correct.

You don''t need props, a plan, or even much time. Ten unhurried minutes of following their pretend world does more for language and thinking than a shelf of educational toys. If you''re short on time, join for just a few minutes and let them run with it once you step back — the story doesn''t need you to keep going.

It''s also fine if the play looks repetitive — the same tea party, the same rescue story, day after day. Repetition is how they''re rehearsing something that matters to them. It will shift on its own once they''re ready to move on.',
    ARRAY['m36']::text[],
    ARRAY['play', 'thinking']::text[],
    '["Follow their story logic instead of correcting or redirecting it.", "Ask questions from inside the pretend world, not outside it.", "Give it a few unhurried minutes rather than a big scheduled block.", "Let repeated storylines repeat — that''s rehearsal, not a rut."]'::jsonb,
    '["Taking over the story with your own ideas about how it should go.", "Turning play into a quiz (\"what colour is that? what shape?\").", "Worrying that repeated pretend games mean they''re \"stuck.\""]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    38,
    true
  ),
  (
    'play-is-learning',
    'Play isn''t a break from learning — it''s how it happens',
    'Early years',
    'Reassurance and practical ideas for parents who worry that unstructured play means their child isn''t "doing" enough at this age.',
    'It''s easy to feel like free play doesn''t count for much next to worksheets, flashcards or apps that promise to "teach" something. At three to five, it''s actually the reverse: open-ended play is where most of the real developmental work happens — language, problem-solving, self-control, physical coordination, and social skill, all bundled into what looks like just messing about with blocks or mud.

The reason play works so well is that it''s driven by the child, not delivered to them. When your child decides to build a tower, work out why it keeps falling, and try again, they''re running a full loop of planning, testing and adjusting — with nobody telling them the "right" way to do it. That loop is the foundation a lot of later school learning sits on top of.

You don''t need to structure or narrate every moment of it. In fact, stepping back is often the most useful thing you can do. A child left to figure out their own game, with you nearby but not directing, gets far more out of it than one being guided through an "educational" activity step by step.

Where you''re genuinely useful is in the setup: time without a packed schedule, a few open-ended materials (blocks, boxes, water, dress-ups, natural bits and pieces from outside), and permission for things to get a bit messy or slow. Boredom in the first few minutes is normal — it''s often what pushes a child into inventing their own game rather than waiting to be entertained.

If you want to join in, follow rather than lead. Play alongside them, take their suggestions seriously, and resist the urge to turn it into a lesson. The learning is already built in — it doesn''t need extra teaching layered on top.',
    ARRAY['m36', 'm60']::text[],
    ARRAY['play', 'thinking']::text[],
    '["Protect unscheduled chunks of time — even 20-30 minutes counts.", "Offer open-ended materials over single-purpose toys.", "Sit nearby without directing; let them run the game.", "Expect a slow, \"bored\" start before real play kicks in."]'::jsonb,
    '["Filling every gap with structured or screen-based activities.", "Turning play into a teaching moment with constant questions.", "Judging a day by how \"productive\" the play looked."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    39,
    true
  ),
  (
    'marks-before-writing',
    'Scribbles are the first draft of writing',
    'Early years',
    'What''s really happening when your child scribbles, and how to support the path toward writing without rushing them into letters.',
    'Long before a child can form a real letter, they go through a stage of purposeful scribbling and mark-making that looks messy but is doing important groundwork. Random-looking loops and lines are actually your child building the hand control, grip strength and understanding that marks on a page can mean something — all of which writing depends on later.

There''s a natural order to this that''s worth trusting rather than skipping. First come big, loose marks — often from the shoulder and whole arm rather than the fingers. Over time these get smaller and more controlled as hand strength and coordination develop. Eventually shapes start repeating on purpose: circles, lines, crosses. Only after a lot of this groundwork does letter-like formation start to appear, and it will, without being pushed.

The most useful thing you can offer isn''t instruction, it''s opportunity: paper and something to mark with, available often and without pressure. Big paper and chunky crayons or chalk suit this stage better than small worksheets — they let the whole arm move, which is exactly the motor pattern that needs practising first.

When your child shows you a scribble, ask about it rather than trying to name or correct it: "tell me about this" invites them to explain their own thinking, and often you''ll find there''s a whole story behind marks that look random to you. That''s worth far more than pointing out that it "doesn''t look like a real letter yet" — because at this stage, it isn''t meant to.

Resist the urge to guide their hand to form specific letters before they''re asking for it themselves. Hand strength and control need to build up first; pushing letter formation too early tends to create tension and habits that are harder to unlearn than to build correctly from the start.',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['literacy', 'play']::text[],
    '["Offer big paper and chunky tools so whole-arm movement is easy.", "Make mark-making available often, without a lesson attached.", "Ask \"tell me about this\" instead of naming or correcting a scribble.", "Let letter-like shapes emerge on their own timeline."]'::jsonb,
    '["Guiding their hand to trace letters before they''re ready.", "Treating scribbles as something to correct rather than explore.", "Moving to small worksheets before big-arm mark-making is well established."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    40,
    true
  ),
  (
    'early-talk-back-and-forth',
    'Conversations build language faster than vocabulary drills',
    'Communication',
    'Why back-and-forth exchanges with your child do more for language development than teaching words in isolation.',
    'It''s tempting to think language development is mostly about how many words a child knows, but the back-and-forth of real conversation — even a very lopsided, three-year-old version of it — is doing more heavy lifting than vocabulary alone. Each time you respond to something your child says or points at, you''re modelling how conversation actually works: I say something, you respond, I build on that.

This kind of exchange is sometimes called "serve and return," and it doesn''t need to be complicated. Your child points at a dog and says "woof woof" — you serve back with "yes, a big brown dog, he''s sniffing the grass," and pause to see what they do with it. That pause matters as much as the words: it''s an invitation for them to take the next turn, even if that turn is just another sound or a point.

The exchanges that build the most language are the ones that follow your child''s interest rather than yours. If they''re fascinated by a puddle, that''s the conversation to have — not the one you''d planned. Comment on what they''re already looking at, rather than redirecting them to what you want to talk about.

Waiting matters more than most parents expect. After you ask something or comment, counting a slow five seconds in your head before jumping in gives your child room to process and respond, even if it feels like an uncomfortably long pause. Filling every silence for them removes the very practice that builds the skill.

You don''t need special activities for this — meals, bath time, walks and nappy changes all work just as well as any planned session, because it''s the responsiveness that counts, not the setting.',
    ARRAY['m36', 'm48']::text[],
    ARRAY['communication']::text[],
    '["Follow what your child is already looking at or interested in.", "Respond and add a little more, then pause for their turn.", "Count five seconds before filling a silence yourself.", "Use everyday moments — meals, walks, bath time — as conversation time."]'::jsonb,
    '["Peppering them with questions instead of commenting and waiting.", "Correcting every mispronunciation mid-flow — it interrupts the exchange.", "Rushing to answer for them when they pause to think."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    41,
    true
  ),
  (
    'grow-vocabulary-at-home',
    'New words stick best in real sentences, not lists',
    'Reading',
    'Simple, low-effort ways to build your child''s vocabulary through everyday talk and books, without turning it into a drill.',
    'Vocabulary grows fastest through repeated, meaningful exposure — hearing a word used naturally, in context, more than once — rather than through direct teaching of word lists. The good news is that this makes building vocabulary one of the easiest things to fold into an already busy day, because it doesn''t need a dedicated activity at all.

The richest source is simply talking more, and talking with a slightly wider range of words than your child already uses. If they say "the dog''s running," you might say "yes, he''s racing across the yard," adding a synonym or a bit more detail without turning it into a lesson. Children pick up new words far more readily this way than from being told "this word means…"

Books are especially good for this because they naturally contain words that don''t come up much in daily conversation — unusual animals, feelings, actions. When you hit a word your child doesn''t know while reading together, a quick, casual explanation keeps the story moving: "grumpy means really annoyed, like when your tower falls down" is enough. A long detour into definitions loses their attention and the thread of the story.

Repetition matters more than variety in the short term. Rereading the same favourite book, or reusing a new word a few times across the day, does more for a new word sticking than moving on to fresh material constantly. If your child hears "enormous" today and you use it again tomorrow describing something else, that repeat exposure is what turns a new word into a known one.

None of this needs to be planned. Narrating what you''re doing while you cook, describing what you see on a walk, or just talking through your day out loud all count, and all add to the pool of words your child is hearing and starting to use themselves.',
    ARRAY['foundation', 'm48']::text[],
    ARRAY['literacy', 'communication']::text[],
    '["Add a slightly richer word alongside your child''s own, rather than replacing it.", "Give quick, casual explanations of unfamiliar words in books, then keep reading.", "Reuse new words across the day instead of introducing them once and moving on.", "Reread favourite books — repetition helps new words stick."]'::jsonb,
    '["Stopping a story for a long vocabulary explanation.", "Testing whether they remember a new word right after hearing it.", "Relying only on flashcards or word lists instead of real talk."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    42,
    true
  ),
  (
    'shared-reading-without-quizzing',
    'Shared reading without turning it into a quiz',
    'Reading',
    'Quizzing during story time turns reading into a test and can quietly kill the enjoyment that actually builds literacy skill — here''s what to do instead.',
    '"What colour is the dog?" "Can you count the ducks?" It''s a natural instinct to check what your child is taking in while you read together — but turning story time into a running quiz tends to backfire. It shifts the experience from something enjoyable into something to get right, and enjoyment is exactly what makes a child want to keep reading, which is the thing that actually builds literacy skill over time.

Reading skill doesn''t come from testing comprehension in the moment. It comes from volume and enjoyment — the more a child wants to be read to, the more language, story structure and print exposure they get, almost without noticing. A child who starts to associate books with being asked questions they might get wrong will start avoiding books instead of asking for them.

The alternative isn''t to sit silently and just read the words. It''s to talk about the book the way you''d talk about anything interesting — commenting, wondering aloud, noticing things, without checking whether they noticed too. "Ooh, he looks worried here" invites a response without demanding one. "I wonder what''s going to happen" does the same. There''s no wrong answer, because you haven''t asked a question with a right one.

Following your child''s interest matters more than finishing the page in order. If they want to linger on a picture, ask about a character, or flip back to check something, that''s engagement, not a distraction from "real" reading — let it happen. Being interrupted mid-sentence by your child''s own question is a good sign, not a problem to manage.

It''s also fine, even good, to let your child fill in gaps themselves in a familiar story ("and then the bear went…") without prompting them to. That''s them doing the work of predicting and recalling, on their own terms, which sticks far better than being asked to prove it.',
    ARRAY['foundation', 'm48']::text[],
    ARRAY['literacy']::text[],
    '["Comment and wonder aloud instead of asking check-up questions.", "Let your child lead — lingering on a page or jumping ahead is fine.", "Welcome interruptions and side-questions rather than steering back to the text.", "Leave pauses in familiar stories for your child to fill in if they want to."]'::jsonb,
    '["Asking \"what colour/how many/what''s this called\" questions through the story.", "Correcting every misread word instead of letting the story flow.", "Making reading time feel like a check-in on what they''ve learned."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    43,
    true
  ),
  (
    'early-literacy-before-school',
    'What "ready to read" actually looks like at five',
    'Early literacy',
    'The literacy foundations that genuinely matter before school starts — and why formal reading instruction isn''t one of them yet.',
    'In the run-up to school, it''s easy to feel pressure to get a child "reading" before day one. What actually matters at this stage is a set of foundations that make formal reading instruction land well once school starts — not reading itself, which schools are set up to teach properly, in sequence, with trained teachers.

The most useful foundation is simply loving books and being read to often. A child who''s used to sitting with a story, turning pages, and following along has already built the stamina and interest that formal reading lessons will rely on. This matters more than any early decoding could at this stage.

Playing with the sounds of language — rhymes, silly made-up words, clapping out the syllables in a name — builds an ear for how words break apart, which is a genuine building block for reading later. This can be entirely playful: rhyming games in the car, made-up nonsense words that make everyone laugh, songs with a strong beat.

Noticing print in the everyday world also helps — pointing out a sign, a cereal box word, or their own name written down builds the understanding that those squiggles carry meaning, well before they can read them. Naming a few letters, especially the ones in their own name, is a natural and low-pressure extension of this.

Story language — words like "once upon a time," "suddenly," "in the end" — gives children a feel for how stories are structured, which supports comprehension once formal reading starts. Retelling a favourite story in their own words, even loosely, is great practice for this.

None of this needs a program or a workbook. It happens through ordinary reading, talking, singing and noticing — and it''s worth trusting that school will take it from here once the foundations are in place.',
    ARRAY['m60']::text[],
    ARRAY['literacy', 'school_readiness']::text[],
    '["Read together often and let your child choose some of the books.", "Play with rhyme, syllables and silly made-up words.", "Point out print in daily life — signs, packaging, their own name.", "Let them retell familiar stories in their own words."]'::jsonb,
    '["Drilling letter sounds or trying to teach formal decoding at home.", "Comparing your child''s pre-reading skills to other children''s.", "Treating this stage as \"behind\" if formal reading hasn''t started — it isn''t meant to yet."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    44,
    true
  ),
  (
    'help-without-guessing',
    'Notice what''s actually getting in the way before you help',
    'Learning habits',
    'A quick way to figure out what your child actually needs help with, instead of guessing and jumping straight to the answer.',
    'When a child is stuck on something — a puzzle, homework, getting dressed — the instinct is to jump in and help. But help aimed at the wrong problem doesn''t actually help much, and it''s surprisingly easy to guess wrong about what''s really getting in the way.

Sometimes a child looks stuck because a task is genuinely too hard for right now. Sometimes they understand it fine but are tired, frustrated, or have simply lost interest. Sometimes they''re stuck on one small piece — a single word, a fiddly zip — and everything else is fine. Each of these needs a different kind of help, and giving the wrong kind can make things worse: over-helping a bored child feels like being taken over, while under-helping a genuinely stuck child feels like being left to fail.

The fix is a short pause before stepping in. Watch for a moment and ask yourself: is this too hard, or have they just stalled? A simple, low-pressure question to your child works well too — "what part is tricky?" — because it puts them in charge of naming the problem, which they often can, if asked directly instead of assumed for.

Once you know what''s actually stuck, the smallest useful help is usually best. If it''s one word in a sentence, help with that word, not the whole sentence. If it''s motivation rather than skill, a bit of company or a change of scene might do more than any explanation. If it''s genuinely beyond them right now, that''s useful information too — not a sign anything''s wrong, just a sign the task needs to wait or be broken into smaller pieces.

This habit of checking before helping also quietly teaches your child that being stuck is a normal, temporary state worth investigating — not a problem that automatically needs a parent to solve.',
    ARRAY['foundation']::text[],
    ARRAY['independence', 'thinking']::text[],
    '["Pause and watch for a moment before stepping in.", "Ask \"what part is tricky?\" instead of guessing.", "Match your help to the actual problem — one word, not the whole task.", "Treat \"genuinely too hard right now\" as useful information, not a failure."]'::jsonb,
    '["Jumping straight to giving the answer.", "Assuming a stuck child always needs the same kind of help.", "Turning \"what''s tricky?\" into a test of whether they can explain it well."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    45,
    true
  ),
  (
    'help-without-testing',
    'Helping doesn''t have to mean checking',
    'Learning habits',
    'How to support a three- or four-year-old through a tricky moment without turning your help into an unintentional test.',
    'When a three- or four-year-old is struggling with something — a puzzle piece that won''t fit, shoes on the wrong feet, a tower that keeps toppling — it''s natural to want to help by asking questions: "what shape is that space?" "which foot is that?" These feel like gentle nudges, but to a young child, a string of questions during a struggle can feel like being tested at exactly the moment they''re already frustrated.

At this age, children don''t yet separate "someone''s helping me" from "someone''s checking if I know the answer" — the two feel the same from the inside. So a barrage of questions while they''re stuck can add pressure rather than relieve it, even when that''s the opposite of what you intended.

A more useful kind of help is showing rather than asking. If a puzzle piece won''t fit, you might turn it slightly yourself and say "let''s try it this way" rather than asking "what do you think you should do?" This keeps the help moving without putting them on the spot to produce the right answer under pressure.

Physical, hands-on help also works well at this age — steadying a block tower with one finger so it doesn''t topple while they keep building, or holding a puzzle box still while they work. This kind of quiet, practical support lets them keep doing the task themselves without needing to explain or perform their thinking out loud.

If you do want to talk them through it, describing what you see works better than questioning: "that piece is still standing up a bit" gives information without demanding a response. It leaves your child free to use it or not, rather than needing to answer correctly.

The goal is help that reduces the frustration in the moment, not help that adds a layer of "and now prove you understood."',
    ARRAY['m36', 'm48']::text[],
    ARRAY['independence', 'thinking']::text[],
    '["Show or demonstrate rather than asking a string of questions.", "Offer quiet physical support — steadying, holding — instead of a running commentary.", "Describe what you notice rather than quizzing them on it.", "Let them keep doing the task themselves once the sticking point eases."]'::jsonb,
    '["Stacking several questions in a row while they''re already frustrated.", "Turning \"let me help\" into \"can you tell me why that didn''t work?\"", "Waiting for an answer when they''re clearly stuck and stressed."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    46,
    true
  ),
  (
    'early-maths-everyday',
    'Maths is already happening in your day',
    'Early maths',
    'How to build early number and pattern sense through everyday routines, without needing worksheets or formal lessons.',
    'Early maths for a three-, four- or five-year-old isn''t about sums — it''s about noticing quantity, pattern, size and order in the world around them, which are the ideas that formal number work will build on once school starts. The good news is that this kind of noticing is already woven through an ordinary day; it just helps to talk about it out loud.

Counting real things — stairs on the way up, plates at dinner, socks from the wash — builds the idea that numbers describe actual quantities, not just a sequence of words said in order. Counting out loud in the car or over breakfast counts just as much as any structured activity, and it''s a habit children pick up quickly once it''s part of the background noise of the day.

Comparing size and amount is just as valuable: "which cup has more juice?" "is your tower taller than mine?" These everyday comparisons build a feel for more, less, bigger and smaller long before those ideas get formal number labels attached.

Sorting and patterns show up naturally too — matching socks, lining up cars by colour, setting the table with one fork per plate. Pointing these out ("you put the red ones together") names a skill your child is already using, which helps them notice it more themselves next time.

Shapes are everywhere as well — a plate is a circle, a sandwich cut in half is two triangles, a door is a rectangle. Naming shapes in the everyday world builds familiarity that sticks better than shape flashcards, because it''s tied to something real your child already cares about.

None of this needs planning or props beyond what''s already around the house. A few seconds of noticing, named out loud, adds up over weeks into a genuinely strong sense of number and pattern — well before any of it needs a worksheet.',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['maths']::text[],
    '["Count real objects out loud during ordinary routines.", "Compare size and amount (\"more,\" \"taller,\" \"fewer\") in everyday moments.", "Name sorting and patterns your child is already doing.", "Point out shapes in things around the house, not just on flashcards."]'::jsonb,
    '["Turning counting into a memorised recitation without real objects attached.", "Rushing to \"how many is that altogether?\" before counting itself is solid.", "Introducing written numbers or sums before this stage calls for it."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    47,
    true
  ),
  (
    'number-sense-before-speed',
    'Understanding a number matters more than saying it fast',
    'Mathematics',
    'Why building a real feel for what numbers mean pays off more than speed or recitation in the early years of school.',
    'It''s tempting to measure early maths progress by speed — how fast a child can count, or rattle off number facts. But at the very start of school, real number sense matters far more than speed, and pushing for fast recall before the understanding is solid tends to build shaky foundations that show up as struggles later on.

Number sense means genuinely knowing what a number represents — that "five" is a fixed quantity, whether it''s five blocks, five fingers, or five claps, and that it''s made up of smaller parts (five is four and one, or three and two). A child with strong number sense can work flexibly with numbers; a child who''s only memorised counting words in order often can''t, even if they sound confident reciting them.

Building this kind of understanding takes hands-on time with real, countable things — blocks, buttons, fingers, steps. Physically moving objects into groups, splitting a pile of five into two smaller piles and back again, and comparing different groupings of the same number all build the flexible understanding that speed drills skip straight past.

Subitising — instantly recognising a small quantity without counting one by one, like knowing a group of three dots is three just by looking — is another genuinely useful skill worth building through games like dice, dominoes, or quickly flashed small groups of objects, always followed by "how did you know?" rather than just moving on.

If your child counts slowly, double-checks, or uses their fingers well past when you''d expect, that''s not a red flag — it''s often a sign they''re still building solid understanding rather than skipping to memorised speed. Understanding now tends to translate into real speed later, once it''s genuinely earned rather than rushed.',
    ARRAY['foundation']::text[],
    ARRAY['maths']::text[],
    '["Use real objects to show that a number is a fixed, countable quantity.", "Practise splitting and regrouping small numbers (five as four-and-one, as three-and-two).", "Play quick-glance games (\"how many dots?\") and ask how they knew.", "Let counting be slow and finger-supported for as long as it needs to be."]'::jsonb,
    '["Praising speed over accuracy or understanding.", "Moving to written sums before number quantities feel solid and real.", "Treating finger-counting as something to phase out too early."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    48,
    true
  ),
  (
    'place-value-at-home',
    'Why tens and ones matter more than they seem to',
    'Mathematics',
    'A plain-language introduction to place value and how to build the idea at home through everyday counting and grouping.',
    'Place value — the idea that where a digit sits changes what it''s worth — is one of those concepts that seems abstract when it''s explained in words but makes complete sense once a child has physically grouped things into tens. At the foundation stage, the goal isn''t to teach the formal rule; it''s to build the hands-on experience that the rule will later describe.

The easiest way in is grouping real objects into tens. Counting out a pile of, say, seventeen buttons, and then organising them into a group of ten and a group of seven, gives a physical picture of what "seventeen" is actually made of. Doing this with different quantities — always grouping into tens with whatever''s left over — builds the pattern through repetition rather than explanation.

Everyday counting that naturally hits ten is useful too: counting to twenty by pointing out "that''s ten, and now we''re counting one more lot," or noticing that a group of stairs, toy cars, or crayons naturally splits into a ten and some extra. The repetition of "a ten and some more" said out loud, again and again, across different objects, is what makes the idea click.

Money is a nice real-world way in as well, once your child has grouping down — a handful of ten-cent-equivalent objects lined up against single ones gives a concrete feel for how a ten "counts as" more than a one, without needing to explain the abstract rule behind it.

None of this needs to be a lesson. A few minutes of grouping toys, snacks or laundry into tens while you''re doing something else builds the same understanding as a structured activity, just with less pressure attached, and it''s genuinely fine for this to take weeks of casual repetition before it clicks.',
    ARRAY['foundation']::text[],
    ARRAY['maths']::text[],
    '["Physically group everyday objects into tens plus leftovers.", "Say \"a ten and some more\" out loud, often, across different objects.", "Use snack time, tidy-up time or laundry as a natural grouping opportunity.", "Let the idea build slowly through repetition rather than one explanation."]'::jsonb,
    '["Explaining place value in abstract number-column terms before the hands-on version is solid.", "Rushing past grouping practice because the counting itself looks fine.", "Expecting the idea to click after one activity rather than many small ones."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    49,
    true
  ),
  (
    'maths-is-more-than-arithmetic',
    'Maths is noticing, reasoning and pattern — not just sums',
    'Mathematics',
    'Widening what counts as "doing maths" at home, so a child who struggles with sums doesn''t wrongly conclude they''re bad at maths altogether.',
    'It''s easy for "maths" to quietly narrow down to just sums — addition and subtraction on a page — especially once school starts sending some home. But maths is a much bigger field than arithmetic, and a child who finds sums slow or tricky right now may be genuinely strong in other parts of it: pattern, spatial reasoning, sorting, comparing, noticing structure. Keeping that wider view at home matters, because it stops a shaky start with sums turning into "I''m not a maths person" — a story that''s hard to shift once it takes hold.

Pattern spotting is real maths, and it''s everywhere: noticing a repeating sequence in a fence, a piece of music, or how a table is set. Asking "what comes next?" about a pattern your child notices builds reasoning skill that''s genuinely mathematical, with no sums involved at all.

Spatial thinking — building with blocks, doing jigsaw puzzles, working out how furniture fits in a room, folding paper — is another core part of maths that has nothing to do with arithmetic speed. Children who are strong here often go on to do well with geometry and problem-solving later, even if early sums felt slow.

Sorting and classifying — grouping toys by colour, size, or type, and explaining the rule they used — builds logical reasoning, another genuine maths skill hiding in ordinary play.

When arithmetic itself does come up, framing it as one tool among several, rather than the definition of maths itself, helps keep a struggling moment in proportion. "You''re really good at spotting patterns — sums are just one part of maths, and we''re working on that bit too" is a true, useful thing to say, and it matters more than it might seem.',
    ARRAY['foundation']::text[],
    ARRAY['maths', 'thinking']::text[],
    '["Point out and extend patterns your child notices in everyday life.", "Make time for blocks, puzzles and spatial play, not just number activities.", "Ask your child to explain the rule behind how they''ve sorted or grouped something.", "Name arithmetic as one part of maths, not the whole of it, when it feels hard."]'::jsonb,
    '["Letting \"maths\" mean only sums in conversation at home.", "Letting a slow start with arithmetic turn into \"I''m bad at maths\" as a fixed idea.", "Skipping pattern, spatial and sorting play because it doesn''t look like \"real\" maths."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    50,
    true
  ),
  (
    'school-readiness-without-pressure',
    'Getting ready for school without turning it into training',
    'School readiness',
    'What genuinely helps a child feel ready for school — and why it''s about routine and confidence, not academic drilling.',
    'In the year before school starts, it''s easy to feel like there''s a checklist to race through — letters, numbers, reading readiness — before the first day arrives. In reality, the things that make the biggest difference to how a child settles into school have very little to do with academics, and pushing academic content too hard at this stage can add pressure without adding much real benefit, since school is specifically built to teach that content properly, in order, once your child arrives.

What actually helps is independence with everyday routines: getting dressed, managing a lunchbox, using the toilet without help, following a short sequence of instructions, packing away toys when asked. These sound small, but a child who''s confident in them has far more mental space free for the new social and academic demands of a classroom, instead of using up their energy just coping with logistics.

Social confidence matters just as much — being able to join a group of other children, ask for help from an adult who isn''t you, wait for a turn, and handle a small disappointment without it derailing the whole day. These build through ordinary practice: playgroups, playgrounds, cousins, siblings, and everyday moments of frustration handled calmly rather than rescued instantly.

Routine and predictability also help enormously. Talking through what a school day will look like, practising the morning routine in the weeks before, and reading books about starting school all reduce the unknown, which is often what children are actually anxious about — not the academic content itself.

If your child hasn''t done a lot of formal letters-and-numbers work yet, that''s genuinely fine. Interest, curiosity and a settled, confident approach to new situations matter more for a good start to school than an early head start on content the classroom is about to cover anyway.',
    ARRAY['m60']::text[],
    ARRAY['school_readiness', 'independence']::text[],
    '["Build independence with dressing, toileting, and packing away.", "Practise waiting a turn and asking an unfamiliar adult for help.", "Talk through what a school day will look like, in advance.", "Trust that academic content is the school''s job to teach from day one."]'::jsonb,
    '["Drilling letters and numbers as if school readiness depends on it.", "Comparing your child''s readiness to other children''s.", "Letting anxiety about \"keeping up\" academically overshadow the routine and confidence pieces that matter more."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    51,
    true
  ),
  (
    'support-early-spelling',
    'Early spelling is meant to be a little wrong',
    'Writing',
    'Why inventive, sound-based spelling at the start of school is a good sign, not something to correct on the spot.',
    'When a child in their first year of school writes "I lik cats" instead of "I like cats," the instinct for many parents is to correct it. But this kind of inventive spelling — writing words the way they sound rather than how they''re conventionally spelled — is actually a sign of real progress, not a mistake to fix. It shows your child has understood that letters represent sounds and is applying that understanding actively, which is exactly the skill spelling instruction is built on.

Correcting every inventive spelling on the spot tends to do more harm than good at this stage. It interrupts the flow of getting ideas onto paper, which is the harder and more valuable skill a beginning writer is building, and it can make a child self-conscious about writing at all — leading them to choose only words they''re sure they can spell, which shrinks their writing rather than growing it.

The more useful role for a parent is noticing what your child got right in their attempt, not what they got wrong. "You heard the /k/ sound in cat and wrote a C — that''s exactly right" builds confidence and reinforces the sound-letter connection they''re working with, even in a word that''s not fully conventional yet.

Correct spelling can be modelled without correcting — if your child asks how to spell a word, or if you''re writing something together, using the standard spelling naturally shows them the target without turning their own attempt into an error to fix. Over time, and with plenty of reading exposure, conventional spelling gradually replaces inventive spelling on its own, especially for common words seen often in books.

A little unevenness is completely normal here — a child might spell a hard word correctly one day and not the next. That''s part of how spelling settles in, not a sign of inconsistency to worry about.',
    ARRAY['foundation']::text[],
    ARRAY['literacy']::text[],
    '["Notice the sounds your child got right in an inventive spelling, out loud.", "Model correct spelling naturally when writing together, without correcting theirs mid-flow.", "Keep the focus on getting ideas down, not on spelling accuracy, for early writing.", "Expect unevenness — a word spelled right one day and not the next is normal."]'::jsonb,
    '["Correcting every inventive spelling as your child writes.", "Making a child rewrite a piece just to fix spelling.", "Discouraging use of \"hard\" words because they might be spelled wrong."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    52,
    true
  ),
  (
    'writing-help-without-correcting-everything',
    'Help with writing, without editing every line',
    'Writing',
    'How to support a beginning writer without turning every piece of their writing into a corrections exercise.',
    'A beginning writer''s page is often full of things an adult eye catches instantly — missing capital letters, wobbly spelling, no full stops. The instinct to fix all of it at once is understandable, but doing so tends to overwhelm a child who is already working hard just to get their ideas onto the page, and it can quietly teach them that writing is mostly about being wrong.

At this stage, getting ideas down — a real thought, in their own words, however roughly formed — is the harder and more important skill. Mechanics like capitals, full stops and spelling matter, but they''re best built gradually, a little at a time, rather than all corrected in a single pass over one piece of writing.

A useful habit is picking one thing to focus on per piece of writing, rather than everything at once. If today''s focus is starting sentences with a capital letter, notice and encourage that, and let spelling or punctuation slide for now. Next time, the focus might shift. This keeps feedback manageable and lets your child actually absorb it, instead of being handed a page covered in changes.

Genuine, specific praise for the content matters as much as any correction — "I love that your story had a surprise at the end" tells your child their ideas are worth writing, which is what keeps them willing to write more. A page of red pen with no comment on the actual story teaches the opposite lesson.

When your child asks for help with a specific word or sentence, help with exactly that, rather than expanding into a general edit. And it''s fine, even good, for a piece of writing to stay as it was written — not every piece needs to become a polished final draft. Some writing is just for getting a thought down, and that''s a complete purpose on its own.',
    ARRAY['foundation']::text[],
    ARRAY['literacy', 'independence']::text[],
    '["Pick one focus per piece of writing rather than correcting everything.", "Comment on the content and ideas, not just the mechanics.", "Help with exactly what''s asked, not a full unsolicited edit.", "Let some writing stay as a first, unpolished draft — that''s allowed."]'::jsonb,
    '["Correcting every spelling, punctuation and capital letter in one go.", "Focusing feedback only on what''s wrong, with no comment on the ideas.", "Making every piece of writing into a redraft-to-perfection exercise."]'::jsonb,
    'Learn Along educator-authored parent guidance',
    'resource-v1.0',
    53,
    true
  )
;
