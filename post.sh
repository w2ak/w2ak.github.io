#!/usr/bin/env bash
cd "$(dirname "$(realpath "${BASH_SOURCE[0]-$0}")")"
dte=$(date +%F)
tme=$(date +'%T %z')
echo -n "Title: "
read title
file="_posts/$dte-$(echo "$title" | tr -c -d '[:lower:][:upper:] ' | tr '[:upper:] ' '[:lower:]-').md"

cat << EOF > "$file"
---
layout: post
date: $dte $tme
title: $title
tags: []
author: Clément Durand
---

*Short description*

---

Content

EOF

vim "$file"
