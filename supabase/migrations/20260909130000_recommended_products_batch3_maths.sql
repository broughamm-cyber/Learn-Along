-- Batch 3 of recommended_products: primary/upper-primary maths
-- manipulatives (fractions, decimals, percentages, multiplication,
-- division, ratio). ASINs verified against live amazon.com.au listings.

INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'toy-rainbow-fraction-circles',
    'Learning Resources Rainbow Fractions Deluxe Circles',
    'Colour-coded fraction circles from whole down to twelfths — a physical way to see that 3/8 is smaller than 5/6 by placing the pieces side by side, rather than working it out abstractly on paper.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B001604R1G?tag=learnalong-22',
    'Learning tools',
    ARRAY['year2', 'year3', 'year4', 'year5', 'year6']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    19,
    true
  ),
  (
    'toy-koplow-decimal-dice',
    'Koplow Games Decimal Dice Game Set',
    'Dice marked with decimal values, useful for quick comparison games that keep place value visible — rolling and ordering decimals is more concrete than comparing them written down in a column.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B000NNQ3SM?tag=learnalong-22',
    'Learning tools',
    ARRAY['year4', 'year5', 'year6']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    20,
    true
  ),
  (
    'toy-hand2mind-fraction-tower',
    'hand2mind Rainbow Fraction Tower Cubes',
    'Interlocking cubes that show fractions, decimals and percentages as the same underlying amount — a direct, physical way to see why 1/2, 0.5 and 50% all "connect to 100" the same way.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B016DU8TF8?tag=learnalong-22',
    'Learning tools',
    ARRAY['year5', 'year6']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    21,
    true
  ),
  (
    'game-galt-times-tables',
    'Galt Times Tables Game',
    'A game built around the times tables from 1 to 12, useful for the kind of relationship-building this resource describes — seeing multiplication as repeated groups, not just facts to memorise.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B0BT1XHSQM?tag=learnalong-22',
    'Learning tools',
    ARRAY['year2', 'year3', 'year4']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    22,
    true
  ),
  (
    'toy-edx-fruit-counters',
    'edx Education Fruit Counters (108 pieces)',
    'A large set of real, moveable counters good for physically sharing a quantity into equal groups — the concrete grouping-and-sharing action this resource describes as the foundation of division.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B001UG59LI?tag=learnalong-22',
    'Learning tools',
    ARRAY['year3', 'year4']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    23,
    true
  ),
  (
    'toy-mathlink-cubes-big-builders',
    'Learning Resources MathLink Cubes Big Builders (200 pieces)',
    'Interlocking cubes that snap into groups, useful for building and comparing two quantities side by side — a concrete way into the real-life ratio and rate comparisons this resource describes.',
    'Amazon AU',
    'https://www.amazon.com.au/dp/B07NSXN2B4?tag=learnalong-22',
    'Learning tools',
    ARRAY['year6']::text[],
    ARRAY['maths']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    24,
    true
  )
;

UPDATE public.parent_resources SET product_keys = ARRAY['toy-rainbow-fraction-circles']::text[]
WHERE id = 'fractions-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-koplow-decimal-dice']::text[]
WHERE id = 'decimals-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-hand2mind-fraction-tower']::text[]
WHERE id = 'percentages-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['game-galt-times-tables']::text[]
WHERE id = 'multiplication-understanding';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-edx-fruit-counters']::text[]
WHERE id = 'division-understanding';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-mathlink-cubes-big-builders']::text[]
WHERE id = 'ratio-and-rate-at-home';

UPDATE public.parent_resources SET product_keys = ARRAY['toy-learning-resources-bear-counters']::text[]
WHERE id = 'number-sense-before-speed';
