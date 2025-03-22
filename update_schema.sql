-- Add summary column to the blog table
ALTER TABLE blog
ADD COLUMN summary TEXT;

-- Update existing records to have a default summary
UPDATE blog
SET summary = 'Crypto Update'
WHERE summary IS NULL;

-- Make summary column nullable since it's no longer required
ALTER TABLE blog
ALTER COLUMN summary DROP NOT NULL; 