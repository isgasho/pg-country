BEGIN;
-- country should be case insensitive;
-- ./spec/country_insensitive_spec.rb:8;
CREATE EXTENSION country;
SELECT 'de'::country = 'de'::country;
SELECT 'de'::country = 'De'::country;
SELECT 'de'::country = 'dE'::country;
SELECT 'de'::country = 'DE'::country;
SELECT 'de'::country = 'dE'::country;
SELECT 'De'::country = 'de'::country;
SELECT 'De'::country = 'De'::country;
SELECT 'De'::country = 'dE'::country;
SELECT 'De'::country = 'DE'::country;
SELECT 'De'::country = 'dE'::country;
SELECT 'dE'::country = 'de'::country;
SELECT 'dE'::country = 'De'::country;
SELECT 'dE'::country = 'dE'::country;
SELECT 'dE'::country = 'DE'::country;
SELECT 'dE'::country = 'dE'::country;
SELECT 'DE'::country = 'de'::country;
SELECT 'DE'::country = 'De'::country;
SELECT 'DE'::country = 'dE'::country;
SELECT 'DE'::country = 'DE'::country;
SELECT 'DE'::country = 'dE'::country;
SELECT 'dE'::country = 'de'::country;
SELECT 'dE'::country = 'De'::country;
SELECT 'dE'::country = 'dE'::country;
SELECT 'dE'::country = 'DE'::country;
SELECT 'dE'::country = 'dE'::country;
ROLLBACK;
