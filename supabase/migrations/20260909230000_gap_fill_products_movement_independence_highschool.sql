INSERT INTO public.recommended_products
  (id, title, description, retailer, affiliate_url, disclosure_text, category, stage_keys, focus_keys, source_basis, content_version, sort_order, active)
VALUES
  (
    'toy-bundaloo-bean-bag-toss',
    'Bundaloo Bean Bag Toss Target Game (2-in-1)',
    'A throwing and target game with bean bags and sticky balls — the kind of open-ended throwing practice this resource suggests mixing in alongside balance and jumping.',
    'Amazon AU',
    'https://www.amazon.com.au/Bundaloo-Bean-Toss-Target-Carry/dp/B0D4NRG11D?tag=learnalong-22',
    'As an Amazon Associate, Learn Along earns from qualifying purchases.',
    'Toys',
    ARRAY['m36','m48','m60']::text[],
    ARRAY['movement']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    45,
    true
  ),
  (
    'toy-daju-skipping-rope',
    'Daju Kids Skipping Rope — Adjustable Wooden Handles',
    'An adjustable-length rope sized for kids, for the jumping and rhythm side of movement play this resource recommends mixing with balance and throwing.',
    'Amazon AU',
    'https://www.amazon.com.au/Daju-Kids-Skipping-Rope-Adjustable/dp/B09MTDYLM3?tag=learnalong-22',
    'As an Amazon Associate, Learn Along earns from qualifying purchases.',
    'Toys',
    ARRAY['m48','m60']::text[],
    ARRAY['movement']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    46,
    true
  ),
  (
    'toy-learn-to-dress-board',
    'Learn to Dress Board — Buttons, Zips, Buckles & Snaps Practice',
    'A low-stakes way to hand a toddler the one piece of getting dressed they can actually manage alone — buttons, zips and buckles to practise without the pressure of being late for the day.',
    'Amazon AU',
    'https://www.amazon.com.au/Educational-Practice-Multilayered-Montessori-Preschool/dp/B0FDG97LJ1?tag=learnalong-22',
    'As an Amazon Associate, Learn Along earns from qualifying purchases.',
    'Learning tools',
    ARRAY['m18','m24','m30']::text[],
    ARRAY['independence']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    47,
    true
  ),
  (
    'toy-doddl-self-feeding-cutlery',
    'Doddl Toddler Self-Feeding Cutlery Set',
    'Short, contoured handles sized for a toddler''s grip, for letting them manage the actual eating themselves rather than quietly taking over with the "real" cutlery.',
    'Amazon AU',
    'https://www.amazon.com.au/Doddl-Cutlery-Toddler-Feeding-12months/dp/B0779CZ9FD?tag=learnalong-22',
    'As an Amazon Associate, Learn Along earns from qualifying purchases.',
    'Learning tools',
    ARRAY['m18','m24']::text[],
    ARRAY['independence']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    48,
    true
  ),
  (
    'toy-kapei-learning-tower',
    'KAPEICamper Toddler Learning Tower Kitchen Step Stool',
    'A stable step-up that lets a toddler reach the counter or sink under their own steam — the kind of built-in independence this resource suggests building extra time around, rather than lifting them up each time.',
    'Amazon AU',
    'https://www.amazon.com.au/KAPEICamper-Kitchen-Learning-Helper-Toddlers/dp/B0DN1JP7VN?tag=learnalong-22',
    'As an Amazon Associate, Learn Along earns from qualifying purchases.',
    'Learning tools',
    ARRAY['m18','m24','m30']::text[],
    ARRAY['independence']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    49,
    true
  ),
  (
    'book-australian-school-oxford-dictionary-thesaurus',
    'Australian School Oxford Dictionary & Thesaurus',
    'A combined dictionary and thesaurus built for the secondary years, useful for the kind of independent reading and writing support this resource recommends over heavy editing.',
    'Amazon AU',
    'https://www.amazon.com.au/Australian-School-Oxford-Dictionary-Thesaurus/dp/0190334037?tag=learnalong-22',
    'As an Amazon Associate, Learn Along earns from qualifying purchases.',
    'Books',
    ARRAY['year7','year8']::text[],
    ARRAY['literacy']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    50,
    true
  ),
  (
    'book-high-school-study-guide-charlie-haven',
    'High School Study Guide: Study Skills and Productivity Hacks',
    'A teen-focused guide to study and organisation skills, for building the independent effort this resource says the parent''s role shifts toward encouraging at this age.',
    'Amazon AU',
    'https://www.amazon.com.au/High-School-Study-Guide-Productivity/dp/1916648150?tag=learnalong-22',
    'As an Amazon Associate, Learn Along earns from qualifying purchases.',
    'Books',
    ARRAY['year7','year8']::text[],
    ARRAY['literacy','independence']::text[],
    'Learn Along editorial pick',
    'product-v1.0',
    51,
    true
  )
;

UPDATE public.parent_resources
SET product_keys = ARRAY['toy-bundaloo-bean-bag-toss','toy-daju-skipping-rope']::text[],
    updated_at = now()
WHERE id = 'movement-through-play';

UPDATE public.parent_resources
SET product_keys = ARRAY['toy-learn-to-dress-board','toy-doddl-self-feeding-cutlery','toy-kapei-learning-tower']::text[],
    updated_at = now()
WHERE id = 'me-do-it-toddler-independence';

UPDATE public.parent_resources
SET product_keys = ARRAY['book-australian-school-oxford-dictionary-thesaurus','book-high-school-study-guide-charlie-haven']::text[],
    updated_at = now()
WHERE id = 'supporting-reading-writing-in-high-school';
