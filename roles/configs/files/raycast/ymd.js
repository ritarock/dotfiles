#!/usr/bin/env node

// Required parameters:
// @raycast.schemaVersion 1
// @raycast.title ymd
// @raycast.mode compact

// Optional parameters:
// @raycast.icon 🤖

const ymd = () => {
  const dt = new Date()
  const yyyy = dt.getFullYear()
  const mm = ("0" + (dt.getMonth() + 1)).slice(-2)
  const dd = ("0" + dt.getDate()).slice(-2)

  return `${yyyy}${mm}${dd}`
}

console.log(ymd())
