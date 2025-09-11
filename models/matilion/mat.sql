SELECT 
  * 
FROM (SELECT DISTINCT 
  "height", 
  "alt", 
  "avg_color", 
  "id", 
  "liked", 
  "photographer", 
  "photographer_id", 
  "photographer_url", 
  "src.landscape", 
  "src.large", 
  "src.large2x", 
  "src.medium", 
  "src.original", 
  "src.portrait", 
  "src.small", 
  "src.tiny", 
  "url", 
  "width", 
  "Ranked_Row" 
FROM ((SELECT 
  *, 
  ROW_NUMBER() OVER (ORDER BY "height" ASC) AS "Ranked_Row" 
FROM ((SELECT 
  * 
FROM ((SELECT 
  "alt", 
  "avg_color", 
  "height", 
  "id", 
  "liked", 
  "photographer", 
  "photographer_id", 
  "photographer_url", 
  "src.landscape", 
  "src.large", 
  "src.large2x", 
  "src.medium", 
  "src.original", 
  "src.portrait", 
  "src.small", 
  "src.tiny", 
  "url", 
  "width" 
FROM "ANURAG"."AGXPROJECT"."ru_api")) 
WHERE ("width" <= 2000)))))) 
