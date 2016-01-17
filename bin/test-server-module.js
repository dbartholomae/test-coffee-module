#!/usr/bin/env node
require('coffee-script/register');
require('../src/run').run(process.argv, function (code) {
  process.exitCode = code;
});
