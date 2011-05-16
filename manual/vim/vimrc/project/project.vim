let user = system('whoami')
let home_path = '/home/'.strpart(user,0,len(user)-1).'/project/'


" key: local svn directory    val: common development directory

" famerzApi
let g:sync[home_path.'famerz_api/trunk/conf']            = '/data/httpd/conf/vhosts'
let g:sync[home_path.'famerz_api/trunk/conf/config']            = '/data/famerzapi/config'
let g:sync[home_path.'famerz_api/trunk/src/pear']            = '/opt/php/lib/php/TVB/famerzApi'
let g:sync[home_path.'famerz_api/trunk/src/htdocs']            = '/data/httpd/htdocs/api.famerz.com'
let g:sync[home_path.'famerz_api/trunk/bin']            = '/data/famerzapi/bin'
let g:sync[home_path.'famerz_api/trunk/src/img']            = '/data/httpd/htdocs/img.famerz.com'
