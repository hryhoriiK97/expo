// Copyright Joyent, Inc. and other Node contributors.
//
// Permission is hereby granted, free of charge, to any person obtaining a
// copy of this software and associated documentation files (the
// "Software"), to deal in the Software without restriction, including
// without limitation the rights to use, copy, modify, merge, publish,
// distribute, sublicense, and/or sell copies of the Software, and to permit
// persons to whom the Software is furnished to do so, subject to the
// following conditions:
//
// The above copyright notice and this permission notice shall be included
// in all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
// OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
// MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN
// NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
// DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
// OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE
// USE OR OTHER DEALINGS IN THE SOFTWARE.

import { resolve, sep } from './path';

const percentRegEx = /%/g;
const backslashRegEx = /\\/g;
const newlineRegEx = /\n/g;
const carriageReturnRegEx = /\r/g;
const tabRegEx = /\t/g;
const questionRegex = /\?/g;
const hashRegex = /#/g;
const spaceRegEx = / /g;

function encodePathChars(filepath: string) {
  if (filepath.indexOf('%') !== -1) filepath = filepath.replace(percentRegEx, '%25');
  // In posix, backslash is a valid character in paths:
  if (filepath.indexOf('\\') !== -1) filepath = filepath.replace(backslashRegEx, '%5C');
  if (filepath.indexOf('\n') !== -1) filepath = filepath.replace(newlineRegEx, '%0A');
  if (filepath.indexOf('\r') !== -1) filepath = filepath.replace(carriageReturnRegEx, '%0D');
  if (filepath.indexOf('\t') !== -1) filepath = filepath.replace(tabRegEx, '%09');
  if (filepath.indexOf(' ') !== -1) filepath = filepath.replace(spaceRegEx, '%20');
  return filepath;
}

export function encodeURLChars(path: string) {
  let resolved = resolve(path);
  // path.resolve strips trailing slashes so we must add them back
  const filePathLast = path.charAt(path.length - 1);
  if (filePathLast === '/' && resolved[resolved.length - 1] !== sep) resolved += '/';

  // Call encodePathChars first to avoid encoding % again for ? and #.
  resolved = encodePathChars(resolved);

  // Question and hash character should be included in pathname.
  // Therefore, encoding is required to eliminate parsing them in different states.
  // This is done as an optimization to not creating a URL instance and
  // later triggering pathname setter, which impacts performance
  if (resolved.indexOf('?') !== -1) resolved = resolved.replace(questionRegex, '%3F');
  if (resolved.indexOf('#') !== -1) resolved = resolved.replace(hashRegex, '%23');
  return resolved;
}

export function isUrl(url: string) {
  try {
    return !!new URL(url);
  } catch (error) {
    return false;
  }
}

export function asUrl(url: string | URL) {
  try {
    const newUrl = new URL(url);
    newUrl.hash = '';
    return newUrl;
  } catch (error) {
    return null;
  }
}
