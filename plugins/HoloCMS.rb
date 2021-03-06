##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "HoloCMS" do
author "Brendan Coles <bcoles@gmail.com>" # 2010-10-14
version "0.1"
description "HoloCMS. Requires PHP."

# 44 results for "powered by HoloCMS" +Meth0d @ 2010-10-14

# Dorks #
dorks [
'"powered by HoloCMS" +Meth0d'
]

# Examples #
examples %w|
bobba-story.free-h.fr
bsshotel.no-ip.biz
chaoshotel.netne.net
dorkhotel.netau.net/cms/
double-session.com/staff.php
enterserver.en.funpic.de
hchotel.site50.net
ouasisgame.fr/staff.php
probbohotel.pcriot.com/holocms_3.1.1/holo/
rayane59.free.fr
stophotel.comoj.com
www.enriick.0fees.net
www.habbok.com
|

# Matches #
matches [

# Version detection # Meta generator
{ :version=>/<meta name="build" content="([^\ ]+) - [^-]+- HoloCMS" \/>/ },

# Default HTML
{ :text=>'<div id="remember-me-notification" class="bottom-bubble" style="display:none;">' },

# Powered by text
{ :regexp=>/^Powered by HoloCMS &copy[;]* 2008 Meth0d & Parts by Yifan, sisija/ },

]

end

