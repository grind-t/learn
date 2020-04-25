#include "ComplexNumber.h"

ComplexNumber::ComplexNumber() : a(0.0), b(0.0) {

}

ComplexNumber::ComplexNumber(double Rez, double Imz) : a(Rez), b(Imz) {

}

// Формула: https://www.fxyz.ru/%D1%84%D0%BE%D1%80%D0%BC%D1%83%D0%BB%D1%8B_%D0%BF%D0%BE_%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B5/%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D0%B5_%D1%87%D0%B8%D1%81%D0%BB%D0%B0/%D1%81%D0%BB%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5_%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D1%85_%D1%87%D0%B8%D1%81%D0%B5%D0%BB/
ComplexNumber ComplexNumber::operator+ (const ComplexNumber& c) const {
	return ComplexNumber(a + c.a, b + c.b);
}

// Формула: https://www.fxyz.ru/%D1%84%D0%BE%D1%80%D0%BC%D1%83%D0%BB%D1%8B_%D0%BF%D0%BE_%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B5/%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D0%B5_%D1%87%D0%B8%D1%81%D0%BB%D0%B0/%D0%B2%D1%8B%D1%87%D0%B8%D1%82%D0%B0%D0%BD%D0%B8%D0%B5_%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D1%85_%D1%87%D0%B8%D1%81%D0%B5%D0%BB/
ComplexNumber ComplexNumber::operator- (const ComplexNumber& c) const {
	return ComplexNumber(a - c.a, b - c.b);
}

// Формула: https://www.fxyz.ru/%D1%84%D0%BE%D1%80%D0%BC%D1%83%D0%BB%D1%8B_%D0%BF%D0%BE_%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B5/%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D0%B5_%D1%87%D0%B8%D1%81%D0%BB%D0%B0/%D1%83%D0%BC%D0%BD%D0%BE%D0%B6%D0%B5%D0%BD%D0%B8%D0%B5_%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D1%85_%D1%87%D0%B8%D1%81%D0%B5%D0%BB/
ComplexNumber ComplexNumber::operator* (const ComplexNumber& c) const {
	return ComplexNumber(a * c.a - b * c.b, a * c.b + b * c.a);
}

// Формула: https://www.fxyz.ru/%D1%84%D0%BE%D1%80%D0%BC%D1%83%D0%BB%D1%8B_%D0%BF%D0%BE_%D0%BC%D0%B0%D1%82%D0%B5%D0%BC%D0%B0%D1%82%D0%B8%D0%BA%D0%B5/%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D0%B5_%D1%87%D0%B8%D1%81%D0%BB%D0%B0/%D0%B4%D0%B5%D0%BB%D0%B5%D0%BD%D0%B8%D0%B5_%D0%BA%D0%BE%D0%BC%D0%BF%D0%BB%D0%B5%D0%BA%D1%81%D0%BD%D1%8B%D1%85_%D1%87%D0%B8%D1%81%D0%B5%D0%BB/
ComplexNumber ComplexNumber::operator/ (const ComplexNumber& c) const {
	return ComplexNumber((a * c.a + b * c.b) / (c.a * c.a + c.b * c.b), (c.a * b - c.b * a) / (c.a * c.a + c.b * c.b));
}

ostream& operator<< (ostream& out, const ComplexNumber& c){
	out << c.a << "+" << c.b << "i";
	return out;
}

istream& operator>> (istream& in, ComplexNumber& c){
	cout << "a: ";
	in >> c.a;
	cout << "b: ";
	in >> c.b;
	return in;
}
