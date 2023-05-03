scrape_fixtures <- function(html,club='durhamcity'){
  matches <- str_extract_all(html, "<a href='(.*)' class='link-scorecard d-none d-md-inline-block rounded-circle'>")
  match_urls <- paste0('http://',club,'.play-cricket.com',gsub("' class", "",gsub("href='","",str_extract(matches[[1]],"href(.*)class"))))
  return(match_urls)
}

pc_url <- function(
    club='durhamcity',
    season=256,
    month='',
    homeaway='home'
    ){
  paste0(
    'https://',
    club,
    '.play-cricket.com/Matches?tab=Fixture&',
    'selected_season_id=',season,'&',
    'fixture_month=',month,'&',
    'season_id=',season,'&',
    'view_by=month&',
    'home_or_away=',homeaway
  )
}