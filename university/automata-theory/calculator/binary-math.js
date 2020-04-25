class BinMath {
  /** Shifts bits to the left, shifting in sign bits from the right.
   * @param {string} binNumber - Binary number to shift.
   * @param {number} numberOfBits - Number of bits to shift.
   * @param {boolean} overflow - If true, then left-shifted bits are truncated.
   * @returns {string} Shifted binary number.
   * @example
   * // Returns '101011'.
   * BinMath.signLeftShift('1010', 2);
   * // Returns BinNumber('1011').
   * BinMath.signLeftShift('1010', 2, true);
  */
  static signLeftShift(binNumber, numberOfBits, overflow = false) {
    if (numberOfBits <= 0) return binNumber;
    const result = binNumber + binNumber[0].repeat(numberOfBits);
    return overflow ? result.slice(-binNumber.length) : result;
  }

  /** Shifts bits to the left, shifting in zeroes from the right. 
   * @param {string} binNumber - Binary number to shift.
   * @param {number} numberOfBits - Number of bits to shift.
   * @param {boolean} overflow - If true, then left-shifted bits are truncated.
   * @returns {string} Shifted binary number.
   * @example
   * // Returns '101000'.
   * BinMath.zeroLeftShift('1010', 2);
   * // Returns '1000'.
   * BinMath.zeroLeftShift('1010', 2, true);
  */
  static zeroLeftShift(binNumber, numberOfBits, overflow = false) {
    if (numberOfBits <= 0) return binNumber;
    const result = binNumber + '0'.repeat(numberOfBits);
    return overflow ? result.slice(-binNumber.length) : result;
  }

  /** Shifts bits to the right, shifting in sign bits from the left. 
   * @param {string} binNumber - Binary number to shift.
   * @param {number} numberOfBits - Number of bits to shift.
   * @param {boolean} overflow - If true, then right-shifted bits are truncated.
   * @returns {string} Shifted binary number.
   * @example
   * // Returns '111010'.
   * BinMath.signRightShift('1010', 2);
   * // Returns '1110'.
   * BinMath.signRightShift('1010', 2, true);
  */
  static signRightShift(binNumber, numberOfBits, overflow = false) {
    if (numberOfBits <= 0) return binNumber;
    const result = binNumber[0].repeat(numberOfBits) + binNumber;
    return overflow ? result.slice(0, binNumber.length) : result;
  }

  /** Shifts bits to the right, shifting in zeroes from the left. 
   * @param {string} binNumber - Binary number to shift.
   * @param {number} numberOfBits - Number of bits to shift.
   * @param {boolean} overflow - If true, then right-shifted bits are truncated.
   * @returns {string} Shifted binary number.
   * @example
   * // Returns '001010'.
   * BinMath.zeroRightShift('1010', 2);
   * // Returns '0010'.
   * BinMath.zeroRightShift('1010', 2, true);
  */
  static zeroRightShift(binNumber, numberOfBits, overflow = false) {
    if (numberOfBits <= 0) return binNumber;
    const result = '0'.repeat(numberOfBits) + binNumber;
    return overflow ? result.slice(0, binNumber.length) : result;
  }

  /** Invert all bits.
   * @param {string} bits - Sequence of zeros and ones.
   * @returns {string} Inverted bits.
   */
  static invert(bits) {
    return Array.prototype.map.call(bits, bit => bit === '1' ? '0' : '1').join('');
  }

  /** Addition of binary numbers.
   * @param {boolean} overflow - If set, overflow may occur during addition.
   * @param {string[]} binNumbers - Terms.
   * @returns {string} Sum of binary numbers.
   * @example
   * // Returns '0000'.
   * BinMath.add(true, '1100', '0011', '1');
   * // Returns '10000'.
   * BinMath.add(false, '1100', '0011', '1');
   */
  static add(overflow, ...binNumbers) {
    const maxBits = Math.max(...binNumbers.map(binNumber => binNumber.length));
    const sum = binNumbers.reduce((sum, binNumber) => sum + parseInt(binNumber, 2), 0);
    const binSum = sum.toString(2).padStart(maxBits, '0');
    return overflow ? binSum.slice(-maxBits) : binSum;
  }

  /** Multiplication of binary numbers.
   * @param {boolean} overflow - If set, overflow may occur during multiplication.
   * @param {string[]} binNumbers - Factors.
   * @returns {string} Product of binary numbers.
   * @example
   * // Returns '10'.
   * BinMath.multiply(true, '1', '11', '10');
   * // Returns '110'.
   * BinMath.multiply(false, '1', '11', '10');
   */
  static multiply(overflow, ...binNumbers) {
    const maxBits = Math.max(...binNumbers.map(binNumber => binNumber.length));
    const product = binNumbers.reduce((product, binNumber) => product * parseInt(binNumber, 2), 1);
    const binProduct = product.toString(2).padStart(maxBits, '0');
    return overflow ? binProduct.slice(-maxBits) : binProduct;
  }

  /** Convert binary number to reverse code and vice versa. */
  static toRevCode(binNumber) {
    if (binNumber[0] === '0') return binNumber;
    return binNumber[0] + this.invert(binNumber.slice(1));
  }

  /** Convert binary number to additional code and vice versa. */
  static toAddCode(binNumber) {
    if (binNumber[0] === '0') return binNumber;
    return this.add(true, this.toRevCode(binNumber), '1');
  }

  /** Returns negative binNumber, assuming that it is represented in direct code. */
  static negateDirCode(binNumber) {
    return this.invert(binNumber[0]) + binNumber.slice(1);
  }

  /** Returns negative binNumber, assuming that it is represented in reverse code. */
  static negateRevCode(binNumber) {
    const dirCode = this.toRevCode(binNumber);
    return this.toRevCode(this.negateDirCode(dirCode));
  }

  /** Returns negative binNumber, assuming that it is represented in additional code. */
  static negateAddCode(binNumber) {
    const dirCode = this.toAddCode(binNumber);
    return this.toAddCode(this.negateDirCode(dirCode));
  }

  /** Multiplies direct code by 2 raised to the powerOf2.
   * @param {string} binNumber - Binary number in direct code to multiply.
   * @param {number} powerOf2 - The number used to raise 2.
   * @param {boolean} overflow - If true, then overflow may occur during multiplication.
   * @returns {string} Product in direct code.
   */
  static multiplyDirCodeBy2(binNumber, powerOf2, overflow = false) {
    return powerOf2 < 0 ?
           this.zeroRightShift(binNumber, Math.abs(powerOf2), overflow) :
           this.zeroLeftShift(binNumber, powerOf2, overflow);
  }

  /** Multiplies reverse code by 2 raised to the powerOf2.
   * @param {string} binNumber - Binary number in reverse code to multiply.
   * @param {number} powerOf2 - The number used to raise 2.
   * @param {boolean} overflow - If true, then overflow may occur during multiplication.
   * @returns {string} Product in reverse code.
   */
  static multiplyRevCodeBy2(binNumber, powerOf2, overflow = false) {
    return powerOf2 < 0 ?
           this.signRightShift(binNumber, Math.abs(powerOf2), overflow) :
           this.signLeftShift(binNumber, powerOf2, overflow);
  }

  /** Multiplies additional code by 2 raised to the powerOf2.
   * @param {string} binNumber - Binary number in additional code to multiply.
   * @param {number} powerOf2 - The number used to raise 2.
   * @param {boolean} overflow - If true, then overflow may occur during multiplication.
   * @returns {string} Product in additional code.
   */
  static multiplyAddCodeBy2(binNumber, powerOf2, overflow = false) {
    return powerOf2 < 0 ?
           this.signRightShift(binNumber, Math.abs(powerOf2), overflow) :
           this.zeroLeftShift(binNumber, powerOf2, overflow);
  }

  /** Converts a direct code to integer.
   * @param {string} binNumber - Binary number represented in direct code.
   * @returns {number} Integer.
   * If binNumber.length < 2, then returns binNumber.
   */
  static dirCodeToInt(binNumber) {
    if (binNumber.length < 2) return binNumber;
    const sign = binNumber[0] === '1' ? -1 : 1;
    const uint = parseInt(binNumber.slice(1), 2);
    return sign * uint;
  }

  /** Converts a reverse code to integer.
   * @param {string} binNumber - Binary number represented in reverse code.
   * @returns {number} Integer.
   * If binNumber.length < 2, then returns binNumber.
   */
  static revCodeToInt(binNumber) {
    if (binNumber.length < 2) return binNumber;
    return this.dirCodeToInt(this.toRevCode(binNumber));
  }

  /** Converts an additional code to integer.
   * @param {string} binNumber - Binary number represented in additional code.
   * @returns {number} Integer.
   * If binNumber.length < 2, then returns binNumber.
   */
  static addCodeToInt(binNumber) {
    if (binNumber.length < 2) return binNumber;
    return this.dirCodeToInt(this.toAddCode(binNumber));
  }
}