-- Batch 5 of recommended_products: fine motor / open-ended play for
-- early years, and Year 7-8 study tools. ASINs verified against live
-- amazon.com.au listings.

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'toy-melissa-doug-lacing-beads',
    'Melissa & Doug Deluxe Wooden Lacing Beads',
    'Chunky wooden beads and laces that build the same hand control and coordination this resource describes — no single right way to thread them, so a child can work at their own pace.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B000GIJ4Y4?tag=learnalong-22',
    'Toys',
    ARRAY['m36', 'm48', 'm60']::text[],
    ARRAY['play']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    30,
    true
  ),
  (
    'toy-lovevery-block-set',
    'The Block Set by Lovevery',
    'Genuinely open-ended wooden blocks and shapes with no fixed way to play — the kind of unscripted building and planning this resource describes as where most of the real developmental work at this age actually happens.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B07XV7YTJX?tag=learnalong-22',
    'Toys',
    ARRAY['m36', 'm60']::text[],
    ARRAY['play', 'thinking']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    31,
    true
  ),
  (
    'tool-academic-diary-student-planner',
    'A4 Day-Per-Page Academic Student Diary',
    'One visible, dated place to track homework and deadlines across every subject — the simple system this resource describes as mattering more at this stage than any particular study technique.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B089ZNT9RC?tag=learnalong-22',
    'Learning tools',
    ARRAY['year7', 'year8']::text[],
    ARRAY['independence']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    32,
    true
  ),
  (
    'toy-eai-algebra-tiles',
    'EAI Education Algebra Tiles: Combination Set',
    'Physical tiles for representing algebraic expressions and equations — a concrete way for a student to explain their reasoning out loud, which this resource describes as more useful than a parent trying to reteach the method.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B079G82YGW?tag=learnalong-22',
    'Learning tools',
    ARRAY['year7', 'year8']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    33,
    true
  )
;

UPDATE public.parent_resources SET product_keys = ARRAY['toy-melissa-doug-lacing-beads']::text[]
WHERE id = 'fine-motor-through-play';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-lovevery-block-set']::text[]
WHERE id = 'play-is-learning';

UPDATE public.parent_resources SET product_keys = ARRAY['tool-academic-diary-student-planner']::text[]
WHERE id = 'independent-study-habits-early-high-school';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-eai-algebra-tiles']::text[]
WHERE id = 'maths-explanation-over-reteaching';
