class BooksModel {
  String bookTitle;
  String bookWriter;
  String bookDiscription;
  String bookimage;

  BooksModel(
      {required this.bookTitle,
      required this.bookWriter,
      required this.bookDiscription,
      required this.bookimage});
}

List<BooksModel> listofBooks = [
  BooksModel(
      bookTitle: 'Physics',
      bookWriter: 'Dipesh Ghimire',
      bookDiscription:
          'Physics is the natural science that studies matter, its fundamental constituents, its motion and behavior through space and time, and the related entities of energy and force. Physics is one of the most fundamental scientific disciplines, with its main goal being to understand how the universe behaves. ',
      bookimage: 'assets/physics.PNG'),
  BooksModel(
      bookTitle: 'Science',
      bookWriter: 'Sudip koirala',
      bookDiscription:
          'Science is a systematic enterprise that builds and organizes knowledge in the form of testable explanations and predictions about the universe ',
      bookimage: 'assets/science.PNG'),
  BooksModel(
      bookTitle: 'Chemistry',
      bookWriter: 'Ashish',
      bookDiscription:
          'Chemistry is the scientific study of the properties and behavior of matter. It is a natural science that covers the elements that make up matter to the compounds composed of atoms, molecules and ions',
      bookimage: 'assets/chemistry.PNG'),
  BooksModel(
      bookTitle: 'Math',
      bookWriter: 'Pratyash',
      bookDiscription:
          'Mathematics is an area of knowledge that includes such topics as numbers, formulas and related structures, shapes and the spaces in which they are contained, and quantities and their changes. Most mathematical activity involves discovering and proving properties of abstract objects by pure reasoning',
      bookimage: 'assets/math.PNG')
];
