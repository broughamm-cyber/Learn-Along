-- Pilot batch: 6 real Amazon AU books linked to the 2 shared-reading /
-- early-literacy resources, using the confirmed Amazon Associates AU
-- tracking ID (learnalong-22). ASINs verified against live amazon.com.au
-- listings before insert (not guessed). Titles are genuine published
-- books; only the book's title/author/format is referenced, no cover
-- text, story text or blurb text reproduced.

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'book-the-gruffalo',
    'The Gruffalo (Julia Donaldson & Axel Scheffler)',
    'A picture book with enough going on in its characters and events that there''s always something new to comment on or wonder about together — exactly the kind of shared reading that works better than quizzing.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1509804757?tag=learnalong-22',
    'Books',
    ARRAY['foundation', 'm48']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    1,
    true
  ),
  (
    'book-bear-hunt',
    'We''re Going on a Bear Hunt (Michael Rosen & Helen Oxenbury)',
    'A repeated, rhythmic phrase children pick up and join in with quickly, making it a natural fit for a relaxed, back-and-forth shared reading routine rather than a comprehension check.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0744523230?tag=learnalong-22',
    'Books',
    ARRAY['foundation', 'm48']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    2,
    true
  ),
  (
    'book-where-wild-things-are',
    'Where the Wild Things Are (Maurice Sendak)',
    'An emotionally rich, well-loved story with real feelings and imagination to wonder about out loud together, rather than a book that lends itself to right-or-wrong questions.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0370007727?tag=learnalong-22',
    'Books',
    ARRAY['foundation', 'm48']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    3,
    true
  ),
  (
    'book-very-hungry-caterpillar',
    'The Very Hungry Caterpillar (Eric Carle)',
    'A strong, repeated story pattern that''s easy for a child to pick up and retell in their own words — good practice for the story-language skills that support reading readiness before school.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0399226907?tag=learnalong-22',
    'Books',
    ARRAY['m60']::text[],
    ARRAY['literacy', 'school_readiness']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    4,
    true
  ),
  (
    'book-room-on-the-broom',
    'Room on the Broom (Julia Donaldson & Axel Scheffler)',
    'A rhyming story that builds an ear for rhyme through natural repetition and enjoyment, one of the genuine pre-reading foundations worth building before formal reading instruction starts.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0142501123?tag=learnalong-22',
    'Books',
    ARRAY['m60']::text[],
    ARRAY['literacy', 'school_readiness']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    5,
    true
  ),
  (
    'book-dear-zoo',
    'Dear Zoo (Rod Campbell)',
    'The lift-the-flap "what animal is it this time?" format builds the same prediction habit that supports early story comprehension, in a format young pre-readers can join in with themselves.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1509820353?tag=learnalong-22',
    'Books',
    ARRAY['m60']::text[],
    ARRAY['literacy', 'school_readiness']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    6,
    true
  )
;

UPDATE public.parent_resources
SET product_keys = ARRAY['book-the-gruffalo', 'book-bear-hunt', 'book-where-wild-things-are']::text[]
WHERE id = 'shared-reading-without-quizzing';

UPDATE public.parent_resources
SET product_keys = ARRAY['book-very-hungry-caterpillar', 'book-room-on-the-broom', 'book-dear-zoo']::text[]
WHERE id = 'early-literacy-before-school';
