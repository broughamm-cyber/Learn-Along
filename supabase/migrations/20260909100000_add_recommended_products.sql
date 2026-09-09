-- Adds affiliate product recommendations, linked from parent_resources the
-- same way weekly_activities links to parent_resources (array-of-ids +
-- integrity check pattern already used throughout this schema).
--
-- v1 scope: embedded-only (no standalone browsable catalog yet) — see
-- product_keys on parent_resources for the link mechanism.
--
-- All links are Amazon Associates (AU) affiliate links (tag=learnalong-22).
-- disclosure_text carries the required Associates-program / ACCC affiliate
-- disclosure copy to render alongside any product recommendation.

CREATE TABLE public.recommended_products (
  id text PRIMARY KEY,
  title text NOT NULL,
  description text NOT NULL,
  image_url text,
  retailer text NOT NULL DEFAULT 'Amazon AU',
  affiliate_url text NOT NULL,
  disclosure_text text NOT NULL DEFAULT 'As an Amazon Associate, Learn Along earns from qualifying purchases.',
  category text NOT NULL,
  stage_keys text[] NOT NULL DEFAULT '{}'::text[],
  focus_keys text[] NOT NULL DEFAULT '{}'::text[],
  source_basis text NOT NULL DEFAULT 'Learn Along editorial pick',
  content_version text NOT NULL DEFAULT 'product-v1.0',
  sort_order smallint NOT NULL DEFAULT 0,
  active boolean NOT NULL DEFAULT true,
  updated_at timestamptz NOT NULL DEFAULT now()
);

ALTER TABLE public.recommended_products ENABLE ROW LEVEL SECURITY;

CREATE POLICY recommended_products_read
  ON public.recommended_products
  FOR SELECT
  TO authenticated
  USING (active = true);

ALTER TABLE public.parent_resources
  ADD COLUMN product_keys text[] NOT NULL DEFAULT '{}'::text[];
