class AddCodeMultiplicationSolution {
  constructor(sumSteps, result) {
    /** An array with sum steps, 
     * where each step is an array with two terms represented in additional code.
     * @type {string[][]}
     */
    this.sumSteps = sumSteps;
    /** Multiplication result represented in additional code.
     * @type {string}
     */
    this.result = result;
  }
}

class RevCodeMultiplicationSolution {
  constructor(sumSteps, result) {
    /** An array with sum steps, 
     * where each step is an array with two terms represented in reverse code.
     * @type {string[][]}
     */
    this.sumSteps = sumSteps;
    /** Multiplication result represented in reverse code.
     * @type {string}
     */
    this.result = result;
  }
}

class BinMultiply {
  /** Multiplication in additional code with correction step.
   * @param {string} x - first term represented in additional code.
   * @param {string} y - second term represented in additional code.
   * @returns {AddCodeMultiplicationSolution}
   */
  static addCodeWithCorrection(x, y) {
    const resultBitsLength = x.length + y.length - 1;
    const sumSteps = [];
    let result = '0'.repeat(x.length);

    // Correction step.
    let correction = BinMath.negateAddCode(BinMath.multiply(true, x, y[0]));
    sumSteps.push([result, correction]);
    result = BinMath.add(true, result, correction); 
    // Sum steps.
    for (let i = 1; i < y.length; i++) {
      const term = y[i] === '0' ? '0'.repeat(result.length) : BinMath.multiplyAddCodeBy2(x, -i);
      result = result.padEnd(term.length, '0');
      sumSteps.push([result, term]);
      result = BinMath.add(true, result, term);
    }
    result = result.padEnd(resultBitsLength, '0');

    return new AddCodeMultiplicationSolution(sumSteps, result);
  }

  /** Multiplication in additional code 
   * based on the analysis of adjacent bits of the multiplier.
   * @param {string} x - first term represented in additional code.
   * @param {string} y - second term represented in additional code.
   * @returns {AddCodeMultiplicationSolution} 
   */
  static addCodeWithAdjacentBits(x, y) {
    const resultBitsLength = x.length + y.length - 1;
    const sumSteps = [];
    let result = '0'.repeat(x.length);
    y += '0';

    // Sum steps.
    for (let i = 0; i < y.length - 1; i++) {
      let term = '';
      const adjBitsDiff = parseInt(y[i+1]) - parseInt(y[i]);
      switch (adjBitsDiff) {
        case 0:
          term = '0'.repeat(result.length);
          break;
        case 1:
          term = BinMath.multiplyAddCodeBy2(x, -i);
          break;
        case -1:
          term = BinMath.negateAddCode(BinMath.multiplyAddCodeBy2(x, -i));
      }
      result = result.padEnd(term.length, '0');
      sumSteps.push([result, term]);
      result = BinMath.add(true, result, term);
    }
    result = result.padEnd(resultBitsLength, '0');

    return new AddCodeMultiplicationSolution(sumSteps, result);
  }

  /** Multiplication reverse code with correction steps.
   * @param {string} x - first term represented in reverse code.
   * @param {string} y - second term represented in reverse code.
   * @returns {RevCodeMultiplicationSolution}
   */
  static revCodeWithCorrection(x, y) {
    const resultBitsLength = x.length + y.length - 1;
    const sumSteps = [];
    let result = '0'.repeat(x.length);

    // Sum steps.
    for (let i = 1; i < y.length; i++) {
      const term = y[i] === '0' ? '0'.repeat(result.length) : BinMath.multiplyAddCodeBy2(x, -i);
      result = result.padEnd(term.length, '0');
      sumSteps.push([result, term]);
      result = BinMath.add(true, result, term);
    }
    result = result.padEnd(resultBitsLength, '0');
    // Correction step.
    if (y[0] === '1'){
      let term1 = BinMath.negateRevCode(x);
      term1 = term1.padEnd(result.length, term1[0]);
      sumSteps.push([result, term1]);
      result = BinMath.add(true, result, term1);

      const term2 = BinMath.multiplyRevCodeBy2(x, -(y.length - 1));
      sumSteps.push([result, term2]);
      result = BinMath.add(true, result, term2);
    }

    return new RevCodeMultiplicationSolution(sumSteps, result);
  }

  /** Multiplication in reverse code 
   * using negative multiplier bit conversion.
   * @param {string} x - first term represented in reverse code.
   * @param {string} y - second term represented in reverse code.
   * @returns {RevCodeMultiplicationSolution}
   */
  static revCodeWithNegativeMultiplierBitsConversion(x, y) {
    const sumSteps = [];
    let result = '0'.repeat(x.length);

    throw Error('Not implemented.');
  }
}