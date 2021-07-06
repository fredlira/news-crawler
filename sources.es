google_news_es
https://news.google.com/rss?hl=es-419&gl=US&ceid=US:es-419
'xmllint --xpath'
'//item/title/text()'
es

elpais_internacional 
https://feeds.elpais.com/mrss-s/pages/ep/site/elpais.com/section/internacional/portada 
'xml_grep --text_only' 
'//item/title' 
es

bbcnews_internacional 
'https://www.bbc.com/mundo/temas/internacional/index.xml#sa-link_location=story-body&intlink_from_url=https%3A%2F%2Fwww.bbc.com%2Fmundo%2Finstitucional%2F2011%2F03%2F000000_rss_gel&intlink_ts=1591630129331-sa' 
'xml_grep --text_only' 
'//entry/title' 
es

bbcnews_americalatina 
'https://www.bbc.com/mundo/temas/america_latina/index.xml#sa-link_location=story-body&intlink_from_url=https%3A%2F%2Fwww.bbc.com%2Fmundo%2Finstitucional%2F2011%2F03%2F000000_rss_gel&intlink_ts=1591630130519-sa' 
'xml_grep --text_only' 
'//entry/title' 
es
