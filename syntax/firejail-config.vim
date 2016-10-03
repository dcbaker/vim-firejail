" Vim syntax file
" Language: firejail config
" Maintainer: Dylan Baker <dylan@pnwbakers.com>

if exists("b:current_syntax")
    finish
endif

syn case match

syn match firejailCfgBool      "(yes|no)"

syn match firejailCfgKeyword   "^bind"                 nextgroup=firejailBool
syn match firejailCfgKeyword   "^chroot"               nextgroup=firejailBool
syn match firejailCfgKeyword   "^file-transfer"        nextgroup=firejailBool
syn match firejailCfgKeyword   "^force-nonewprivs"     nextgroup=firejailBool
syn match firejailCfgKeyword   "^network"              nextgroup=firejailBool
syn match firejailCfgKeyword   "^restricted-network"   nextgroup=firejailBool
syn match firejailCfgKeyword   "^secomp"               nextgroup=firejailBool
syn match firejailCfgKeyword   "^userns"               nextgroup=firejailBool
syn match firejailCfgKeyword   "^whitelist"            nextgroup=firejailBool
syn match firejailCfgKeyword   "^x11"                  nextgroup=firejailBool
syn match firejailCfgKeyword   "^xephyr-screen"
syn match firejailCfgKeyword   "^xephyr-window-title"  nextgroup=firejailBool
syn match firejailCfgKeyword   "^xephyr-extra-params"

syn match firejailCfgComment   "^#.*"

hi def link firejailCfgKeyword    Keyword
hi def link firejailCfgBool       Boolean
hi def link firejailCfgComment    Comment

let b:current_syntax = "firejail-config"
