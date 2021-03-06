##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
# Version 0.2 # 2011-08-18 # Brendan Coles <bcoles@gmail.com> #
# Added a few matches
##

Plugin.define "PHP-Fusion" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-06-04 
version "0.2"
description "PHP-Fusion, a light-weight open-source content management system (CMS) - Requires: PHP and MySQL - Homepage: http://www.php-fusion.co.uk/"

# ShodanHQ results as at 2011-08-18 #
# 1,668 for fusion_visited=yes
# 4 for fusion_visited= -yes

# Dorks #
dorks [
'"Powered by PHP-Fusion copyright" +intitle:News'
]

# Examples #
examples %w|
www.phpfusionstyle.com
www.phpfusionmods.com
www.php-fusion.nu
www.phpfusion-nederlands.info
www.phpfusion.cz
www.php-fusion.pl
php-fusion7.ru
serverheaven.net
esports-angelz.co.cc
alttz.eu5.org
www.caranet.co.uk
www.vucjak.com
www.moremusic.es
www.islamiyete.com
www.kouelohab.com
www.liendoi.net
www.whisperwillow.com
www.wethepeoplewillnotbechipped.com/main/
www.neilhague.com
www.onepiecenakama.pl
www.diptera.info
www.valeriovendrame.it
oak.conncoll.edu/~phc/phpfusion/
bingdev.binghamton.edu/vpma/
www.isa.pdx.edu/fusion/
oregonstate.edu/groups/india/
elsci.coe.nau.edu
students.sabanciuniv.edu/~mbilal/webdeneme/php-fusion-7-00-2/files/
|

# Matches #
matches [

# GHDB # "Powered by PHP-Fusion copyright" +intitle:News'
{ :certainty=>75, :ghdb=>'"Powered by PHP-Fusion copyright" +intitle:News' },

# Year Detection # powered by text
{ :string=>/Powered by <a href='http:\/\/www\.php-fusion\.co\.uk'>PHP-Fusion<\/a> copyright &copy; 2002 - ([\d]{4})/ },

# Profile page # profile.php
{ :text=>"<td align='right' class='tbl1 profile_user_level'><!--profile_user_level-->" },
{ :text=>"<td align='right' class='profile_user_level tbl1'><!--profile_user_level-->" },
{ :text=>"class='tbl profile_user_avatar'><!--profile_user_avatar--><img src='images/avatars/" },
{ :text=>"<td align='right' class='tbl1 profile_user_name'><!--profile_user_name-->" },
{ :text=>"<td align='right' class='profile_user_name tbl1'><!--profile_user_name-->" },

# HTML Comment
{ :certainty=>75, :regexp=>/<!--counter-->[\d,]+ unique visits</ },

# fusion_visited Cookie
{ :search=>"headers[set-cookie]", :name=>"fusion_visited Cookie", :regexp=>/fusion_visited=/ },

]

end

