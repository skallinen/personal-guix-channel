(define-module (roboto-mono)
 #:use-module (guix packages)
 #:use-module (guix download)
 #:use-module (guix git-download)
 #:use-module (guix build-system font)
 #:use-module ((guix licenses)
  #:prefix license:))

(define-public font-google-roboto-mono
(package
 (name "font-google-roboto-mono")
 (version "26adf5193624f05ba1743797d00bcf0e6bfe624f")
 (source
  (origin
   (method git-fetch)
   (uri
    (git-reference
     (url "https://github.com/googlefonts/RobotoMono")
     (commit version)))
   (file-name
    (git-file-name name version))
   (sha256
    (base32 "00ddmr7yvb9isakfvgv6g74m80fmg81dmh1hrrdyswapaa7858a5"))))
 (build-system font-build-system)
 (home-page "https://fonts.google.com/specimen/Roboto+Mono")
 (synopsis
  "Monospace font")
 (description
  "Roboto Mono is a monospaced addition to the <a href=\"https://www.google.com/fonts/specimen/Roboto\">Roboto</a> type family. 
Like the other members of the Roboto family, the fonts are optimized for readability on screens across a wide variety of devices and reading environments. 
While the monospaced version is related to its variable width cousin, it doesn&#8217;t hesitate to change forms to better fit the constraints of a monospaced environment. 
For example, narrow glyphs like &#8216;I&#8217;, &#8216;l&#8217; and &#8216;i&#8217; have added serifs for more even texture while wider glyphs are adjusted for weight. 
Curved caps like &#8216;C&#8217; and &#8216;O&#8217; take on the straighter sides from Roboto Condensed.")
 (license license:asl2.0)))
