using my.bookshop as my from '../db/data-model';

service CatalogService {
    entity Books as projection on my.Books actions {
        action setRating_Bound(rating :           Integer) returns Books;
        function isBookBetternthan_Bound(rating : Integer) returns Boolean;
    };

    function getBooksBetterThan_Unbound(greaterThan : Integer) returns many Books;
    action setRatingBound_Unbound(bookID : Integer, rating : Integer) returns Books;
}
