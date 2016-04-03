#!/usr/bin/env node
console.log('Require Coffee Script');
require('coffee-script/register');
console.log('Require run file');
require('../src/run').run(process.argv, function (code) {
  process.exitCode = code;
});
