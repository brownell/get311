# Settings specified here will take precedence over those in
# config/environment.rb

# In the development environment your application's code is reloaded on every
# request.  This slows down response time but is perfect for development since
# you don't have to restart the webserver when you make code changes.
config.cache_classes = false

# Log error messages when you accidentally call methods on nil.
config.whiny_nils = true

# Show full error reports and disable caching
config.action_controller.consider_all_requests_local = true
config.action_view.debug_rjs                         = true
config.action_controller.perform_caching             = false

# Don't care if the mailer can't send
config.action_mailer.raise_delivery_errors = false

$INSTALL_PATH = ''
$GA_CODE = ''
$DB_USE_SQLITE = false
$INST_NAME = "HBC"
$ORG_NAME = 'City of Austin'
$CITY_STATE = 'Austin, TX'
$THEME = 'hbc'
$CONTACT_ADDY = 'brownell@chalstrom.com'
$MOBILE_WEB_ADDY = 'm.chalstrom.us'
$MAIN_SITE_ADDY = 'www.chalstrom.us'
$EMAIL_ENDING = 'chalstrom.us'
$AREA_CODE = '512'
$EXCHANGE = '569'
$HAS_OC_PREFIX = false
$ONCAMPUS_PREFIX = '5'
$HAS_DIR_SEARCH_VA = false
$DIR_SEARCH_VA_NUM = ''
$DIR_SEARCH_SAMP_L = ''
$DIR_SEARCH_SAMP_S = ''
$HOMESCREEN_ICON = 'homelink_h.png'
$MAPS_API_KEY = ''

$WK_ITEMS = [
  ['Emergency','emergency','','emergency.png',false,''],
  ['Calendar','calendar','','events.png',false,''],
  ['Map','map','','map.png',false,''],
  ['News','news','','rss.png',false,''],
  ['Links','links','','links.png',false,''],
  ['Directory','people','','people.png',false,''],
  ['YouTube','youtube','','youtube.png',false,''],
  ['Full Site','','','hedu.png',true,'http://' + $MAIN_SITE_ADDY + '/'],
  ['Bookmark','mobile-about','?page=homescreen','homescreen.png',false,''],
  ['Hours','hours','','hours.png',false,'']
]

$TO_ITEMS = [
  ['Emergency','emergency','','emergency.png',false,''],
  ['Calendar','calendar','','calendar.png',false,''],
  ['Map','map','','map.png',false,''],
  ['News','news','','rss.png',false,''],
  ['Links','links','','links.png',false,''],
  ['Directory','people','','people.png',false,''],
  ['YouTube','youtube','','youtube.png',false,''],
  ['Full Site','','','hedu.png',true,'http://' + $MAIN_SITE_ADDY + '/'],
  ['Bookmark','mobile-about','?page=homescreen','homescreen.png',false,''],
  ['Hours','hours','','hours.png',false,'']
]

$BC_ITEMS = [
  ['Emergency Info','emergency','',false,''],
  ['Events Calendar','calendar','',false,''],
  ['Map','map','',false,''],
  ['News','news','',false,''],
  ['Links','links','',false,''],
  ['Directory','people','',false,''],
  ['YouTube','youtube','',false,''],
  ['Hours','hours','','hours.png',false,'']
]

$HAS_SMS = false
