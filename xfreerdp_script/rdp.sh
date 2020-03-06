#!/bin/bash
#xfreerdp /multimon /u:yulistic /v:143.248.188.251 /f /p:Whddbf17o /bpp:32 +fonts /jpeg-quality:100 +themes +wallpaper /gfx /rfx /drive:USB,/run/media/yulistic /compression

# multimon
xfreerdp /u:yulistic /v:143.248.188.251 /f /p:15987 /bpp:32 +fonts /jpeg-quality:100 +themes +wallpaper  /rfx /compression /multimon # /usb:id,dev:054c:0be5 # #/drive:USB #,/run/media/yulistic 

# first mon only.
#xfreerdp /u:yulistic /v:143.248.188.251 /f /p:15987 /bpp:32 +fonts /jpeg-quality:100 +themes +wallpaper  /rfx /compression /monitors:2 #/multimon # /usb:id,dev:054c:0be5 # #/drive:USB #,/run/media/yulistic 

# first multimon only
#xfreerdp /u:yulistic /v:143.248.188.251 /f /p:15987 /bpp:32 +fonts /jpeg-quality:100 +themes +wallpaper /rfx /drive:USB,/run/media/yulistic /compression /monitors:0

# second multimon only
#xfreerdp /u:yulistic /v:143.248.188.251 /f /p:15987 /bpp:32 +fonts /jpeg-quality:100 +themes +wallpaper /rfx /drive:USB,/run/media/yulistic /compression /monitors:1

#xfreerdp /u:yulistic /v:143.248.188.251 /f /p:15987 /bpp:32 +fonts /jpeg-quality:100 +themes +wallpaper /rfx /drive:USB,/run/media/yulistic
