-- Batch 8 of recommended_products: 2 new verified books (school
-- transition, joining play) plus reusing already-verified products
-- where a resource covers essentially the same ground as one already
-- linked (shared-reading-without-testing overlaps shared-reading-without-quizzing;
-- pretend-play-learning and social-learning-through-play match existing
-- products directly). ASINs verified against live amazon.com.au listings.

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'book-colour-monster-goes-to-school',
    'The Colour Monster Goes to School (Anna Llenas)',
    'A picture book that puts the mix of excitement and nerves about starting school into a story a child can recognise — a concrete way in for the routine-and-confidence approach to school readiness this resource describes.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1787415589?tag=learnalong-22',
    'Books',
    ARRAY['m48', 'm60']::text[],
    ARRAY['school_readiness', 'emotional_regulation']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    43,
    true
  ),
  (
    'book-can-i-play-too',
    'Can I Play Too? (An Elephant and Piggie Book, Mo Willems)',
    'A short, funny story built entirely around the awkwardness of trying to join a game already in progress — a very direct, low-pressure way into the peer-joining skill this resource describes.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1423119916?tag=learnalong-22',
    'Books',
    ARRAY['m48', 'm60', 'foundation', 'year1']::text[],
    ARRAY['social']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    44,
    true
  )
;

UPDATE public.parent_resources SET product_keys = ARRAY['toy-melissa-doug-breakfast-picnic']::text[]
WHERE id = 'pretend-play-learning';

UPDATE public.parent_resources SET product_keys = ARRAY['book-the-gruffalo', 'book-bear-hunt', 'book-where-wild-things-are']::text[]
WHERE id = 'shared-reading-without-testing';

UPDATE public.parent_resources SET product_keys = ARRAY['book-colour-monster-goes-to-school']::text[]
WHERE id = 'school-readiness-without-pressure';

UPDATE public.parent_resources SET product_keys = ARRAY['book-colour-monster-goes-to-school']::text[]
WHERE id = 'school-readiness-without-rushing';

UPDATE public.parent_resources SET product_keys = ARRAY['game-haba-first-orchard']::text[]
WHERE id = 'social-learning-through-play';

UPDATE public.parent_resources SET product_keys = ARRAY['book-can-i-play-too']::text[]
WHERE id = 'friendship-and-joining-in';
