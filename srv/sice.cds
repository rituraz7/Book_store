using {dev.book as bgs} from '../db/schema';

service BookStoreService {
    @odata.draft.enabled
    entity Book       as projection on bgs.Book;
    entity author     as projection on bgs.author;
    entity Publishers  as projection on bgs.Publishers;
}