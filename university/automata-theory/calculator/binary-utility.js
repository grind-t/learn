class BinUtil {
  /** Inserts a separator between the sign bit and the remaining bits.
   * @param {string} binNumber - Binary number for separation.
   * @param {string} separator - Separator between the sign bit and the remaining bits.
   * @returns {string} Separated binary number.
   * If binNumber.length < 2 returns binNumber.
   * @example
   * // Returns '1.10'.
   * BinUtil.separateSignBit('110', '.');
   */
  static separateSignBit(binNumber, separator) {
    if (binNumber.length < 2) return binNumber;
    return binNumber[0] + separator + binNumber.slice(1);
  }

  /** Converts sign bit to sign in binary number.
   * @param {string} binNumber - Binary number for conversion.
   * @returns {string} Binary number with converted sign bit.
   * If binNumber.length < 2 returns binNumber.
   * @example
   * // Returns '-010'.
   * BinUtil.signBitToSign('110');
   */
  static signBitToSign(binNumber) {
    if (binNumber.length < 2) return binNumber;
    const sign = binNumber[0] === '1' ? '-0' : '0';
    return sign + binNumber.slice(1);
  }
}