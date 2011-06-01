@ECHO OFF
set PATH=D:\install\xampp\php;%PATH%
echo Starting nginx...
cd d:\install\nginx
start nginx.exe
ECHO Starting PHP FastCGI...
d:\bin\RunHiddenConsole.exe D:\install\xampp\php\php-cgi.exe -b 127.0.0.1:9123