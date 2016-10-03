" Vim syntax file
" Language: firejail profile
" Maintainer: Dylan Baker <dylan@pnwbakers.com>

if exists("b:current_syntax")
    finish
endif

syn case match

" Scripting keywords
syn match firejailKeyword   "^include"
syn match firejailKeyword   "^noblacklist"
syn match firejailKeyword   "^ignore"
syn match firejailKeyword   "^quiet"

" Filesystem access
syn match firejailKeyword   "^blacklist"
syn match firejailKeyword   "^bind"
syn match firejailKeyword   "^mkdir"
syn match firejailKeyword   "^mkfile"
syn match firejailKeyword   "^noexec"
syn match firejailKeyword   "^private\(-\(home\|dev\|tmp\)\)\?"
syn match firejailKeyword   "^private-etc"
syn match firejailKeyword   "^read-\(only\|write\)"
syn match firejailKeyword   "^tmpfs"
syn match firejailKeyword   "^tracelog"
syn match firejailKeyword   "^whitelist"
syn match firejailKeyword   "^writable-\(etc\|var\)"

" Security filters
syn match firejailKeyword   "^apparmor"
syn match firejailKeyword   "^caps"
syn match firejailKeyword   "^caps.drop"
syn match firejailKeyword   "^caps.keep"
syn match firejailKeyword   "^protocol"
syn match firejailKeyword   "^seccomp"
syn match firejailKeyword   "^seccomp.\(drop\|keep\)"
syn match firejailKeyword   "^nonewprivs"
syn match firejailKeyword   "^noroot"
syn match firejailKeyword   "^x11"

" Resource limits, CPU affinity, Control Groups
syn match firejailKeyword   "^rlimit-\(fsize\|noproc\|nofile\|sigpending\)"
syn match firejailKeyword   "^cpu"
syn match firejailKeyword   "^nice"
syn match firejailKeyword   "^cgroup"

" User environment
syn match firejailKeyword   "^name"
syn match firejailKeyword   "^env"
syn match firejailKeyword   "^nogroups"
syn match firejailKeyword   "^shell"
syn match firejailKeyword   "^ipc-namespace"
syn match firejailKeyword   "^nosound"

" Networking
syn match firejailKeyword   "^defaultgw"
syn match firejailKeyword   "^dns"
syn match firejailKeyword   "^hostname"
syn match firejailKeyword   "^ip"
syn match firejailKeyword   "^ip6"
syn match firejailKeyword   "^iprange"
syn match firejailKeyword   "^mac"
syn match firejailKeyword   "^mtu"
syn match firejailKeyword   "^net"
syn match firejailKeyword   "^netfilter"

" Other helpful stuff
syn match firejailComment   "^#.*"

hi def link firejailKeyword    Keyword
hi def link firejailBool       Boolean
hi def link firejailComment    Comment

let b:current_syntax = "firejail"
