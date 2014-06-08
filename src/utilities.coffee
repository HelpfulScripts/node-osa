#CoffeeScript utilities. These need to be included manually because they are generated outside of the function scope.
#Taken from coffee-script/lib/nodes.js

module.exports = 
	extends: 'function(child, parent) { for (var key in parent) { if ({}.hasOwnProperty.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; }'
	bind: 'function(fn, me){ return function(){ return fn.apply(me, arguments); }; }'
	indexOf: '[].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; }'
	modulo: 'function(a, b) { return (a % b + +b) % b; }'
	hasProp: '{}.hasOwnProperty'
	slice: '[].slice'