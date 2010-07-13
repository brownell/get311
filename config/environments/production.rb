# Settings specified here will take precedence over those in config/environment.rb

# The production environment is meant for finished, "live" apps.
# Code is not reloaded between requests
config.cache_classes = true

# Full error reports are disabled and caching is turned on
config.action_controller.consider_all_requests_local = false
config.action_controller.perform_caching             = true
config.action_view.cache_template_loading            = true

# See everything in the log (default is :info)
# config.log_level = :debug

# Use a different logger for distributed setups
# config.logger = SyslogLogger.new

# Use a different cache store in production
# config.cache_store = :mem_cache_store

# Enable serving of images, stylesheets, and javascripts from an asset server
# config.action_controller.asset_host = "http://assets.example.com"

# Disable delivery errors, bad email addresses will be ignored
# config.action_mailer.raise_delivery_errors = false

# Enable threaded mode
# config.threadsafe!

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
