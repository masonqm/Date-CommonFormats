use Test::Simple tests => 8;

use Date::CommonFormats qw(:all);

ok(format_date_integer("2011-01-02 01:02:03") eq "20110102010203", "format_date_integer() test");
ok(format_date_integer("2011-01-02") eq "20110102000000", "format_date_integer() test without time");
ok(substr(format_date_rss("2011-01-02 01:02:03"), 0, 25) eq "Sun, 02 Jan 2011 01:02:03", "format_date_rss()");
ok(format_date_usenglish("2011-01-02 01:02:03") eq "Jan 2nd, 2011", "format_date_usenglish()");
ok(format_date_usenglish("2011-01-02") eq "Jan 2nd, 2011", "format_date_usenglish() without time");
ok(format_date_usenglish_long_ampm("2011-01-02 01:02:03") eq "Jan 2nd, 2011 01:02 AM", "format_date_usenglish_long_ampm()");
ok(format_date_cms_publishdate("2011-01-02 01:02:03") eq "01-02-2011 01:02 AM", "format_date_cms_publishdate()");
ok(substr(format_date_w3c("2011-01-02 01:02:03"),0,19) eq "2011-01-02T01:02:03", "format_date_w3c()");
