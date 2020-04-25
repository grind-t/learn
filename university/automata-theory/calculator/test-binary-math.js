describe('BinMath', () => {
  describe('signLeftShift', () => {
    it('1010 после сдвига влево на 2 бита с заполнением знаковым разрядом будет 1011, если переполение включено', () =>{
      assert.equal(BinMath.signLeftShift('1010', 2, true), '1011');
    });
  
    it('1010 после сдвига влево на 2 бита с заполнением знаковым разрядом будет 101011, если переполение отключено', () =>{
      assert.equal(BinMath.signLeftShift('1010', 2), '101011');
    });
  });
  
  describe('zeroLeftShift', () => {
    it('1010 после сдвига влево на 2 бита с заполнением нулем будет 1000, если переполение включено', () =>{
      assert.equal(BinMath.zeroLeftShift('1010', 2, true), '1000');
    });
  
    it('1010 после сдвига влево на 2 бита с заполнением нулем будет 101000, если переполение отключено', () =>{
      assert.equal(BinMath.zeroLeftShift('1010', 2), '101000');
    });
  });
  
  describe('signRightShift', () => {
    it('1010 после сдвига вправо на 2 бита с заполнением знаковым битом будет 1110, если переполение включено', () =>{
      assert.equal(BinMath.signRightShift('1010', 2, true), '1110');
    });
  
    it('1010 после сдвига вправо на 2 бита с заполнением знаковым битом будет 111010, если переполение отключено', () =>{
      assert.equal(BinMath.signRightShift('1010', 2), '111010');
    });
  });
  
  describe('zeroRightShift', () => {
    it('1010 после сдвига вправо на 2 бита с заполнением нулем будет 0010, если переполение включено', () =>{
      assert.equal(BinMath.zeroRightShift('1010', 2, true), '0010');
    });
  
    it('1010 после сдвига вправо на 2 бита с заполнением нулем будет 001010, если переполение отключено', () =>{
      assert.equal(BinMath.zeroRightShift('1010', 2), '001010');
    });
  });
  
  describe('invert', () => {
    it('~01010 будет 10101', () => {
      assert.equal(BinMath.invert('01010'), '10101');
    });
  });
  
  describe('add', () => {
    it('1111 + 11 будет 0010, если переполнение включено', () => {
      assert.equal(BinMath.add(true, '1111', '11'), '0010');
    });
  
    it('1111 + 11 будет 10010, если переполнение отключено', () => {
      assert.equal(BinMath.add(false, '1111', '11'), '10010');
    });
  });
  
  describe('multiply', () => {
    it('11 * 11 будет 01, если переполнение включено', () => {
      assert.equal(BinMath.multiply(true, '11', '11'), '01');
    });
  
    it('11 * 11 будет 1001, если переполнение отключено', () => {
      assert.equal(BinMath.multiply(false, '11', '11'), '1001');
    });
  });
  
  describe('toRevCode', () => {
    it('01010 в п.к. будет 01010 в о.к.', () => {
      assert.equal(BinMath.toRevCode('01010'), '01010');
    });
  
    it('11010 в п.к. будет 10101 о.к.', () => {
      assert.equal(BinMath.toRevCode('11010'), '10101');
    });
  });
  
  describe('toAddCode', () => {
    it('01010 в п.к. будет 01010 в д.к.', () => {
      assert.equal(BinMath.toAddCode('01010'), '01010');
    });
  
    it('11010 в п.к. будет 10110 в д.к.', () => {
      assert.equal(BinMath.toAddCode('11010'), '10110');
    });
  });
  
  describe('negateDirCode', () => {
    it('-1010 в п.к. будет 0010 в п.к.', () => {
      assert.equal(BinMath.negateDirCode('1010'), '0010');
    });
  
    it('-0101 в п.к. будет 1101 в п.к.', () => {
      assert.equal(BinMath.negateDirCode('0101'), '1101');
    });
  });
  
  describe('negateRevCode', () => {
    it('-1010 в о.к. будет 0101 в о.к.', () => {
      assert.equal(BinMath.negateRevCode('1010'), '0101');
    });
  
    it('-0101 в о.к. будет 1010 в о.к.', () => {
      assert.equal(BinMath.negateRevCode('0101'), '1010');
    });
  });
  
  describe('negateAddCode', () => {
    it('-1010 в д.к. будет 0110 в д.к.', () => {
      assert.equal(BinMath.negateAddCode('1010'), '0110');
    });
  
    it('-0101 в д.к. будет 1011 в д.к.', () => {
      assert.equal(BinMath.negateAddCode('0101'), '1011')
    });
  });
  
  describe('multiplyDirCodeBy2', () => {
    it('1010 умножить на 2^2, будет 1000, если переполение включено', () =>{
      assert.equal(BinMath.multiplyDirCodeBy2('1010', 2, true), '1000');
    });
  
    it('1010 умножить на 2^2, будет 101000, если переполение отключено', () =>{
      assert.equal(BinMath.multiplyDirCodeBy2('1010', 2), '101000');
    });
  
    it('1010 умножить на 2^(-2), будет 0010, если переполение включено', () =>{
      assert.equal(BinMath.multiplyDirCodeBy2('1010', -2, true), '0010');
    });
  
    it('1010 умножить на 2^(-2), будет 001010, если переполение отключено', () =>{
      assert.equal(BinMath.multiplyDirCodeBy2('1010', -2), '001010');
    });
  });
  
  describe('multiplyRevCodeBy2', () => {
    it('1010 умножить на 2^2, будет 1011, если переполение включено', () =>{
      assert.equal(BinMath.multiplyRevCodeBy2('1010', 2, true), '1011');
    });
  
    it('1010 умножить на 2^2, будет 101011, если переполение отключено', () =>{
      assert.equal(BinMath.multiplyRevCodeBy2('1010', 2), '101011');
    });
  
    it('1010 умножить на 2^(-2), будет 1110, если переполение включено', () =>{
      assert.equal(BinMath.multiplyRevCodeBy2('1010', -2, true), '1110');
    });
  
    it('1010 умножить на 2^(-2), будет 111010, если переполение отключено', () =>{
      assert.equal(BinMath.multiplyRevCodeBy2('1010', -2), '111010');
    });
  });
  
  describe('multiplyAddCodeBy2', () => {
    it('1010 умножить на 2^2, будет 1000, если переполение включено', () =>{
      assert.equal(BinMath.multiplyAddCodeBy2('1010', 2, true), '1000');
    });
  
    it('1010 умножить на 2^2, будет 101000, если переполение отключено', () =>{
      assert.equal(BinMath.multiplyAddCodeBy2('1010', 2), '101000');
    });
  
    it('1010 умножить на 2^(-2), будет 1110, если переполение включено', () =>{
      assert.equal(BinMath.multiplyAddCodeBy2('1010', -2, true), '1110');
    });
  
    it('1010 умножить на 2^(-2), будет 111010, если переполение отключено', () =>{
      assert.equal(BinMath.multiplyAddCodeBy2('1010', -2), '111010');
    });
  });

  describe('dirCodeToInt', () => {
    it('110 в п.к. будет -2 в десятичной.', () => {
      assert.equal(BinMath.dirCodeToInt('110'), -2);
    });

    it('010 в п.к. будет 2 в десятичной.', () => {
      assert.equal(BinMath.dirCodeToInt('010'), 2);
    });

    it('1 в п.к. будет 1 в десятичной.', () => {
      assert.equal(BinMath.dirCodeToInt('1'), 1);
    });
  });

  describe('revCodeToInt', () => {
    it('110 в о.к. будет -1 в десятичной.', () => {
      assert.equal(BinMath.revCodeToInt('110'), -1);
    });

    it('010 в о.к. будет 2 в десятичной.', () => {
      assert.equal(BinMath.revCodeToInt('010'), 2);
    });

    it('1 в о.к. будет 1 в десятичной.', () => {
      assert.equal(BinMath.revCodeToInt('1'), 1);
    });
  });

  describe('addCodeToInt', () => {
    it('110 в д.к. будет -2 в десятичной.', () => {
      assert.equal(BinMath.addCodeToInt('110'), -2);
    });

    it('010 в д.к. будет 2 в десятичной.', () => {
      assert.equal(BinMath.addCodeToInt('010'), 2);
    });

    it('1 в д.к. будет 1 в десятичной.', () => {
      assert.equal(BinMath.addCodeToInt('1'), 1);
    });
  });
});