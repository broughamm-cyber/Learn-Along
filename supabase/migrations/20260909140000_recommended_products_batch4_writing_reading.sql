-- Batch 4 of recommended_products: writing tools/journals and phonics
-- readers / word-origins reference. ASINs verified against live
-- amazon.com.au listings.

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'book-journal-100-prompts-elementary',
    'Journaling For Kids: 100 Journal Prompts for Elementary Students',
    'A low-pressure prompt journal that gives a beginning writer a space to just get a thought down without anyone hovering over spelling or punctuation — exactly the kind of unpolished-first-draft writing this resource describes as worthwhile on its own.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1737556111?tag=learnalong-22',
    'Books',
    ARRAY['foundation']::text[],
    ARRAY['literacy', 'independence']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    25,
    true
  ),
  (
    'book-50-writing-prompts-grades-3-5',
    '50 Writing Prompts for Kids: Grades 3-5',
    'Structured prompts across narrative, opinion and expository writing — a useful starting point for the kind of "what''s your main point?" planning conversation this resource describes having before writing begins.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B08XY43PP7?tag=learnalong-22',
    'Books',
    ARRAY['year5', 'year6']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    26,
    true
  ),
  (
    'tool-pencil-grip-set-5pack',
    'Ergonomic Pencil Grip Set for Kids (5-Pack)',
    'A simple grip aid for a young writer still building pencil control — useful for the mechanics of writing, while the resource''s own advice about not over-correcting stays focused on content, not grip.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B07PRN4FRL?tag=learnalong-22',
    'Learning tools',
    ARRAY['foundation', 'm60', 'year1', 'year2']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    27,
    true
  ),
  (
    'book-usborne-phonics-readers-20',
    'Usborne My First Phonics Reading Library (20 Book Set)',
    'Short, genuinely decodable stories built from taught sound-letter patterns rather than guesswork — a direct match for this resource''s advice to reinforce familiar phonics patterns rather than race ahead to harder ones.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1474920489?tag=learnalong-22',
    'Books',
    ARRAY['foundation', 'year1', 'year2']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    28,
    true
  ),
  (
    'book-oxford-word-origins-dictionary',
    'Oxford School Dictionary of Word Origins',
    'A reference built entirely around where words and word parts come from — a natural companion to this resource''s focus on using prefixes, suffixes and roots to unlock the meaning of unfamiliar words.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0192733745?tag=learnalong-22',
    'Books',
    ARRAY['year3', 'year4', 'year5', 'year6']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    29,
    true
  )
;

UPDATE public.parent_resources SET product_keys = ARRAY['book-journal-100-prompts-elementary']::text[]
WHERE id = 'writing-help-without-correcting-everything';

UPDATE public.parent_resources SET product_keys = ARRAY['book-50-writing-prompts-grades-3-5']::text[]
WHERE id = 'planning-writing-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['tool-pencil-grip-set-5pack']::text[]
WHERE id = 'early-writing-without-correcting-everything';

UPDATE public.parent_resources SET product_keys = ARRAY['book-usborne-phonics-readers-20']::text[]
WHERE id = 'phonics-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-oxford-word-origins-dictionary']::text[]
WHERE id = 'morphology-at-home';
