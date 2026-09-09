-- Batch 2: parent_resources covering the newborn-m30 and year7-year8 gap
-- (every stage previously had zero active parent_resources rows).
-- Guardrail-checked against development_stages.content_guardrails.forbidden_terms
-- for each stage_key referenced; no violations.

INSERT INTO public.parent_resources
  (id, title, category, summary, body, stage_keys, focus_keys, tips, avoid, source_basis, content_version, sort_order, active)
VALUES
  (
    'talking-to-a-baby-who-cant-talk-back',
    'Talking to a baby who can''t talk back (yet)',
    'Communication',
    'Long before your baby says a word, back-and-forth talk is already building the foundation for language — here''s what that actually looks like.',
    'It can feel strange to hold a full conversation with someone who can''t answer back, but that''s exactly what builds language in the first months of life. When you talk to your baby, make faces, and pause as if waiting for a reply, you''re teaching the rhythm of conversation long before any actual words arrive — the turn-taking, the eye contact, the sense that communication goes both ways.

Babies respond to this from the very beginning, even if their side of the "conversation" is just a look, a coo, a kick, or a change in breathing. Treating those responses as their turn — pausing, watching, then responding to whatever they do — is often called serve and return, and it''s one of the most well-supported building blocks of early language and brain development.

You don''t need special words or a script. Narrating what you''re doing ("I''m going to lift you up now, here we go") gives your baby a stream of real language wrapped around real moments, which is far more useful than any planned lesson would be. Your normal voice, at a normal pace, is exactly right — there''s no need to slow down dramatically or simplify constantly, though many parents naturally do soften their pitch and stretch their vowels a little, and that instinct is genuinely helpful too.

Face-to-face time matters as much as the words themselves. Babies are drawn to faces from birth, and watching your mouth move, your eyebrows rise, your expression change gives them information no book or screen can replicate. A few unhurried minutes of just looking at each other, with nothing else going on, is doing real work even though nothing is being taught.

Following your baby''s cues matters too. If they look away, they may need a short break from the interaction — that''s normal, not a sign anything''s wrong, and pushing continued engagement past that point tends to backfire. Let them turn back toward you in their own time.

There''s no correct pace here and nothing to get right or wrong. Every bit of ordinary, responsive talk — during nappy changes, feeds, or just lying together — is building the same foundation.',
    ARRAY['newborn', 'm02', 'm04', 'm06']::text[],
    ARRAY['communication', 'connection']::text[],
    '["Pause after you talk or make a face, as if waiting for your baby''s turn.", "Narrate ordinary moments in your normal voice — nappy changes, feeding, getting dressed.", "Spend a few minutes purely face to face, with nothing else competing for attention.", "Follow your baby''s lead — a look away can mean they need a short break."]'::jsonb,
    '["Feeling you need a script, flashcards, or \"lessons\" — ordinary talk is enough.", "Pushing for continued engagement once your baby looks away or seems done.", "Worrying if your baby seems to prefer watching over responding — that''s typical too."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by serve-and-return and early language development research',
    'resource-v1.0',
    54,
    true
  ),
  (
    'tummy-time-without-the-pressure',
    'Tummy time and early movement, without the pressure',
    'Movement',
    'Supervised time on the tummy builds the strength babies need for rolling, sitting and crawling later — a little often works better than a lot at once.',
    'Tummy time has a reputation for being something babies hate and parents dread, but it doesn''t need to be a battle or a scheduled ordeal. It''s simply supervised time spent on the tummy while awake, and it matters because it builds neck, shoulder and core strength that babies will later use to roll, sit, reach and eventually crawl.

Short and frequent works better than long and rare. A few minutes, several times a day, spread across nappy changes, after a nap, or during play, adds up to far more benefit than one long, protested session — and it''s much easier on everyone''s patience.

Getting down on the floor at your baby''s eye level changes everything. A face they can see, a toy just out of reach, or simply your voice close by gives them a reason to lift their head and push up, rather than tummy time feeling like being left alone on the floor. Propping a small rolled towel under the chest can help in the early weeks if a baby tires quickly, giving them a little more height to work from.

If your baby protests, it''s fine to shorten the session rather than push through distress — a minute of calm tummy time is more useful than five minutes of crying, and there will always be another chance later in the day. Building up gradually, following what your baby can tolerate, works better than fixed time targets.

Once babies can roll, sit, and eventually get onto hands and knees, tummy time naturally folds into regular floor play rather than being its own separate task — at that point, safe, varied floor time on a firm, flat surface is what matters, not a specific position.

A few safety basics matter throughout: always supervise tummy time and any floor play directly, use a firm flat surface, and keep the area clear of anything a baby could pull down on themselves.',
    ARRAY['newborn', 'm02', 'm04', 'm06']::text[],
    ARRAY['movement']::text[],
    '["Do several short sessions across the day rather than one long one.", "Get down to eye level with a toy or your face to give your baby a reason to lift their head.", "Prop a small rolled towel under the chest in the early weeks if needed.", "Let floor play naturally take over from tummy time once your baby is rolling and sitting."]'::jsonb,
    '["Pushing through real distress to hit a time target.", "Leaving a baby unsupervised during tummy time or floor play, even briefly.", "Comparing how much your baby tolerates tummy time to other babies — pace varies a lot."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by early motor development guidance',
    'resource-v1.0',
    55,
    true
  ),
  (
    'cause-and-effect-play-at-this-age',
    'Cause and effect: why babies love dropping things',
    'Thinking',
    'Dropping, banging and knocking things over isn''t mischief at this age — it''s how babies test how the world works.',
    'Somewhere around six months, many babies discover that dropping a spoon makes a sound, and from there it can feel like every object becomes a science experiment conducted from the highchair. This repeated dropping, banging, and knocking over isn''t misbehaviour — it''s genuine, purposeful learning about cause and effect, one of the earliest forms of thinking a baby develops.

Each time your baby makes something happen — a rattle sounds, a stacked cup topples, a button lights up — they''re testing a small idea: if I do this, does that happen again? Repeating the action over and over isn''t boredom setting in, it''s confirmation-seeking, and it''s exactly how this kind of understanding gets built.

Toys that respond clearly to simple actions work well here: things that make a sound when shaken or dropped, containers that can be filled and tipped out, stacking cups that topple with a push. You don''t need anything elaborate or "educational" — a wooden spoon and a metal bowl offers just as much cause-and-effect discovery as a purpose-built toy.

Your response matters more than the toy. Reacting with genuine interest when something happens — "oh, it fell! Let''s try again" — turns a solo activity into a shared one, and being willing to pick something up for the tenth time without frustration keeps the exploration going. This is tiring for a parent and completely normal for a baby at this age; it isn''t a sign anything needs to change.

Peekaboo and simple hiding games work on the same underlying idea — thinking about what happens, and beginning to understand that things still exist even when out of sight — so they''re a natural next step from object-dropping play, using people and faces instead of objects.

A quick safety note: choose objects too large to swallow and free of small parts, and stay within arm''s reach during this kind of exploratory play.',
    ARRAY['m06', 'm09', 'm12']::text[],
    ARRAY['thinking', 'play']::text[],
    '["Offer toys that respond clearly and simply to a push, shake or drop.", "Respond with genuine interest each time, even the tenth time.", "Try peekaboo and simple hiding games as a natural extension of this thinking.", "Let repetition happen — it''s how the understanding gets built, not a sign of boredom."]'::jsonb,
    '["Treating repeated dropping as naughtiness or testing your patience on purpose.", "Rushing to pick things up before your baby has had a chance to notice what happened.", "Choosing toys with small or detachable parts for this kind of play."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by early cognitive development research',
    'resource-v1.0',
    56,
    true
  ),
  (
    'stranger-wariness-is-a-good-sign',
    'Clinginess and stranger wariness are a good sign',
    'Connection',
    'New clinginess or wariness of unfamiliar faces around six to twelve months is a sign of healthy attachment, not a step backward.',
    'Somewhere in the second half of the first year, many babies who were previously happy to be held by anyone suddenly become wary of unfamiliar faces, or upset when a familiar caregiver leaves the room. This can feel like a step backward, especially if grandparents or other loved ones are surprised by the change, but it''s actually a sign of healthy development: your baby has learned to tell familiar people apart from unfamiliar ones, and has formed a strong enough attachment to notice — and mind — when you''re not there.

This phase doesn''t need to be fixed or trained out of a baby. What helps most is treating the wariness as real rather than something to push through: allowing your baby time to warm up to a new person from the safety of your arms, rather than handing them over immediately, tends to go better for everyone.

Short, predictable separations — even just walking to another room and calling out along the way — help build the understanding that you always come back, which is the foundation of the confidence to separate more easily later. A goodbye ritual, said the same simple way each time, gives a baby something familiar to hold onto even when a routine changes.

New people and new places are easier to manage in familiar surroundings first. Meeting someone new at home, in your baby''s own space, tends to go more smoothly than a first meeting somewhere unfamiliar and overwhelming.

This phase isn''t permanent, and it doesn''t mean anything has gone wrong with earlier care or with a baby''s temperament. It comes and goes, and easing rather than forcing your baby through it — while still going about normal life — tends to help it settle in its own time.',
    ARRAY['m06', 'm09', 'm12']::text[],
    ARRAY['connection', 'emotional_regulation']::text[],
    '["Let your baby warm up to new people gradually, from the safety of your arms.", "Practise short, predictable separations with a consistent goodbye ritual.", "Introduce new people or places in familiar surroundings first when you can.", "Expect this phase to ease with time rather than trying to push through it quickly."]'::jsonb,
    '["Forcing your baby into a stranger''s arms to \"get them used to it.\"", "Sneaking away without a goodbye to avoid upset — it can undermine trust in the routine.", "Reading this phase as a problem with your baby''s temperament or your caregiving."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by attachment and social development research',
    'resource-v1.0',
    57,
    true
  ),
  (
    'before-first-words-gesture-and-babble',
    'Before the first words: gesture, babble and shared looking',
    'Communication',
    'Pointing, reaching and babbling are genuine communication before real words arrive — responding to them builds the path toward talking.',
    'Before a baby says their first recognisable word, they''re already communicating constantly — through babbling strings of sounds, pointing at things they want, reaching toward you, and looking back and forth between an object and your face to check you''ve noticed it too. All of this is real communication, and responding to it as such is one of the most useful things a parent can do in the months before words arrive.

That back-and-forth look — baby looks at something, then at you, then back at the thing — is called joint attention, and it''s one of the strongest predictors of later language development. When you follow that look and name what your baby is looking at ("yes, that''s the dog"), you''re giving language to something they''ve already decided is interesting, which is far more effective than trying to redirect their attention to something you''d rather talk about.

Babbling deserves a response too, even before it sounds like real words. Treating "bababa" as a genuine attempt at conversation — responding, taking a turn, babbling something back — keeps the exchange going and reinforces that making sounds gets a reaction, which is exactly the incentive that keeps a baby experimenting with sound.

Pointing is worth taking seriously as communication in its own right. When your baby points at something, following their point and naming it responds to their intended message just as surely as if they''d said the word themselves.

There''s no fixed timeline here worth anxiously tracking week to week — babies vary enormously in when recognisable words arrive, and responsive engagement with gesture and babble in the meantime is what actually supports the process, not any particular milestone date.',
    ARRAY['m09', 'm12', 'm15']::text[],
    ARRAY['communication']::text[],
    '["Follow your baby''s gaze or point and name what they''re looking at.", "Respond to babbling as a genuine conversational turn, not just noise.", "Use plenty of pointing and gesture yourself alongside your words.", "Let your baby''s interest lead which things get talked about."]'::jsonb,
    '["Redirecting attention to what you want to talk about instead of following theirs.", "Ignoring babble while waiting for \"real\" words to arrive.", "Comparing your baby''s pace to others — the range of typical timing is wide."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by joint attention and early language research',
    'resource-v1.0',
    58,
    true
  ),
  (
    'on-the-move-crawling-to-walking',
    'On the move: crawling, cruising and walking, in any order',
    'Movement',
    'Crawling, cruising and walking arrive in a wide range of orders and timelines — safe space to practise matters more than any particular sequence.',
    'Somewhere between nine and eighteen months, most babies move through a sequence of new ways to get around — pulling up to stand, cruising along furniture, taking first steps — though the exact order and timing varies enormously from one baby to the next. Some babies crawl for months before walking; others barely crawl at all and go straight from cruising to independent steps. Both are typical.

What helps most across this whole stretch is simply safe space and time to practise, rather than any particular technique. A clear, supervised area of floor — furniture with stable edges to pull up on, nothing sharp or breakable within toppling distance — gives a baby everything they need to experiment with balance and movement at their own pace.

Barefoot or soft-soled practice on a flat, non-slippery surface tends to help more than rigid shoes at this stage, since bare feet give better feedback for balance while these skills are still developing. Save sturdier shoes for outdoor walking once that''s well underway.

Resist the urge to hold both of a baby''s hands to "help" them walk before they''re ready — it can encourage a posture and gait that doesn''t reflect their own balance, and most babies find their own way there faster when allowed to use furniture and their own trial and error. A stable, weighted push-along toy can offer support without taking over the balancing work themselves.

Falls and wobbles are a normal, constant part of this process, not a sign of a problem. A soft landing surface and a calm response when a baby takes a tumble — rather than a big reaction — helps them get back up and try again without building unnecessary caution.',
    ARRAY['m09', 'm12', 'm15', 'm18']::text[],
    ARRAY['movement']::text[],
    '["Clear a safe, supervised space with stable furniture to pull up on.", "Let bare feet or soft soles do the work on flat, non-slippery surfaces.", "Offer a stable push-along toy rather than holding both hands to \"help\" them walk.", "Respond calmly to falls and wobbles — they''re a normal part of the process."]'::jsonb,
    '["Comparing timing to other babies — the typical range for first steps is wide.", "Using baby walkers with wheels, which can be unsafe and don''t build the same balance skills.", "Making a big reaction out of ordinary falls, which can build unnecessary caution."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by gross motor development research',
    'resource-v1.0',
    59,
    true
  ),
  (
    'toddler-tantrums-before-three',
    'Toddler tantrums before three: what''s actually happening',
    'Connection',
    'A toddler''s meltdown before age three is a brain still under construction, not a discipline problem — here''s what actually helps in the moment.',
    'Somewhere after their first birthday, many toddlers start having big, sudden meltdowns that can seem to come from nowhere — a sock feels wrong, a banana breaks, the wrong cup gets used. At this age, it genuinely is nowhere, in the sense that toddlers under three have very little ability to manage big feelings on their own. The part of the brain responsible for that kind of self-control is still years away from being ready, so what looks like an overreaction is actually a completely normal reaction for a brain this young.

There''s no reasoning your way through this with a toddler under three, and trying rarely helps — words and explanations mostly land once the storm has already passed, not during it. What helps in the moment is your calm presence: staying near, keeping your own voice low, and not trying to talk a toddler out of a feeling that simply needs to run its course.

Very short attention spans work in your favour here. Toddlers this age often move on from a meltdown remarkably fast once the feeling has peaked, especially if nobody is adding fuel by escalating, negotiating, or getting frustrated back. A change of scene, a familiar comfort object, or simply waiting it out quietly usually works better than any attempt to fix or explain.

Naming the feeling in one or two simple words — "sad," "mad," "tired" — can help even before a toddler can respond to it, laying groundwork for later emotional vocabulary without expecting them to use it yet.

Consistency in your own response matters more than any particular technique. A toddler who experiences the same calm, unhurried response each time gradually learns what to expect, even if it takes a long time before they can manage feelings any differently themselves.',
    ARRAY['m12', 'm15', 'm18', 'm24']::text[],
    ARRAY['emotional_regulation', 'connection']::text[],
    '["Stay physically near and keep your own voice low and slow.", "Don''t try to reason or negotiate mid-meltdown — save any words for afterward.", "Name the feeling simply, without expecting a response.", "Let very short attention spans work for you — most meltdowns pass quickly if nothing escalates them."]'::jsonb,
    '["Expecting explanations or reasoning to work during the meltdown itself.", "Matching a toddler''s escalation with your own frustration.", "Treating frequent meltdowns before three as a discipline failure — it''s typical for this age."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by early self-regulation development research',
    'resource-v1.0',
    60,
    true
  ),
  (
    'word-explosion-what-to-do',
    'The word explosion: keeping up once new words arrive fast',
    'Communication',
    'Vocabulary can grow by dozens of words a month in the second year — here''s how to keep up without turning it into a lesson.',
    'Somewhere in the second year, many toddlers move from a handful of words to a rapid, sometimes startling expansion in vocabulary — new words arriving daily, sometimes many in a single week. This period, often called a vocabulary or word explosion, doesn''t need any special program to support; it mostly needs an adult nearby who keeps talking, naming and responding to what a toddler is already interested in.

Labelling what''s around in the moment — naming objects, actions and feelings as they come up naturally in play, meals and routines — gives a toddler a steady stream of new words attached to things they already care about, which is far more effective than any planned vocabulary session.

Expanding rather than correcting works well here. If a toddler says "ball" while pointing at a bouncing red ball, responding with "yes, the red ball is bouncing" adds new words onto what they''ve already said, without making them feel wrong for not saying it that way themselves.

New words often arrive attached to strong interests — a favourite animal, a particular toy, a recurring family routine. Following those interests, rather than trying to introduce a broad, planned set of vocabulary, tends to produce more genuine new words because the toddler is already motivated to understand and use them.

It''s completely normal for understanding to run well ahead of speaking at this age — a toddler may follow far more instructions and recognise far more words than they can say themselves. That gap will narrow over time and isn''t something to correct or worry about.

Books remain one of the richest, lowest-effort sources of new vocabulary at this stage, simply through repeated, relaxed exposure rather than any deliberate teaching.',
    ARRAY['m15', 'm18', 'm24']::text[],
    ARRAY['communication']::text[],
    '["Name objects, actions and feelings as they come up naturally, without planning a session.", "Expand what your toddler says rather than correcting how they said it.", "Follow strong interests — new words stick best when attached to what they already care about.", "Keep reading familiar books often; repetition builds vocabulary without any extra effort."]'::jsonb,
    '["Quizzing a toddler on words they''ve just learned to check they remember.", "Correcting pronunciation directly instead of simply modelling it back.", "Worrying that speaking is lagging behind understanding — that gap is typical at this age."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by early vocabulary development research',
    'resource-v1.0',
    61,
    true
  ),
  (
    'me-do-it-toddler-independence',
    'The "me do it" phase: supporting toddler independence',
    'Independence',
    'The fierce insistence on doing things alone between about eighteen months and three years is a genuine developmental drive, not stubbornness.',
    'Somewhere around eighteen months, many toddlers develop a sudden, fierce insistence on doing things themselves — putting on their own shoes, pouring their own drink, climbing into the car seat unaided — even when it takes five times longer and ends imperfectly. This isn''t stubbornness for its own sake; it''s a genuine developmental drive toward autonomy, and supporting it, even when it''s slower and messier, builds real skill and confidence over time.

The most useful shift for a parent is building in extra time wherever independence is likely to be attempted — mornings, mealtimes, getting dressed — since rushing a toddler who''s determined to do something themselves tends to produce more conflict than time saved by taking over.

Breaking a task into a part a toddler can genuinely manage helps enormously. A toddler who can''t yet button a coat can usually still pull a zip most of the way, or push an arm through a sleeve — offering that one manageable piece, rather than either doing the whole task for them or expecting the whole thing unaided, meets them where they actually are.

Imperfect results are the whole point, not a problem to quietly fix afterward. A shirt on backwards, a wonky ponytail, or a cup with water spilled from careful pouring all represent real attempts and real learning — redoing it in front of a toddler, even kindly, tends to undercut the confidence the attempt was building.

When a genuine time crunch means there isn''t room for a slow, independent attempt, it''s fine to say so honestly — "we need to go fast this time, next time you can do it" — rather than quietly taking over without acknowledging the shift.',
    ARRAY['m18', 'm24', 'm30']::text[],
    ARRAY['independence']::text[],
    '["Build extra time into moments where independence is likely to be attempted.", "Offer the one piece of a task a toddler can actually manage themselves.", "Let imperfect results stand rather than quietly redoing them afterward.", "Name it honestly on the rare occasions you need to take over for time reasons."]'::jsonb,
    '["Rushing or taking over at the first sign of a slow attempt.", "Redoing a toddler''s effort in front of them, even to \"fix\" it kindly.", "Expecting an entire task done independently before a toddler is ready for all of it."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by toddler autonomy and self-help development research',
    'resource-v1.0',
    62,
    true
  ),
  (
    'two-word-phrases-and-beyond',
    'Two-word phrases and beyond: growing sentences at home',
    'Communication',
    'Growing from single words to two- and three-word phrases is one of the biggest language leaps of the toddler years — modelling, not correcting, is what helps.',
    'Somewhere between eighteen months and two and a half years, many toddlers move from single words to combining them — "more milk," "daddy go," "big truck" — and this shift into short phrases marks one of the biggest language leaps of the toddler years. It usually isn''t taught directly; it emerges through hearing phrases modelled constantly in everyday talk.

The most useful thing a parent can do is model a slightly longer version of whatever a toddler says, without asking them to repeat it. If a toddler points and says "car," responding with "yes, a big red car" gives them the fuller phrase to absorb, without turning the moment into a test of whether they can say it back correctly.

Real, everyday talk does more here than any structured activity. Narrating routines out loud in short, natural phrases — "time for a bath," "shoes go on now" — surrounds a toddler with the exact sentence lengths they''re working toward next.

Two-word phrases combine in a small number of predictable patterns at this age — more of something, an action plus an object, someone plus an action — and noticing which pattern your toddler is using can help you offer a matching model. If they''re combining "more" with things, responding in that same simple pattern keeps the exchange easy for them to follow.

It''s genuinely fine, and typical, for phrases to be grammatically imperfect at this stage. Correcting word order or missing words directly tends to interrupt the flow of communication without speeding up the underlying development, whereas simply modelling the fuller version back tends to be absorbed naturally over time.

Progress here is rarely a smooth, steady climb — a toddler might use a longer phrase one day and drop back to single words the next, especially when tired. That''s typical variability, not a step backward.',
    ARRAY['m18', 'm24', 'm30']::text[],
    ARRAY['communication']::text[],
    '["Model a slightly longer version of what your toddler says, without asking for a repeat.", "Narrate routines out loud in short, natural phrases.", "Match the phrase pattern your toddler is already using and build on it.", "Expect day-to-day variability — a shorter phrase one day isn''t a step backward."]'::jsonb,
    '["Asking a toddler to repeat a corrected version of what they said.", "Correcting grammar directly instead of simply modelling it back.", "Worrying about occasional single-word days once phrases have started."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by early grammatical development research',
    'resource-v1.0',
    63,
    true
  ),
  (
    'early-pretend-play-onset',
    'Early pretend play: why the couch is now a boat',
    'Play',
    'The first flickers of pretend play — feeding a teddy, "driving" a box — begin well before age three and are worth following closely.',
    'Long before the elaborate imaginative games of the preschool years, pretend play begins in small, simple flickers — feeding a teddy with an empty spoon, holding a block to an ear like a phone, pushing a box around and calling it a car. These first pretend actions, often appearing from around eighteen months, are a meaningful cognitive leap: your toddler is starting to hold two ideas in mind at once — what something really is, and what they''re deciding it represents.

The most useful role for a parent at this earliest stage is simply noticing and joining, rather than directing. If a toddler offers you invisible food from a bowl, "eating" it with enthusiasm keeps the moment going far more than trying to expand or redirect it into a bigger storyline they''re not ready for yet.

At this age, pretend play is often solitary or only loosely including a parent, and that''s completely fine — a toddler feeding a teddy without looking to you for a reaction is still doing genuine pretend thinking, even without an audience.

Everyday objects tend to work better than realistic toys for encouraging this kind of play. A wooden spoon, a cardboard box, an old phone with the battery removed all leave more room for a toddler''s own imagination than a toy version already designed to be one specific thing.

As this skill develops over the following months, actions tend to link together into small sequences — feeding the teddy, then putting it to bed — and eventually extend to using one object to stand in for another entirely unrelated one. Both are worth following with genuine interest rather than steering toward a particular script.',
    ARRAY['m18', 'm24', 'm30', 'm36']::text[],
    ARRAY['play', 'thinking']::text[],
    '["Notice and join simple pretend moments rather than directing them.", "Let pretend play stay solitary sometimes — that''s still meaningful thinking.", "Offer everyday objects like boxes and spoons rather than only realistic toy versions.", "Follow small sequences as they emerge, without steering toward a script."]'::jsonb,
    '["Redirecting a simple pretend moment into a bigger storyline before a toddler is ready.", "Insisting on a \"right\" way to pretend with a particular toy.", "Assuming a lack of solitary pretend play at this very early stage is a concern — it varies a lot."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by symbolic and pretend play research',
    'resource-v1.0',
    64,
    true
  ),
  (
    'independent-study-habits-early-high-school',
    'Building independent study habits in early high school',
    'Learning habits',
    'The jump to high school brings a big increase in independent work — the goal is building systems and habits, not supervising every task.',
    'The move into early high school usually brings a sharp increase in the amount of work a student is expected to manage independently — multiple subjects, multiple teachers, homework that isn''t checked daily, and assessment timelines that stretch weeks ahead rather than being set the night before. For a lot of families, this is the point where a parent''s role needs to shift from close oversight toward supporting systems and habits that the student runs themselves.

A simple, visible way to track what''s due — a wall calendar, a shared digital calendar, or even a running list on the fridge — matters more at this stage than any particular study technique, because the core challenge for many students isn''t understanding content, it''s not losing track of what''s coming up across several subjects at once.

Breaking a big task into smaller pieces with their own rough deadlines helps enormously, especially for anything that isn''t due for weeks. A student who''s never been shown how to break "assignment due in three weeks" into smaller steps often defaults to starting the night before, not because they''re lazy, but because the skill of planning backward from a deadline hasn''t been built yet.

A consistent time and place for homework, decided together rather than imposed, tends to work better than a strict schedule enforced from outside. The goal is a routine the student buys into and can maintain themselves, not one that only runs while a parent is actively checking.

Asking about process rather than checking answers keeps a parent''s involvement useful without slipping into doing the work. "What''s your plan for tackling that?" or "What have you got left to do?" supports the independence this stage is meant to be building, rather than quietly undermining it.',
    ARRAY['year7', 'year8']::text[],
    ARRAY['independence', 'thinking']::text[],
    '["Set up one visible, shared way to track what''s due across all subjects.", "Help break larger tasks into smaller pieces with their own rough deadlines.", "Agree on a consistent homework time and place together, rather than imposing one.", "Ask about their plan and process rather than checking or correcting the actual work."]'::jsonb,
    '["Checking every piece of homework as if it still needs daily supervision.", "Doing the planning-backward step for them instead of showing them how.", "Stepping in at the first sign of a missed deadline rather than problem-solving together."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by adolescent executive function and self-regulated learning research',
    'resource-v1.0',
    65,
    true
  ),
  (
    'maths-explanation-over-reteaching',
    'When maths gets harder than you remember, focus on explanation',
    'Mathematics',
    'When high school maths moves beyond what a parent remembers, the most useful role is asking for explanation and reasoning, not reteaching content.',
    'By early high school, maths content often moves well past what many parents remember clearly or feel confident reteaching — negative numbers, algebraic expressions, ratio and rate problems, early geometry proofs. That''s genuinely fine, because the most useful support a parent can offer at this stage rarely depends on knowing the content cold.

Asking a student to explain their reasoning out loud, even when you can''t check whether the maths itself is correct, does real work. "Walk me through how you got that" or "why did you choose that step?" pushes a student to organise and justify their own thinking, which is exactly the skill this stage of maths is trying to build, regardless of whether the listener can verify each step.

Where a student is genuinely stuck, helping them find and use a worked example — from their textbook, class notes, or a reputable curriculum-aligned resource — tends to be more useful than a parent attempting to reteach a method they''re rusty on, which can introduce a different approach to the one being taught in class and add confusion rather than clarity.

Noticing patterns in what keeps causing trouble matters more than helping with any single homework question. If the same type of problem keeps stalling a student across several nights, that''s worth mentioning to their teacher directly, since a pattern like that usually needs a teacher''s input rather than more parent-led practice at home.

Confidence and persistence tend to matter as much as any specific content at this stage. A student who''s willing to attempt a hard problem, get it wrong, and try a different approach is building exactly the disposition that carries them through increasingly abstract maths — and a parent''s calm, non-anxious response to mistakes supports that far more than pressure to get every answer right.',
    ARRAY['year7', 'year8']::text[],
    ARRAY['maths', 'thinking']::text[],
    '["Ask your child to explain their reasoning, even if you can''t verify each step yourself.", "Help them find a worked example rather than attempting to reteach a method yourself.", "Flag a repeated sticking point to their teacher rather than trying to solve it at home.", "Respond calmly to wrong answers — persistence matters as much as accuracy here."]'::jsonb,
    '["Reteaching a method differently from how it''s taught in class, which can add confusion.", "Taking over a hard problem instead of asking about their thinking first.", "Treating every wrong answer as something that needs immediate correcting."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by secondary mathematics education research',
    'resource-v1.0',
    66,
    true
  ),
  (
    'supporting-reading-writing-in-high-school',
    'Reading and writing get more demanding in high school — here''s how to help',
    'Reading',
    'Reading and writing demands jump sharply in high school — the parent''s job shifts from teaching skills to encouraging discussion and independent effort.',
    'High school brings a noticeable jump in what reading and writing actually ask of a student — longer, denser texts, expectations of independent interpretation, essays that need a clear argument rather than a simple retell, and less explicit guidance on exactly how to approach a task compared to primary school. By this stage, a parent''s most useful role has usually shifted away from teaching specific reading or writing skills — that''s squarely the teacher''s job — toward encouraging genuine engagement and independent effort.

Talking about what a student is reading, even briefly and informally, keeps reading connected to real thinking rather than something done purely to complete a task. Asking what surprised them, what they disagreed with, or what they''d have done differently invites a genuine opinion rather than a summary, and tends to produce far richer conversation than "what''s it about?"

For writing, asking a student to explain their argument out loud before they start typing often untangles more confusion than any amount of editing afterward. A clear one- or two-sentence answer to "what''s your main point?" usually means the writing itself will follow more easily; a vague answer usually predicts a piece that wanders.

Editing a draft with a light touch matters here. Pointing to one or two areas to strengthen — "this paragraph could use an example" — teaches more than a heavily marked-up page, and it keeps the ownership of the writing with the student rather than shifting it to a parent''s version of what it should say.

Reading choice matters more than reading level at this stage. A student engaged with something they''ve chosen — even outside an assigned reading list — is building the stamina and habit that assigned reading depends on; that engagement transfers even when the specific book doesn''t match a syllabus.',
    ARRAY['year7', 'year8']::text[],
    ARRAY['literacy', 'independence']::text[],
    '["Ask genuine opinion questions about what they''re reading, not just \"what''s it about?\"", "Have them explain their main argument out loud before they start writing.", "Point to one or two specific areas to strengthen rather than editing heavily.", "Support reading of their own choosing, not just assigned texts."]'::jsonb,
    '["Rewriting or heavily correcting a draft instead of pointing to specific areas to improve.", "Reducing reading conversations to summary checks rather than genuine discussion.", "Assuming only assigned reading \"counts\" toward building reading stamina."]'::jsonb,
    'Learn Along educator-authored parent guidance, informed by secondary literacy and writing pedagogy research',
    'resource-v1.0',
    67,
    true
  )
;
