-- Batch 7 of recommended_products: sentence play, vocabulary reference,
-- research/evidence resources, plus reusing existing verified products
-- for source-credibility-for-kids and early-maths-home. ASINs verified
-- against live amazon.com.au listings.

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'book-kid-libs-mad-libs',
    'Kid Libs Mad Libs',
    'A fill-in-the-blank word game built entirely around parts of speech and sentence structure — a genuinely playful way to notice how sentences are built, rather than a grammar worksheet.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0843128275?tag=learnalong-22',
    'Books',
    ARRAY['year3', 'year4', 'year5']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    39,
    true
  ),
  (
    'book-merriam-webster-childrens-dictionary',
    'Merriam-Webster''s Dictionary for Children',
    'A real dictionary with usage examples in child-friendly sentences — useful for exactly the kind of looking-up-and-using-a-richer-word habit this resource describes building through everyday talk and reading.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0877797307?tag=learnalong-22',
    'Books',
    ARRAY['year1', 'year2', 'year3', 'year4']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    40,
    true
  ),
  (
    'book-eyewitness-encyclopedia-everything',
    'Eyewitness Encyclopedia of Everything (DK)',
    'A wide-ranging reference covering many topics in short entries — good material for practising the specific skill this resource describes: pulling information from more than one entry or source into a single understanding.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/0241595746?tag=learnalong-22',
    'Books',
    ARRAY['year6']::text[],
    ARRAY['literacy', 'thinking']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    41,
    true
  ),
  (
    'book-guinness-world-records-2026',
    'Guinness World Records 2026',
    'A book full of specific, checkable facts and figures — useful raw material for practising the kind of evidence-based paragraph ("here''s my point, and here''s the specific fact that backs it up") this resource describes building.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/1913484750?tag=learnalong-22',
    'Books',
    ARRAY['year5', 'year6']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    42,
    true
  )
;

UPDATE public.parent_resources SET product_keys = ARRAY['book-kid-libs-mad-libs']::text[]
WHERE id = 'sentence-combining-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-merriam-webster-childrens-dictionary']::text[]
WHERE id = 'building-vocabulary-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-eyewitness-encyclopedia-everything']::text[]
WHERE id = 'synthesising-sources-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-guinness-world-records-2026']::text[]
WHERE id = 'evidence-paragraphs-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['book-fake-news-quiz-book']::text[]
WHERE id = 'source-credibility-for-kids';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-learning-resources-bear-counters']::text[]
WHERE id = 'early-maths-home';
