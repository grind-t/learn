describe('BinMultiply', () => {
  describe('addCodeWithCorrection', () => {
    it('01001 в д.к. * 10011 в д.к. будет 110001011 в д.к.', () => {
      const solution = BinMultiply.addCodeWithCorrection('01001', '10011');
      const correction = solution.sumSteps[0][1];
      assert.equal(correction, '10111');
      assert.equal(solution.result, '110001011');
    });
  
    it('10111 в д.к. * 01101 в д.к. будет 110001011 в д.к.', () => {
      const solution = BinMultiply.addCodeWithCorrection('10111', '01101');
      const correction = solution.sumSteps[0][1];
      assert.equal(correction, '00000');
      assert.equal(solution.result, '110001011');
    });

    it('010 в д.к. * 010 в д.к. будет 0100 в д.к.', () => {
      const solution = BinMultiply.addCodeWithCorrection('010', '010');
      const correction = solution.sumSteps[0][1];
      assert.equal(correction, '000');
      assert.equal(solution.result, '00100');
    });

    it('0000 в д.к. * 0000 в д.к. будет 0000000 в д.к.', () => {
      const solution = BinMultiply.addCodeWithCorrection('0000', '0000');
      const correction = solution.sumSteps[0][1];
      assert.equal(correction, '0000');
      assert.equal(solution.result, '0000000');
    });
  });

  describe('addCodeWithAdjacentBits', () => {
    it('10111 в д.к. * 10011 в д.к. будет 001110101 в д.к.', () => {
      const solution = BinMultiply.addCodeWithAdjacentBits('10111', '10011');
      assert.equal(solution.result, '001110101');
    });
  
    it('01001 в д.к. * 01101 в д.к. будет 001110101 в д.к.', () => {
      const solution = BinMultiply.addCodeWithAdjacentBits('01001', '01101');
      assert.equal(solution.result, '001110101');
    });

    it('010 в д.к. * 010 в д.к. будет 0100 в д.к.', () => {
      const solution = BinMultiply.addCodeWithCorrection('010', '010');
      const correction = solution.sumSteps[0][1];
      assert.equal(correction, '000');
      assert.equal(solution.result, '00100');
    });

    it('0000 в д.к. * 0000 в д.к. будет 0000000 в д.к.', () => {
      const solution = BinMultiply.addCodeWithAdjacentBits('0000', '0000');
      assert.equal(solution.result, '0000000');
    });
  });

  describe('revCodeWithCorrection', () => {
    it('0101 в о.к. * 0100 в о.к. будет 0010100 в о.к.', () => {
      const solution = BinMultiply.revCodeWithCorrection('0101', '0100');
      assert.equal(solution.result, '0010100');
    });
  
    it('0101 в о.к. * 1100 в о.к. будет 1110000 в о.к.', () => {
      const solution = BinMultiply.revCodeWithCorrection('0101', '1100');
      assert.equal(solution.result, '1110000');
    });

    it('0000 в о.к. * 0000 в о.к. будет 0000000 в о.к.', () => {
      const solution = BinMultiply.revCodeWithCorrection('0000', '0000');
      assert.equal(solution.result, '0000000');
    });
  });

  describe('revCodeWithNegativeMultiplierBitsConversion', () => {
    it('0101 в о.к. * 1100 в о.к. будет 1110000 в о.к.', () => {
      const solution = BinMultiply.revCodeWithNegativeMultiplierBitsConversion('0101', '1100');
      assert.equal(solution.result, '1110000');
    });
  });
});