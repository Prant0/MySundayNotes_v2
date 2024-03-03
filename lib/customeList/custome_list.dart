List newListt = [
  "https://apis.mysundaynotes.com/apis/categories/1-Peter.png",
  "https://apis.mysundaynotes.com/apis/categories/Titus.png"
];

class ChapterModel {
  dynamic? id;
  String? title, image;

  ChapterModel({
    this.id,
    this.title,
    this.image,
  });
}

class NewTastamentModel {
  dynamic? id;
  String? name, image, details;
  List? chapterList;

  NewTastamentModel(
      {this.id, this.name, this.image, this.details, this.chapterList});
}

List<NewTastamentModel> newTastamentList = [
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Acts.png",
      id: "6739",
      name: "Acts",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-1.png",
          id: "56973",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-2.png",
          id: "56975",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-3.png",
          id: "56977",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-4.png",
          id: "56979",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-5.png",
          id: "56981",
        ),
        ChapterModel(
          title: "Chapter 6",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-6.png",
          id: "56983",
        ),
        ChapterModel(
          title: "Chapter 7",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-7.png",
          id: "56985",
        ),
        ChapterModel(
          title: "Chapter 8",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-8.png",
          id: "56987",
        ),
        ChapterModel(
          title: "Chapter 9",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-9.png",
          id: "56989",
        ),
        ChapterModel(
          title: "Chapter 10",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-10.png",
          id: "56991",
        ),
        ChapterModel(
          title: "Chapter 11",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-11.png",
          id: "56993",
        ),
        ChapterModel(
          title: "Chapter 12",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-12.png",
          id: "56995",
        ),
        ChapterModel(
          title: "Chapter 13",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-13.png",
          id: "56997",
        ),
        ChapterModel(
          title: "Chapter 14",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-14.png",
          id: "56999",
        ),
        ChapterModel(
          title: "Chapter 15",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-15.png",
          id: "57001",
        ),
        ChapterModel(
          title: "Chapter 16",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-16.png",
          id: "57003",
        ),
        ChapterModel(
          title: "Chapter 17",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-17.png",
          id: "57005",
        ),
        ChapterModel(
          title: "Chapter 18",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-18.png",
          id: "57007",
        ),
        ChapterModel(
          title: "Chapter 19",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-19.png",
          id: "57009",
        ),
        ChapterModel(
          title: "Chapter 20",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-20.png",
          id: "57011",
        ),
        ChapterModel(
          title: "Chapter 21",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-21.png",
          id: "57013",
        ),
        ChapterModel(
          title: "Chapter 22",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-22.png",
          id: "57015",
        ),
        ChapterModel(
          title: "Chapter 23",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-23.png",
          id: "57017",
        ),
        ChapterModel(
          title: "Chapter 24",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-24.png",
          id: "57019",
        ),
        ChapterModel(
          title: "Chapter 25",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-25.png",
          id: "57021",
        ),
        ChapterModel(
          title: "Chapter 26",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-26.png",
          id: "57023",
        ),
        ChapterModel(
          title: "Chapter 27",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-27.png",
          id: "57025",
        ),
        ChapterModel(
          title: "Chapter 28",
          image: "https://apis.mysundaynotes.com/apis/categories/Acts-28.png",
          id: "57027",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Colossians.png",
      id: "7311",
      name: "Colossians",
      details: "",
      chapterList: [
        ChapterModel(
          id: "57029",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Colossians-1.png",
          title: "Chapter 1",
        ),
        ChapterModel(
          id: "57057",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Colossians-2.png",
          title: "Chapter 2",
        ),
        ChapterModel(
          id: "57079",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Colossians-3.png",
          title: "Chapter 3",
        ),
        ChapterModel(
          id: "57102",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Colossians-4.png",
          title: "Chapter 4",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/1-Corinthians.png",
      id: "6824",
      name: "1 Corinthians",
      details: "",
      chapterList: [
        ChapterModel(
            title: "Chapter 1",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-1.png",
            id: "57133"),
        ChapterModel(
            title: "Chapter 2",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-2.png",
            id: "57135"),
        ChapterModel(
            title: "Chapter 3",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-3.png",
            id: "57137"),
        ChapterModel(
            title: "Chapter 4",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-4.png",
            id: "57143"),
        ChapterModel(
            title: "Chapter 5",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-5.png",
            id: "57147"),
        ChapterModel(
            title: "Chapter 6",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-6.png",
            id: "57149"),
        ChapterModel(
            title: "Chapter 7",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-7.png",
            id: "57158"),
        ChapterModel(
            title: "Chapter 8",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-8.png",
            id: "57160"),
        ChapterModel(
            title: "Chapter 9",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-9.png",
            id: "57165"),
        ChapterModel(
            title: "Chapter 10",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-10.png",
            id: "57133"),
        ChapterModel(
            title: "Chapter 11",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-11.png",
            id: "57169"),
        ChapterModel(
            title: "Chapter 12",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-12.png",
            id: "57171"),
        ChapterModel(
            title: "Chapter 13",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-13.png",
            id: "57173"),
        ChapterModel(
            title: "Chapter 14",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-14.png",
            id: "57175"),
        ChapterModel(
            title: "Chapter 15",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-15.png",
            id: "57177"),
        ChapterModel(
            title: "Chapter 16",
            image:
                "https://apis.mysundaynotes.com/apis/categories/1-Corinthians-16.png",
            id: "57179"),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/2-Corinthians.png",
      id: "10864",
      name: "2 Corinthians",
      details: "",
      chapterList: [
        ChapterModel(
            title: "Chapter 1",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-1.png",
            id: "57328"),
        ChapterModel(
            title: "Chapter 2",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-2.png",
            id: "57330"),
        ChapterModel(
            title: "Chapter 3",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-3.png",
            id: "57332"),
        ChapterModel(
            title: "Chapter 4",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-4.png",
            id: "57334"),
        ChapterModel(
            title: "Chapter 5",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-5.png",
            id: "57336"),
        ChapterModel(
            title: "Chapter 6",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-6.png",
            id: "57338"),
        ChapterModel(
            title: "Chapter 7",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-7.png",
            id: "57340"),
        ChapterModel(
            title: "Chapter 8",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-8.png",
            id: "57342"),
        ChapterModel(
            title: "Chapter 9",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-9.png",
            id: "57344"),
        ChapterModel(
            title: "Chapter 10",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-10.png",
            id: "57346"),
        ChapterModel(
            title: "Chapter 11",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-11.png",
            id: "57348"),
        ChapterModel(
            title: "Chapter 12",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-12.png",
            id: "57350"),
        ChapterModel(
            title: "Chapter 13",
            image:
                "https://apis.mysundaynotes.com/apis/categories/2-Corinthians-13.png",
            id: "57352"),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Ephesians.png",
      id: "7226",
      name: "Ephesians",
      details: "",
      chapterList: [
        ChapterModel(
            id: "57181",
            title: "Chapter 1",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Ephesians-1.png"),
        ChapterModel(
            id: "57202",
            title: "Chapter 2",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Ephesians-2.png"),
        ChapterModel(
            id: "57220",
            title: "Chapter 3",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Ephesians-3.png"),
        ChapterModel(
            id: "57243",
            title: "Chapter 4",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Ephesians-4.png"),
        ChapterModel(
            id: "57273",
            title: "Chapter 5",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Ephesians-5.png"),
        ChapterModel(
            id: "57306",
            title: "Chapter 6",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Ephesians-6.png"),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Galatians.png",
      id: "6954",
      name: "Galatians",
      details: "",
      chapterList: [
        ChapterModel(
            id: "57354",
            title: "Chapter 1",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Galatians-1.png"),
        ChapterModel(
            id: "57356",
            title: "Chapter 2",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Galatians-2.png"),
        ChapterModel(
            id: "57358",
            title: "Chapter 3",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Galatians-3.png"),
        ChapterModel(
            id: "57360",
            title: "Chapter 4",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Galatians-4.png"),
        ChapterModel(
            id: "57362",
            title: "Chapter 5",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Galatians-5.png"),
        ChapterModel(
            id: "57364",
            title: "Chapter 6",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Galatians-6.png"),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Hebrews.png",
      id: "7275",
      name: "Hebrews",
      details: "",
      chapterList: [
        ChapterModel(
            title: "Chapter 1",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-1.png",
            id: "57366"),
        ChapterModel(
            title: "Chapter 2",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-2.png",
            id: "57369"),
        ChapterModel(
            title: "Chapter 3",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-3.png",
            id: "57374"),
        ChapterModel(
            title: "Chapter 4",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-4.png",
            id: "57376"),
        ChapterModel(
            title: "Chapter 5",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-5.png",
            id: "57379"),
        ChapterModel(
            title: "Chapter 6",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-6.png",
            id: "57384"),
        ChapterModel(
            title: "Chapter 7",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-7.png",
            id: "57390"),
        ChapterModel(
            title: "Chapter 8",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-8.png",
            id: "57392"),
        ChapterModel(
            title: "Chapter 9",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-9.png",
            id: "57394"),
        ChapterModel(
            title: "Chapter 10",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-10.png",
            id: "57400"),
        ChapterModel(
            title: "Chapter 11",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-11.png",
            id: "57405"),
        ChapterModel(
            title: "Chapter 12",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-12.png",
            id: "57411"),
        ChapterModel(
            title: "Chapter 13",
            image:
                "https://apis.mysundaynotes.com/apis/categories/Hebrews-13.png",
            id: "57413"),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/James.png",
      id: "6530",
      name: "James",
      details: "",
      chapterList: [
        ChapterModel(
            title: "Chapter 1",
            image: "https://apis.mysundaynotes.com/apis/categories/James-1.png",
            id: "57418"),
        ChapterModel(
            title: "Chapter 2",
            image: "https://apis.mysundaynotes.com/apis/categories/James-2.png",
            id: "57428"),
        ChapterModel(
            title: "Chapter 3",
            image: "https://apis.mysundaynotes.com/apis/categories/James-3.png",
            id: "57454"),
        ChapterModel(
            title: "Chapter 4",
            image: "https://apis.mysundaynotes.com/apis/categories/James-4.png",
            id: "57468"),
        ChapterModel(
            title: "Chapter 5",
            image: "https://apis.mysundaynotes.com/apis/categories/James-5.png",
            id: "57479"),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/John.png",
      id: "7165",
      name: "John",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/John-1.png",
          id: "57539",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/John-2.png",
          id: "57541",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/John-3.png",
          id: "57543",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/John-4.png",
          id: "57545",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/John-5.png",
          id: "57547",
        ),
        ChapterModel(
          title: "Chapter 6",
          image: "https://apis.mysundaynotes.com/apis/categories/John-6.png",
          id: "57549",
        ),
        ChapterModel(
          title: "Chapter 7",
          image: "https://apis.mysundaynotes.com/apis/categories/John-7.png",
          id: "57551",
        ),
        ChapterModel(
          title: "Chapter 8",
          image: "https://apis.mysundaynotes.com/apis/categories/John-8.png",
          id: "57553",
        ),
        ChapterModel(
          title: "Chapter 9",
          image: "https://apis.mysundaynotes.com/apis/categories/John-9.png",
          id: "57555",
        ),
        ChapterModel(
          title: "Chapter 10",
          image: "https://apis.mysundaynotes.com/apis/categories/John-10.png",
          id: "57557",
        ),
        ChapterModel(
          title: "Chapter 11",
          image: "https://apis.mysundaynotes.com/apis/categories/John-11.png",
          id: "57559",
        ),
        ChapterModel(
          title: "Chapter 12",
          image: "https://apis.mysundaynotes.com/apis/categories/John-12.png",
          id: "57561",
        ),
        ChapterModel(
          title: "Chapter 13",
          image: "https://apis.mysundaynotes.com/apis/categories/John-13.png",
          id: "57563",
        ),
        ChapterModel(
          title: "Chapter 14",
          image: "https://apis.mysundaynotes.com/apis/categories/John-14.png",
          id: "57565",
        ),
        ChapterModel(
          title: "Chapter 15",
          image: "https://apis.mysundaynotes.com/apis/categories/John-15.png",
          id: "57567",
        ),
        ChapterModel(
          title: "Chapter 16",
          image: "https://apis.mysundaynotes.com/apis/categories/John-16.png",
          id: "57569",
        ),
        ChapterModel(
          title: "Chapter 17",
          image: "https://apis.mysundaynotes.com/apis/categories/John-17.png",
          id: "57571",
        ),
        ChapterModel(
          title: "Chapter 18",
          image: "https://apis.mysundaynotes.com/apis/categories/John-18.png",
          id: "57573",
        ),
        ChapterModel(
          title: "Chapter 19",
          image: "https://apis.mysundaynotes.com/apis/categories/John-19.png",
          id: "57575",
        ),
        ChapterModel(
          title: "Chapter 20",
          image: "https://apis.mysundaynotes.com/apis/categories/John-20.png",
          id: "57577",
        ),
        ChapterModel(
          title: "Chapter 21",
          image: "https://apis.mysundaynotes.com/apis/categories/John-21.png",
          id: "57579",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/1-John.png",
      id: "56663",
      name: "1 John",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/1-John-1.png",
          id: "56663",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/1-John-2.png",
          id: "56693",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/1-John-3.png",
          id: "56764",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/1-John-4.png",
          id: "56766",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/1-John-5.png",
          id: "56785",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/2-John.png",
      id: "56787",
      name: "2 John",
      details: "",
      chapterList: [
        ChapterModel(
            image: "https://apis.mysundaynotes.com/apis/categories/2-John.png",
            title: "Chapter 1",
            id: "56787")
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/3-John.png",
      id: "56791",
      name: "3 John",
      chapterList: [
        ChapterModel(
            image: "https://apis.mysundaynotes.com/apis/categories/3-John.png",
            title: "Chapter 1",
            id: "56791")
      ],
      details: ""),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Jude.png",
      id: "7240",
      name: "Jude",
      chapterList: [
        ChapterModel(
            image: "https://apis.mysundaynotes.com/apis/categories/Jude.png",
            title: "Chapter 1",
            id: "7240")
      ],
      details: ""),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Luke.png",
      id: "6776",
      name: "Luke",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-1.png",
          id: "57491",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-2.png",
          id: "57493",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-3.png",
          id: "57495",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-4.png",
          id: "57497",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-5.png",
          id: "57499",
        ),
        ChapterModel(
          title: "Chapter 6",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-6.png",
          id: "57501",
        ),
        ChapterModel(
          title: "Chapter 7",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-7.png",
          id: "57503",
        ),
        ChapterModel(
          title: "Chapter 8",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-8.png",
          id: "57505",
        ),
        ChapterModel(
          title: "Chapter 9",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-9.png",
          id: "57507",
        ),
        ChapterModel(
          title: "Chapter 10",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-10.png",
          id: "57509",
        ),
        ChapterModel(
          title: "Chapter 11",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-11.png",
          id: "57511",
        ),
        ChapterModel(
          title: "Chapter 12",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-12.png",
          id: "57513",
        ),
        ChapterModel(
          title: "Chapter 13",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-13.png",
          id: "57515",
        ),
        ChapterModel(
          title: "Chapter 14",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-14.png",
          id: "57517",
        ),
        ChapterModel(
          title: "Chapter 15",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-15.png",
          id: "57519",
        ),
        ChapterModel(
          title: "Chapter 16",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-16.png",
          id: "57521",
        ),
        ChapterModel(
          title: "Chapter 17",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-17.png",
          id: "57523",
        ),
        ChapterModel(
          title: "Chapter 18",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-18.png",
          id: "57525",
        ),
        ChapterModel(
          title: "Chapter 19",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-19.png",
          id: "57527",
        ),
        ChapterModel(
          title: "Chapter 20",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-20.png",
          id: "57529",
        ),
        ChapterModel(
          title: "Chapter 21",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-21.png",
          id: "57531",
        ),
        ChapterModel(
          title: "Chapter 22",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-22.png",
          id: "57533",
        ),
        ChapterModel(
          title: "Chapter 23",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-23.png",
          id: "57535",
        ),
        ChapterModel(
          title: "Chapter 24",
          image: "https://apis.mysundaynotes.com/apis/categories/Luke-24.png",
          id: "57537",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Mark.png",
      id: "5870",
      name: "Mark",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-1.png",
          id: "57642",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-2.png",
          id: "57644",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-3.png",
          id: "57646",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-4.png",
          id: "57648",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-5.png",
          id: "57650",
        ),
        ChapterModel(
          title: "Chapter 6",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-6.png",
          id: "57652",
        ),
        ChapterModel(
          title: "Chapter 7",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-7.png",
          id: "57654",
        ),
        ChapterModel(
          title: "Chapter 8",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-8.png",
          id: "57656",
        ),
        ChapterModel(
          title: "Chapter 9",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-9.png",
          id: "57659",
        ),
        ChapterModel(
          title: "Chapter 10",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-10.png",
          id: "57661",
        ),
        ChapterModel(
          title: "Chapter 11",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-11.png",
          id: "57663",
        ),
        ChapterModel(
          title: "Chapter 12",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-12.png",
          id: "57665",
        ),
        ChapterModel(
          title: "Chapter 13",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-13.png",
          id: "57667",
        ),
        ChapterModel(
          title: "Chapter 14",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-14.png",
          id: "57670",
        ),
        ChapterModel(
          title: "Chapter 15",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-15.png",
          id: "57672",
        ),
        ChapterModel(
          title: "Chapter 16",
          image: "https://apis.mysundaynotes.com/apis/categories/Mark-16.png",
          id: "57674",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Matthew.png",
      id: "6856",
      name: "Matthew",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-1.png",
          id: "57581",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-2.png",
          id: "57583",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-3.png",
          id: "57585",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-4.png",
          id: "57590",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-5.png",
          id: "57592",
        ),
        ChapterModel(
          title: "Chapter 6",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-6.png",
          id: "57594",
        ),
        ChapterModel(
          title: "Chapter 7",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-7.png",
          id: "57596",
        ),
        ChapterModel(
          title: "Chapter 8",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-8.png",
          id: "57598",
        ),
        ChapterModel(
          title: "Chapter 9",
          image: "https://apis.mysundaynotes.com/apis/categories/Matthew-9.png",
          id: "57600",
        ),
        ChapterModel(
          title: "Chapter 10",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-10.png",
          id: "57602",
        ),
        ChapterModel(
          title: "Chapter 11",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-11.png",
          id: "57604",
        ),
        ChapterModel(
          title: "Chapter 12",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-12.png",
          id: "57606",
        ),
        ChapterModel(
          title: "Chapter 13",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-13.png",
          id: "57608",
        ),
        ChapterModel(
          title: "Chapter 14",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-14.png",
          id: "57611",
        ),
        ChapterModel(
          title: "Chapter 15",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-15.png",
          id: "57613",
        ),
        ChapterModel(
          title: "Chapter 16",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-16.png",
          id: "57616",
        ),
        ChapterModel(
          title: "Chapter 17",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-17.png",
          id: "57618",
        ),
        ChapterModel(
          title: "Chapter 18",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-18.png",
          id: "57620",
        ),
        ChapterModel(
          title: "Chapter 19",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-19.png",
          id: "57622",
        ),
        ChapterModel(
          title: "Chapter 20",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-20.png",
          id: "57624",
        ),
        ChapterModel(
          title: "Chapter 21",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-21.png",
          id: "57626",
        ),
        ChapterModel(
          title: "Chapter 22",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-22.png",
          id: "57628",
        ),
        ChapterModel(
          title: "Chapter 23",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-23.png",
          id: "57630",
        ),
        ChapterModel(
          title: "Chapter 24",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-24.png",
          id: "57632",
        ),
        ChapterModel(
          title: "Chapter 25",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-25.png",
          id: "57634",
        ),
        ChapterModel(
          title: "Chapter 26",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-26.png",
          id: "57636",
        ),
        ChapterModel(
          title: "Chapter 27",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-27.png",
          id: "57638",
        ),
        ChapterModel(
          title: "Chapter 28",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Matthew-28.png",
          id: "57640",
        ),
      ]),
  NewTastamentModel(
      id: "56793",
      name: "1 Peter",
      image: "https://apis.mysundaynotes.com/apis/categories/1-Peter.png",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/1-Peter-1.png",
          id: "56793",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/1-Peter-2.png",
          id: "56795",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/1-Peter-3.png",
          id: "56797",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/1-Peter-4.png",
          id: "56799",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/1-Peter-5.png",
          id: "56801",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/2-Peter.png",
      id: "56803",
      name: "2 Peter ",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/2-Peter-1.png",
          id: "56803",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/2-Peter-2.png",
          id: "56805",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/2-Peter-3.png",
          id: "56807",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Philemon.png",
      id: "7266",
      name: "Philemon",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/Philemon.png",
          id: "7266",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Philippians.png",
      id: "7299",
      name: "Philippians",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Philippians-1.png",
          id: "57676",
        ),
        ChapterModel(
          title: "Chapter 2",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Philippians-2.png",
          id: "57704",
        ),
        ChapterModel(
          title: "Chapter 3",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Philippians-3.png",
          id: "57726",
        ),
        ChapterModel(
          title: "Chapter 4",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Philippians-4.png",
          id: "57745",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Revelation.png",
      id: "5931",
      name: "Revelation",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-1.png",
          id: "58066",
        ),
        ChapterModel(
          title: "Chapter 2",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-2.png",
          id: "58081",
        ),
        ChapterModel(
          title: "Chapter 3",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-3.png",
          id: "58110",
        ),
        ChapterModel(
          title: "Chapter 4",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-4.png",
          id: "58133",
        ),
        ChapterModel(
          title: "Chapter 5",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-5.png",
          id: "58146",
        ),
        ChapterModel(
          title: "Chapter 6",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-6.png",
          id: "58159",
        ),
        ChapterModel(
          title: "Chapter 7",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-7.png",
          id: "58176",
        ),
        ChapterModel(
          title: "Chapter 8",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-8.png",
          id: "58191",
        ),
        ChapterModel(
          title: "Chapter 9",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-9.png",
          id: "58205",
        ),
        ChapterModel(
          title: "Chapter 10",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-10.png",
          id: "58226",
        ),
        ChapterModel(
          title: "Chapter 11",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-11.png",
          id: "58237",
        ),
        ChapterModel(
          title: "Chapter 12",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-12.png",
          id: "58255",
        ),
        ChapterModel(
          title: "Chapter 13",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-13.png",
          id: "58276",
        ),
        ChapterModel(
          title: "Chapter 14",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-14.png",
          id: "58296",
        ),
        ChapterModel(
          title: "Chapter 15",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-15.png",
          id: "58319",
        ),
        ChapterModel(
          title: "Chapter 16",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-16.png",
          id: "58327",
        ),
        ChapterModel(
          title: "Chapter 17",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-17.png",
          id: "58349",
        ),
        ChapterModel(
          title: "Chapter 18",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-18.png",
          id: "58369",
        ),
        ChapterModel(
          title: "Chapter 19",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-19.png",
          id: "58396",
        ),
        ChapterModel(
          title: "Chapter 20",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-20.png",
          id: "58421",
        ),
        ChapterModel(
          title: "Chapter 21",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-21.png",
          id: "58438",
        ),
        ChapterModel(
          title: "Chapter 22",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Revelation-22.png",
          id: "58461",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Romans.png",
      id: "7106",
      name: "Romans",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-1.png",
          id: "57827",
        ),
        ChapterModel(
          title: "Chapter 2",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-2.png",
          id: "57829",
        ),
        ChapterModel(
          title: "Chapter 3",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-3.png",
          id: "57831",
        ),
        ChapterModel(
          title: "Chapter 4",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-4.png",
          id: "57863",
        ),
        ChapterModel(
          title: "Chapter 5",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-5.png",
          id: "57913",
        ),
        ChapterModel(
          title: "Chapter 6",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-6.png",
          id: "57930",
        ),
        ChapterModel(
          title: "Chapter 7",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-7.png",
          id: "58035",
        ),
        ChapterModel(
          title: "Chapter 8",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-8.png",
          id: "58037",
        ),
        ChapterModel(
          title: "Chapter 9",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-9.png",
          id: "58039",
        ),
        ChapterModel(
          title: "Chapter 10",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-10.png",
          id: "58042",
        ),
        ChapterModel(
          title: "Chapter 11",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-11.png",
          id: "58045",
        ),
        ChapterModel(
          title: "Chapter 12",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-12.png",
          id: "58047",
        ),
        ChapterModel(
          title: "Chapter 13",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-13.png",
          id: "58049",
        ),
        ChapterModel(
          title: "Chapter 14",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-14.png",
          id: "58051",
        ),
        ChapterModel(
          title: "Chapter 15",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-15.png",
          id: "58053",
        ),
        ChapterModel(
          title: "Chapter 16",
          image: "https://apis.mysundaynotes.com/apis/categories/Romans-16.png",
          id: "58055",
        ),
      ]),
  NewTastamentModel(
      image:
          "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians.png",
      id: "56809",
      name: "1 Thessalonians",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians-1.png",
          id: "56809",
        ),
        ChapterModel(
          title: "Chapter 2",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians-2.png",
          id: "56814",
        ),
        ChapterModel(
          title: "Chapter 3",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians-3.png",
          id: "56826",
        ),
        ChapterModel(
          title: "Chapter 4",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians-4.png",
          id: "56835",
        ),
        ChapterModel(
          title: "Chapter 5",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians-5.png",
          id: "56842",
        ),
      ]),
  NewTastamentModel(
      image:
          "https://apis.mysundaynotes.com/apis/categories/2-Thessalonians.png",
      id: "56858",
      name: "2 Thessalonians",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image:
              "https://apis.mysundaynotes.com/apis/categories/2-Thessalonians-1.png",
          id: "56858",
        ),
        ChapterModel(
          title: "Chapter 2",
          image:
              "https://apis.mysundaynotes.com/apis/categories/2-Thessalonians-2.png",
          id: "56861",
        ),
        ChapterModel(
          title: "Chapter 3",
          image:
              "https://apis.mysundaynotes.com/apis/categories/2-Thessalonians-3.png",
          id: "56863",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/1-Timothy.png",
      id: "56865",
      name: "1 Timothy",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Timothy-1.png",
          id: "56865",
        ),
        ChapterModel(
          title: "Chapter 2",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Timothy-2.png",
          id: "56875",
        ),
        ChapterModel(
          title: "Chapter 3",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Timothy-3.png",
          id: "56881",
        ),
        ChapterModel(
          title: "Chapter 4",
          image:
              "https://apis.mysundaynotes.com/apis/categories/1-Thessalonians-4.png",
          id: "56888",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/2-Timothy.png",
      id: "56932",
      name: "2 Timothy ",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image:
              "https://apis.mysundaynotes.com/apis/categories/2-Timothy-1.png",
          id: "56932",
        ),
        ChapterModel(
          title: "Chapter 2",
          image:
              "https://apis.mysundaynotes.com/apis/categories/2-Timothy-2.png",
          id: "56940",
        ),
        ChapterModel(
          title: "Chapter 3",
          image:
              "https://apis.mysundaynotes.com/apis/categories/2-Timothy-3.png",
          id: "56950",
        ),
        ChapterModel(
          title: "Chapter 4",
          image:
              "https://apis.mysundaynotes.com/apis/categories/2-Timothy-4.png",
          id: "56960",
        ),
      ]),
  NewTastamentModel(
      image: "https://apis.mysundaynotes.com/apis/categories/Titus.png",
      id: "7255",
      name: "Titus",
      details: "",
      chapterList: [
        ChapterModel(
          title: "Chapter 1",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Titus-1.png",
          id: "58060",
        ),
        ChapterModel(
          title: "Chapter 2",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Titus-2.png",
          id: "58062",
        ),
        ChapterModel(
          title: "Chapter 3",
          image:
              "https://apis.mysundaynotes.com/apis/categories/Titus-3.png",
          id: "58064",
        ),
      ]),
];

//
