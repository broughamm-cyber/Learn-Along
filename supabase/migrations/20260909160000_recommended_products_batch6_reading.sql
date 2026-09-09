-- Batch 6 of recommended_products: remaining reading resources
-- (print awareness, fluency, comprehension, author craft, critical
-- reading). ASINs verified against live amazon.com.au listings.
-- grow-vocabulary-at-home reuses the already-verified Gruffalo product
-- (rich, unusual vocabulary) rather than adding a new unverified title.

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'book-chicka-chicka-boom-boom',
    'Chicka Chicka Boom Boom (Bill Martin Jr. & John Archambault)',
    'A rhythmic alphabet chant where the letters themselves are the characters — a playful, low-pressure way to build the print and letter awareness this resource describes, well short of formal reading instruction.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/068983568X?tag=learnalong-22',
    'Books',
    ARRAY['m48']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    34,
    true
  ),
  (
    'book-usborne-very-first-reading-16',
    'Usborne Very First Reading Boxed Set (16 books)',
    'Short, genuinely readable books at a level a beginning reader can manage smoothly — good for building the accurate, unhurried reading this resource describes, rather than pushing pace.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0794528678?tag=learnalong-22',
    'Books',
    ARRAY['foundation', 'year1', 'year2']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    35,
    true
  ),
  (
    'book-roald-dahl-magical-gift-set',
    'Roald Dahl Magical Gift Set (4 Books)',
    'Four well-loved, richly plotted stories that give a lot to talk about beyond the literal events — good material for the kind of genuine comprehension conversation this resource describes, not a comprehension worksheet.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0142414972?tag=learnalong-22',
    'Books',
    ARRAY['year2', 'year3', 'year4', 'year5']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    36,
    true
  ),
  (
    'book-wonder-rj-palacio',
    'Wonder (R.J. Palacio)',
    'A novel told from several different characters'' points of view on the same events — a genuinely good example for noticing and discussing the author''s choices this resource describes, rather than treating a story as a single fixed viewpoint.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0375869026?tag=learnalong-22',
    'Books',
    ARRAY['year4', 'year5', 'year6']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    37,
    true
  ),
  (
    'book-fake-news-quiz-book',
    'Fake News: True or False Quiz Book',
    'A genuinely playful, quiz-format way to practise questioning whether something is true — fitting the everyday, low-pressure critical reading habit this resource describes, rather than a formal media-literacy lesson.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1405297662?tag=learnalong-22',
    'Books',
    ARRAY['year3', 'year4', 'year5', 'year6']::text[],
    ARRAY['literacy', 'thinking']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    38,
    true
  )
;

UPDATE public.parent_resources SET product_keys = ARRAY['book-chicka-chicka-boom-boom']::text[]
WHERE id = 'print-awareness-before-school';

UPDATE public.parent_resources SET product_keys = ARRAY['book-the-gruffalo']::text[]
WHERE id = 'grow-vocabulary-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-usborne-very-first-reading-16']::text[]
WHERE id = 'reading-fluency-not-speed';

UPDATE public.parent_resources SET product_keys = ARRAY['book-roald-dahl-magical-gift-set']::text[]
WHERE id = 'reading-comprehension-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-wonder-rj-palacio']::text[]
WHERE id = 'author-choices-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-fake-news-quiz-book']::text[]
WHERE id = 'critical-reading-for-kids';
