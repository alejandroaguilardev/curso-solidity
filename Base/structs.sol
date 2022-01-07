pragma solidity >= 0.8.1;


contract structs {
    struct Libro {
        string titulo;
        string tema;
        uint id_libro;
        string autor;
    }

    Libro libro;

    function setBook() public {
        libro = Libro('Curso solidity por eric', 'Solidity', 1, 'Eric'); 
    }

    function getBookId() public view returns(string memory){
        return libro.autor;
    }
}