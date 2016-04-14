# test-coffee-module@1.0.4
 [![npm version(https://badge.fury.io/js/test-coffee-module.svg)](https://npmjs.org/package/test-coffee-module)  [![build status(https://travis-ci.org/dbartholomae/test-coffee-module.svg))](https://travis-ci.org/dbartholomae/test-coffee-module)  [![coverage status(https://coveralls.io/repos/dbartholomae/test-coffee-module/badge.svg)](https://coveralls.io/github/dbartholomae/test-coffee-module)  [![dependency status(https://david-dm.org/dbartholomae/test-coffee-module.svg?theme=shields.io)](https://david-dm.org/dbartholomae/test-coffee-module)  [![devDependency status(https://david-dm.org/dbartholomae/test-coffee-module/dev-status.svg)](https://david-dm.org/dbartholomae/test-coffee-module#info=devDependencies)  [![Gitter(https://badges.gitter.im/dbartholomae/test-coffee-module.svg)](https://gitter.im/dbartholomae/test-coffee-module) 

run tests on .coffee files with sensible defaults

It loads mocha with chai's expect, sinon, sinon-chai, chai-as-promised and chai-things and runs coverage with istanbul and coffee-coverage on option '-c'

## Usage



```sh
# With all options
test-coffee-module --coverage --debug
```


## Installation
Download node at [nodejs.org](http://nodejs.org) and install it, if you haven't already.

```sh
npm install test-coffee-module --save
```

This package is provided in these module formats:

- CommonJS



## Documentation

You can find a documentation [here](https://rawgit.com/dbartholomae/test-coffee-module/master/doc/index.html).

## Dependencies

- [bluebird](https://github.com/petkaantonov/bluebird): Full featured Promises/A+ implementation with exceptionally good performance
- [chai](https://github.com/chaijs/chai): BDD/TDD assertion library for node.js and the browser. Test framework agnostic.
- [chai-as-promised](https://github.com/domenic/chai-as-promised): Extends Chai with assertions about promises.
- [chai-things](https://github.com/RubenVerborgh/Chai-Things): Chai Things adds support to [Chai](http://chaijs.com/) for assertions on array elements.
- [coffee-coverage](https://github.com/benbria/coffee-coverage): Istanbul and JSCoverage-style instrumentation for CoffeeScript files.
- [coffee-script](https://github.com/jashkenas/coffeescript): Unfancy JavaScript
- [istanbul](https://github.com/gotwarlost/istanbul): Yet another JS code coverage tool that computes statement, line, function and branch coverage with module loader hooks to transparently add coverage when running tests. Supports all JS coverage use cases including unit tests, server side functional tests 
- [mocha](https://github.com/mochajs/mocha): simple, flexible, fun test framework
- [sinon](https://github.com/cjohansen/Sinon.JS): JavaScript test spies, stubs and mocks.
- [sinon-chai](https://github.com/domenic/sinon-chai): Extends Chai with assertions for the Sinon.JS mocking framework.
- [commander](https://github.com/tj/commander.js): the complete solution for node.js command-line programs
- [winston](https://github.com/winstonjs/winston): A multi-transport async logging library for Node.js


## Dev Dependencies

- [codo](https://github.com/coffeedoc/codo): A CoffeeScript documentation generator.


## License
[MIT](LICENSE.txt)
