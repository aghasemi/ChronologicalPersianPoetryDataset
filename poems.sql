SELECT poet.name as poet, century, TRIM(GROUP_CONCAT(verse.text , '    ')) as poem
  FROM verse,poem,cat,poet
  WHERE verse.poem_id=poem.id AND poem.cat_id=cat.id AND cat.poet_id=poet.id
  GROUP BY poem_id
  HAVING poem NOT LIKE '%'||CHAR(10)||'%' AND poem NOT LIKE '%'||CHAR(13)||'%'
  ORDER BY century