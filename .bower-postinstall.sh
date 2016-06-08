#!/bin/bash
#
cp bower_components/Swiper/dist/css/swiper.min.css swiper-styles.html
cat swiper-styles.html | pbcopy && (echo '<dom-module id="swiper-styles">'; echo '  <template>'; echo '    <style>') > swiper-styles.html && pbpaste >> swiper-styles.html;
(echo ""; echo ":host[enable-grab-cursor] .swiper-slide {cursor:-webkit-grab;cursor:-moz-grab;cursor:grab;}    </style>"; echo "  </template>"; echo "</dom-module>") >> swiper-styles.html;