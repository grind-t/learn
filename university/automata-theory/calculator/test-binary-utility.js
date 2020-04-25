describe('BinUtil', () => {
  describe('separateSignBit', () => {
    it('110 после разделения знакового разряда точкой будет 1.10', () => {
      assert.equal(BinUtil.separateSignBit('110', '.'), '1.10');
    });

    it('0 после разделения знакового разряда точкой будет 0', () => {
      assert.equal(BinUtil.separateSignBit('0', '.'), '0');
    });
  });

  describe('signBitToSign', () => {
    it('110 после конвертации знакого разряда в знак будет -010', () => {
      assert.equal(BinUtil.signBitToSign('110'), '-010');
    });

    it('010 после конвертации знакого разряда в знак будет 010', () => {
      assert.equal(BinUtil.signBitToSign('010'), '010');
    });

    it('1 после конвертации знакого разряда в знак будет 1', () => {
      assert.equal(BinUtil.signBitToSign('1'), '1');
    });
  });
});