##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "StatusNet" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-04-21
version "0.1"
description "StatusNet's Open Source social software enables organizations to collaborate, share insights and build relationships in real time. - Homepage: http://status.net/"

# 104 for "powered by StatusNet version" inurl:"/main/version" -filetype:html
# 231 for inurl:"index.php" "It runs the StatusNet microblogging software, version *, available under the GNU Affero General Public License. Site content license"

# Dorks #
dorks [
'"powered by StatusNet version" inurl:"/main/version" -filetype:html'
]

# Examples #
examples %w|
www.twitrobo.com/index.php/main/version
siam.tv
indus.kkkon.jp:33080/statusnet/index.php/main/version
microblog.squigglescripts.com
demo.cowboyhacks.com/statusnet/
yourestatus.com
status.refatoring.com
status.tfevens.com
velotube.com/sn/
jcvassort.open-web.fr/microblog/
thegamemastershow.com/status/
wgreenhouse.dyndns.org/statusnet/
ceae.colorado.edu/myewb/
|

# Matches #
matches [

# Version detection # Powered by footer
{ :version=>/<p>This site is powered by <a href="http:\/\/status\.net\/">StatusNet<\/a> version ([^\s]+),/ },

# Version detection # GPL footer
{ :version=>/It runs the <a href="http:\/\/status\.net\/">StatusNet<\/a> microblogging software, version ([^\s]+), available under the <a / },

]

end


