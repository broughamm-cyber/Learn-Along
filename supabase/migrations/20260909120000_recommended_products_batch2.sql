-- Batch 2 of recommended_products: infant/toddler motor & sensory,
-- early maths manipulatives, fine-motor/writing tools, and
-- social-emotional book/game, each verified against a live amazon.com.au
-- listing (ASIN checked, not guessed) and linked only to resources
-- where the product is genuinely relevant to the specific skill discussed
-- (not applied blanket-style across every resource).

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'toy-manhattan-mind-cubes',
    'Manhattan Toy Wimmer-Ferguson Mind Cubes',
    'Soft, high-contrast textured cubes designed for newborns and up — the kind of simple, engaging object worth having on hand during short tummy-time sessions to give your baby a reason to lift their head.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B07QHPXVJL?tag=learnalong-22',
    'Toys',
    ARRAY['newborn', 'm02', 'm04', 'm06']::text[],
    ARRAY['movement']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    7,
    true
  ),
  (
    'toy-fisher-price-rock-a-stack',
    'Fisher-Price Rock-a-Stack',
    'A classic ring-stacking toy for 6 months and up — knocking it over and rebuilding it is exactly the kind of repeated cause-and-effect exploration this age is genuinely working through, not just playing at.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B08FCSNGS8?tag=learnalong-22',
    'Toys',
    ARRAY['m06', 'm09', 'm12']::text[],
    ARRAY['thinking', 'play']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    8,
    true
  ),
  (
    'toy-mushie-stacking-cups',
    'Mushie Stacking Cups',
    'Simple nesting and stacking cups for 6 months and up, good for the same push-drop-repeat exploration described here — no batteries, no single right way to play with them.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B0858X3VDM?tag=learnalong-22',
    'Toys',
    ARRAY['m06', 'm09', 'm12']::text[],
    ARRAY['thinking', 'play']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    9,
    true
  ),
  (
    'toy-plantoys-push-walker',
    'PlanToys Baby Walker (10 months+)',
    'A stable, weighted push-along walker with an adjustable handle — the kind of support this resource recommends instead of holding both of a baby''s hands while they''re learning to walk.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B000FZQL6W?tag=learnalong-22',
    'Toys',
    ARRAY['m09', 'm12', 'm15', 'm18']::text[],
    ARRAY['movement']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    10,
    true
  ),
  (
    'toy-melissa-doug-breakfast-picnic',
    'Melissa & Doug Breakfast Picnic Box Wooden Play Food Set',
    'Simple, open-ended wooden play food a toddler can feed to a teddy or "cook" with — everyday objects work just as well, but a small set like this gives pretend play an easy starting point.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B0F47ZRP72?tag=learnalong-22',
    'Toys',
    ARRAY['m18', 'm24', 'm30', 'm36']::text[],
    ARRAY['play', 'thinking']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    11,
    true
  ),
  (
    'toy-learning-resources-bear-counters',
    'Learning Resources Three Bear Family Counters',
    'Bear counters in three sizes and six colours, good for exactly the kind of everyday counting, comparing and sorting this resource describes — not a worksheet, just real objects to group and compare.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B000F8XF86?tag=learnalong-22',
    'Learning tools',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    12,
    true
  ),
  (
    'toy-simply-magic-base-ten',
    'Simply Magic Base Ten Blocks & Activities Set',
    'Physical ones, tens and hundreds blocks with a place-value mat — a hands-on way to build the "a ten and some more" grouping this resource describes, well before any written column method.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B0BXZ8C25M?tag=learnalong-22',
    'Learning tools',
    ARRAY['foundation']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    13,
    true
  ),
  (
    'toy-3bees-pattern-blocks',
    '3 Bees & Me Wooden Pattern Blocks',
    'Wooden geometric shapes for building patterns and pictures — a good example of the spatial, pattern-based maths this resource describes as being just as real as sums.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B07QNBX411?tag=learnalong-22',
    'Learning tools',
    ARRAY['foundation']::text[],
    ARRAY['maths', 'thinking']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    14,
    true
  ),
  (
    'art-crayola-triangular-crayons',
    'Crayola My First Washable Triangular Crayons',
    'Chunky, triangular-shaped crayons designed for a young child''s developing grip — a good match for the big, whole-arm mark-making this resource describes, well before fine pencil control is expected.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B078KH87PJ?tag=learnalong-22',
    'Learning tools',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['literacy', 'play']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    15,
    true
  ),
  (
    'toy-leapfrog-fridge-phonics',
    'LeapFrog Fridge Phonics Magnetic Letter Set',
    'Letters that say their own sound when placed into the set — a playful way to reinforce the same sound-to-letter connection this resource describes noticing and praising in a child''s early attempts at spelling.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B00JLHVX36?tag=learnalong-22',
    'Learning tools',
    ARRAY['foundation']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    16,
    true
  ),
  (
    'book-the-colour-monster',
    'The Colour Monster (Anna Llenas)',
    'A picture book that gives big, jumbled-up feelings a colour and a shape, making it easier for a child to point to what they''re feeling — a concrete way in for the kind of simple feeling-naming this resource describes.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1787412733?tag=learnalong-22',
    'Books',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['emotional_regulation', 'literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    17,
    true
  ),
  (
    'game-haba-first-orchard',
    'HABA My Very First Games: First Orchard',
    'A genuinely cooperative game (everyone wins or loses together, not against each other) with simple, visible turns — a good low-stakes, everyday way to practise the turn-taking this resource describes.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B004BW8TYC?tag=learnalong-22',
    'Toys',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['social', 'emotional_regulation']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    18,
    true
  )
;

UPDATE public.parent_resources SET product_keys = ARRAY['toy-manhattan-mind-cubes']::text[]
WHERE id = 'tummy-time-without-the-pressure';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-fisher-price-rock-a-stack', 'toy-mushie-stacking-cups']::text[]
WHERE id = 'cause-and-effect-play-at-this-age';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-plantoys-push-walker']::text[]
WHERE id = 'on-the-move-crawling-to-walking';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-melissa-doug-breakfast-picnic']::text[]
WHERE id = 'early-pretend-play-onset';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-learning-resources-bear-counters']::text[]
WHERE id = 'early-maths-everyday';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-simply-magic-base-ten']::text[]
WHERE id = 'place-value-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-3bees-pattern-blocks']::text[]
WHERE id = 'maths-is-more-than-arithmetic';

UPDATE public.parent_resources SET product_keys = ARRAY['art-crayola-triangular-crayons']::text[]
WHERE id = 'marks-before-writing';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-leapfrog-fridge-phonics']::text[]
WHERE id = 'support-early-spelling';

UPDATE public.parent_resources SET product_keys = ARRAY['book-the-colour-monster']::text[]
WHERE id = 'talking-about-big-feelings';

UPDATE public.parent_resources SET product_keys = ARRAY['book-the-colour-monster']::text[]
WHERE id = 'big-feelings-small-children';

UPDATE public.parent_resources SET product_keys = ARRAY['game-haba-first-orchard']::text[]
WHERE id = 'support-sharing-turns';
