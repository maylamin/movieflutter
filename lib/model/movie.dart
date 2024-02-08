class Movie {
  int movieId;
  String title;
  String backDropPath;
  String orginalTitle;
  String overview;
  String posterPath;
  String releaseDate;
  double voteAverage;

  Movie({
    required this.movieId,
    required this.title,
    required this.backDropPath,
    required this.orginalTitle,
    required this.overview,
    required this.posterPath,
    required this.releaseDate,
    required this.voteAverage,
  });
  factory Movie.fromJson(Map<String, dynamic> json) {
    return Movie(
      title: json['title'],
      backDropPath: json['backdrop_path'],
      orginalTitle: json['original_title'],
      overview: json['overview'],
      posterPath: json['poster_path'],
      releaseDate: json['release_date'],
      voteAverage: json['vote_average'].toDouble(),
       movieId: json['id'],
    );
  }
}

// {
//   "page": 1,
//   "results": [
//     {
//       "adult": false,
//       "backdrop_path": "/44immBwzhDVyjn87b3x3l9mlhAD.jpg",
//       "id": 934433,
//       "title": "Scream VI",
//       "original_language": "en",
//       "original_title": "Scream VI",
//       "overview": "Following the latest Ghostface killings, the four survivors leave Woodsboro behind and start a fresh chapter.",
//       "poster_path": "/wDWwtvkRRlgTiUr6TyLSMX8FCuZ.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         27,
//         9648,
//         53
//       ],
//       "popularity": 609.941,
//       "release_date": "2023-03-08",
//       "video": false,
//       "vote_average": 7.374,
//       "vote_count": 684
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/b9UCfDzwiWw7mIFsIQR9ZJUeh7q.jpg",
//       "id": 868759,
//       "title": "Ghosted",
//       "original_language": "en",
//       "original_title": "Ghosted",
//       "overview": "Salt-of-the-earth Cole falls head over heels for enigmatic Sadie — but then makes the shocking discovery that she’s a secret agent. Before they can decide on a second date, Cole and Sadie are swept away on an international adventure to save the world.",
//       "poster_path": "/liLN69YgoovHVgmlHJ876PKi5Yi.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         10749,
//         28,
//         35
//       ],
//       "popularity": 619.83,
//       "release_date": "2023-04-21",
//       "video": false,
//       "vote_average": 7.318,
//       "vote_count": 359
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/iJQIbOPm81fPEGKt5BPuZmfnA54.jpg",
//       "id": 502356,
//       "title": "The Super Mario Bros. Movie",
//       "original_language": "en",
//       "original_title": "The Super Mario Bros. Movie",
//       "overview": "While working underground to fix a water main, Brooklyn plumbers—and brothers—Mario and Luigi are transported down a mysterious pipe and wander into a magical new world. But when the brothers are separated, Mario embarks on an epic quest to find Luigi.",
//       "poster_path": "/qNBAXBIQlnOThrVvA6mA2B5ggV6.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         16,
//         12,
//         10751,
//         14,
//         35
//       ],
//       "popularity": 7212.464,
//       "release_date": "2023-04-05",
//       "video": false,
//       "vote_average": 7.51,
//       "vote_count": 1452
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/8YFL5QQVPy3AgrEQxNYVSgiPEbe.jpg",
//       "id": 640146,
//       "title": "Ant-Man and the Wasp: Quantumania",
//       "original_language": "en",
//       "original_title": "Ant-Man and the Wasp: Quantumania",
//       "overview": "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.",
//       "poster_path": "/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         28,
//         12,
//         878
//       ],
//       "popularity": 9272.643,
//       "release_date": "2023-02-15",
//       "video": false,
//       "vote_average": 6.526,
//       "vote_count": 1879
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/7bWxAsNPv9CXHOhZbJVlj2KxgfP.jpg",
//       "id": 713704,
//       "title": "Evil Dead Rise",
//       "original_language": "en",
//       "original_title": "Evil Dead Rise",
//       "overview": "Two sisters find an ancient vinyl that gives birth to bloodthirsty demons that run amok in a Los Angeles apartment building and thrusts them into a primal battle for survival as they face the most nightmarish version of family imaginable.",
//       "poster_path": "/mIBCtPvKZQlxubxKMeViO2UrP3q.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         27,
//         53
//       ],
//       "popularity": 1898.367,
//       "release_date": "2023-04-12",
//       "video": false,
//       "vote_average": 6.965,
//       "vote_count": 201
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/fUVK7iUF0k9dU3MwV5MIKWMKGys.jpg",
//       "id": 298618,
//       "title": "The Flash",
//       "original_language": "en",
//       "original_title": "The Flash",
//       "overview": "When his attempt to save his family inadvertently alters the future, Barry Allen becomes trapped in a reality in which General Zod has returned and there are no Super Heroes to turn to. In order to save the world that he is in and return to the future that he knows, Barry's only hope is to race for his life. But will making the ultimate sacrifice be enough to reset the universe?",
//       "poster_path": "/5aZoKcR8VxYWhiENYOUg6ooGbc8.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         878,
//         28,
//         12
//       ],
//       "popularity": 170.114,
//       "release_date": "2023-06-14",
//       "video": false,
//       "vote_average": 0,
//       "vote_count": 0
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/dQObIWkxfzKEDhtjOSoFnyCVgt0.jpg",
//       "id": 447365,
//       "title": "Guardians of the Galaxy Volume 3",
//       "original_language": "en",
//       "original_title": "Guardians of the Galaxy Volume 3",
//       "overview": "Peter Quill, still reeling from the loss of Gamora, must rally his team around him to defend the universe along with protecting one of their own. A mission that, if not completed successfully, could quite possibly lead to the end of the Guardians as we know them.",
//       "poster_path": "/r2J02Z2OpNTctfOSN1Ydgii51I3.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         878,
//         12,
//         28
//       ],
//       "popularity": 235.884,
//       "release_date": "2023-05-03",
//       "video": false,
//       "vote_average": 0,
//       "vote_count": 0
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/ovM06PdF3M8wvKb06i4sjW3xoww.jpg",
//       "id": 76600,
//       "title": "Avatar: The Way of Water",
//       "original_language": "en",
//       "original_title": "Avatar: The Way of Water",
//       "overview": "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
//       "poster_path": "/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         878,
//         12,
//         28
//       ],
//       "popularity": 3471.132,
//       "release_date": "2022-12-14",
//       "video": false,
//       "vote_average": 7.7,
//       "vote_count": 7530
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/m0mLjT3TkTXYU2e1XP3wmYDlIml.jpg",
//       "id": 873256,
//       "title": "Kiss, Kiss!",
//       "original_language": "pl",
//       "original_title": "Gorzko, gorzko!",
//       "overview": "Convinced he can charm any woman, a tenacious flirt sets his sights on a headstrong bride-to-be engaged to the son of an ambitious politician.",
//       "poster_path": "/jLn0dg0n73v8L6lKkTkX5k8POyy.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         10749,
//         35
//       ],
//       "popularity": 41.779,
//       "release_date": "2023-04-26",
//       "video": false,
//       "vote_average": 7.25,
//       "vote_count": 4
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/wybmSmviUXxlBmX44gtpow5Y9TB.jpg",
//       "id": 594767,
//       "title": "Shazam! Fury of the Gods",
//       "original_language": "en",
//       "original_title": "Shazam! Fury of the Gods",
//       "overview": "Billy Batson and his foster siblings, who transform into superheroes by saying \"Shazam!\", are forced to get back into action and fight the Daughters of Atlas, who they must stop from using a weapon that could destroy the world.",
//       "poster_path": "/2VK4d3mqqTc7LVZLnLPeRiPaJ71.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         28,
//         35,
//         14
//       ],
//       "popularity": 4319.273,
//       "release_date": "2023-03-15",
//       "video": false,
//       "vote_average": 6.848,
//       "vote_count": 1215
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/eSVu1FvGPy86TDo4hQbpuHx55DJ.jpg",
//       "id": 700391,
//       "title": "65",
//       "original_language": "en",
//       "original_title": "65",
//       "overview": "65 million years ago, the only 2 survivors of a spaceship from Somaris that crash-landed on Earth must fend off dinosaurs and reach the escape vessel in time before an imminent asteroid strike threatens to destroy the planet.",
//       "poster_path": "/rzRb63TldOKdKydCvWJM8B6EkPM.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         878,
//         12,
//         53,
//         28
//       ],
//       "popularity": 1189.997,
//       "release_date": "2023-03-02",
//       "video": false,
//       "vote_average": 6.3,
//       "vote_count": 756
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/h8gHn0OzBoaefsYseUByqsmEDMY.jpg",
//       "id": 603692,
//       "title": "John Wick: Chapter 4",
//       "original_language": "en",
//       "original_title": "John Wick: Chapter 4",
//       "overview": "With the price on his head ever increasing, John Wick uncovers a path to defeating The High Table. But before he can earn his freedom, Wick must face off against a new enemy with powerful alliances across the globe and forces that turn old friends into foes.",
//       "poster_path": "/vZloFAK7NmvMGKE7VkF5UHaz0I.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         28,
//         53,
//         80
//       ],
//       "popularity": 1312.743,
//       "release_date": "2023-03-22",
//       "video": false,
//       "vote_average": 7.975,
//       "vote_count": 1207
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/pbMbDlOAkVuvnxovBA2ENin59xH.jpg",
//       "id": 447277,
//       "title": "The Little Mermaid",
//       "original_language": "en",
//       "original_title": "The Little Mermaid",
//       "overview": "The youngest of King Triton’s daughters, and the most defiant, Ariel longs to find out more about the world beyond the sea, and while visiting the surface, falls for the dashing Prince Eric. With mermaids forbidden to interact with humans, Ariel makes a deal with the evil sea witch, Ursula, which gives her a chance to experience life on land, but ultimately places her life – and her father’s crown – in jeopardy.",
//       "poster_path": "/ym1dxyOk4jFcSl4Q2zmRrA5BEEN.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         12,
//         10751,
//         14,
//         10749
//       ],
//       "popularity": 210.368,
//       "release_date": "2023-05-18",
//       "video": false,
//       "vote_average": 0,
//       "vote_count": 0
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/rH3jY9JN9krUyE0Q3WLNtujMs8.jpg",
//       "id": 667538,
//       "title": "Transformers: Rise of the Beasts",
//       "original_language": "en",
//       "original_title": "Transformers: Rise of the Beasts",
//       "overview": "A ‘90s globetrotting adventure that introduces the Maximals, Predacons, and Terrorcons to the existing battle on earth between Autobots and Decepticons.",
//       "poster_path": "/g1HcrEiN0UiSpjQMJ3Klzw8KOZS.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         28,
//         12,
//         878
//       ],
//       "popularity": 161.222,
//       "release_date": "2023-06-07",
//       "video": false,
//       "vote_average": 0,
//       "vote_count": 0
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/ifUfE79O1raUwbaQRIB7XnFz5ZC.jpg",
//       "id": 646385,
//       "title": "Scream",
//       "original_language": "en",
//       "original_title": "Scream",
//       "overview": "Twenty-five years after a streak of brutal murders shocked the quiet town of Woodsboro, a new killer has donned the Ghostface mask and begins targeting a group of teenagers to resurrect secrets from the town’s deadly past.",
//       "poster_path": "/4qIV5WXP1xQvpPAHmgVxCmxvPh6.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         27,
//         9648,
//         53
//       ],
//       "popularity": 373.035,
//       "release_date": "2022-01-12",
//       "video": false,
//       "vote_average": 6.737,
//       "vote_count": 2344
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/3GLrNvvkVJjBiffV8RsEh9Xg1eS.jpg",
//       "id": 997776,
//       "title": "Justice League x RWBY: Super Heroes & Huntsmen, Part One",
//       "original_language": "en",
//       "original_title": "Justice League x RWBY: Super Heroes & Huntsmen, Part One",
//       "overview": "Superman, Batman, Wonder Woman, Flash, Cyborg, Green Lantern and Vixen are transported to the strange world of Remnant and find themselves turned into teenagers. Meanwhile, Remnant heroes Ruby, Weiss, Blake and Yang must combine forces with the Justice League to uncover why their planet has been mysteriously altered before a superpowered Grimm destroys everything.",
//       "poster_path": "/sjBFnG8DpouuWi161KbjbAER235.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         16,
//         28,
//         14
//       ],
//       "popularity": 107.913,
//       "release_date": "2023-04-25",
//       "video": false,
//       "vote_average": 8.238,
//       "vote_count": 21
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/z3Qc5a0grcCREAQKqI195P05dVf.jpg",
//       "id": 813726,
//       "title": "A Tourist's Guide to Love",
//       "original_language": "en",
//       "original_title": "A Tourist's Guide to Love",
//       "overview": "After an unexpected break up, a travel executive accepts an assignment to go undercover and learn about the tourist industry in Vietnam. Along the way, she finds adventure and romance with her Vietnamese expat tour guide and they decide to hijack the tour bus in order to explore life and love off the beaten path.",
//       "poster_path": "/uWkpjbBe4gRZilXRXbYfsMUZMhz.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         10749,
//         35,
//         12
//       ],
//       "popularity": 275.635,
//       "release_date": "2023-04-21",
//       "video": false,
//       "vote_average": 6.603,
//       "vote_count": 39
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/vcNXzOfACCXZA7vb8SNde0LUC9o.jpg",
//       "id": 1068141,
//       "title": "Mighty Morphin Power Rangers: Once & Always",
//       "original_language": "en",
//       "original_title": "Mighty Morphin Power Rangers: Once & Always",
//       "overview": "After tragedy strikes, an unlikely young hero takes her rightful place among the Power Rangers to face off against the team's oldest archnemesis.",
//       "poster_path": "/vc87upO8vcAGj9OmgH3AIz6ikKB.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         28,
//         878,
//         14
//       ],
//       "popularity": 238.666,
//       "release_date": "2023-04-19",
//       "video": false,
//       "vote_average": 6.931,
//       "vote_count": 131
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/dlrWhn0G3AtxYUx2D9P2bmzcsvF.jpg",
//       "id": 536554,
//       "title": "M3GAN",
//       "original_language": "en",
//       "original_title": "M3GAN",
//       "overview": "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
//       "poster_path": "/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         878,
//         27,
//         35
//       ],
//       "popularity": 724.995,
//       "release_date": "2022-12-28",
//       "video": false,
//       "vote_average": 7.367,
//       "vote_count": 2426
//     },
//     {
//       "adult": false,
//       "backdrop_path": "/xEn2SqJQ2uBAxSBfrcAqgiFDQCa.jpg",
//       "id": 944152,
//       "title": "Chokehold",
//       "original_language": "tr",
//       "original_title": "Boğa Boğa",
//       "overview": "Evading a scandal, a couple from Istanbul starts over in a town on the Aegean coast — but quickly discover the locals are determined to get rid of them.",
//       "poster_path": "/bW7NgAKpP24skkTjmJxNYWjOwdj.jpg",
//       "media_type": "movie",
//       "genre_ids": [
//         53,
//         18
//       ],
//       "popularity": 246.108,
//       "release_date": "2023-04-21",
//       "video": false,
//       "vote_average": 5.6,
//       "vote_count": 15
//     }
//   ],
//   "total_pages": 1000,
//   "total_results": 20000
// }