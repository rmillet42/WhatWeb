##
# This file is part of WhatWeb and may be subject to
# redistribution and commercial restrictions. Please see the WhatWeb
# web site for more information on licensing and terms of use.
# http://www.morningstarsecurity.com/research/whatweb
##
Plugin.define "CAStor" do
author "Brendan Coles <bcoles@gmail.com>" # 2011-09-21
version "0.1"
description "CAStor is object storage software designed to store unstructured data also referred to as fixed content or reference information. This includes documents, e-mail, images, audio, video, voice mails, ring tones, and medical images and records. - Homepage: http://www.caringo.com/"

# Data Sheets #
# http://www.caringo.com/resources/datasheets.html

# Google results as at 2011-09-21 #
# 2 for intitle:"CAStor Node Status" +"CAStor Node IP"

# ShodanHQ results as at 2011-09-21 #
# 25 for CAStor Cluster
#  2 for CAStor Reverse Proxy

# Dorks #
dorks [
'intitle:"CAStor Node Status" +"CAStor Node IP"'
]

# Examples #
examples %w|
130.242.14.62
74.204.163.82
64.129.59.141
64.129.59.140
121.83.198.43
129.242.4.207
152.2.228.234
121.83.198.45
12.45.140.13
|

# Matches #
matches [

# HTML + Title + h2 Heading
{ :url=>"/", :text=>'<html><head><title>CAStor Node Status</title></head><body><h2>CAStor Node IP' },

# HTTP Headers
{ :search=>"headers[server]", :version=>/^CAStor Cluster\/([^\s]+)$/ },
{ :search=>"headers[server]", :module=>/^CAStor (Reverse Proxy .+)$/ },
{ :search=>"headers[castor-system-totalgbavailable]", :regexp=>/^[\d]+$/ },
{ :search=>"headers[castor-system-totalgbcapacity]", :regexp=>/^[\d]+$/ },

]

end

