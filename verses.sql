SELECT poet.name as poet, century,  verse.text as verse
  FROM verse,poem,cat,poet
  WHERE verse.poem_id=poem.id AND poem.cat_id=cat.id AND cat.poet_id=poet.id 
  AND verse NOT LIKE '%'||CHAR(10)||'%' AND verse NOT LIKE '%'||CHAR(13)||'%'
  ORDER BY century