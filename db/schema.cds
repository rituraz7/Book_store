namespace dev.book;
using {cuid,managed,Currency} from '@sap/cds/common';

type isbn : String(14); //custom type
type Price: Decimal(9,2);

//book entity 

entity Book:managed,cuid {
    key ID: UUID;
    Title  : String;
    isbn   : isbn;
    Price  : Price;
    amount : Currency;
};
 
entity author: cuid, managed{
    key ID    : UUID;
    name      : String;
    address   : String;
    biography : String;
    Book      : Association to Book;
}

entity Publishers : cuid, managed {
  name         : String(100);
  location     : String(100);
  book       : Association to Book;
}
