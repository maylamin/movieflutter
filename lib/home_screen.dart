import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movieml/Widgets/movie_slider.dart';
import 'package:movieml/Widgets/treanding_slider.dart';
import 'package:movieml/api/api.dart';
import 'package:movieml/model/movie.dart';

class HomeScreenpage extends StatefulWidget {
  const HomeScreenpage({super.key});

  @override
  State<HomeScreenpage> createState() => _HomeScreenpageState();
}

class _HomeScreenpageState extends State<HomeScreenpage> {
  late Future<List<Movie>> treandingMovies;
  late Future<List<Movie>> topreatedMovies;
  late Future<List<Movie>> upcomingMovies;
  // late Future<List<Movie>> nowPlayingMovies;

  @override
  void initState() {
    super.initState();
    treandingMovies = Api().getTreandingMovie();
    topreatedMovies = Api().getTopratedUrl();
    upcomingMovies = Api().getUpcomingUrl();
    // nowPlayingMovies = Api().getNowplayingUrl();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Image(
          image: AssetImage(
            'images/movie.jpg',
          ),
          height: 130,
          fit: BoxFit.cover,
          filterQuality: FilterQuality.high,
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //  this is for trending __________
              Text(
                'Trending Movies',
                style: GoogleFonts.langar(
                    color: const Color.fromARGB(255, 229, 36, 36),
                    fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: treandingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return Treanding_slider(
                        snapshot: snapshot,
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),

              //  this is for top reated _____
              const SizedBox(height: 30),
              Text(
                'Top Reated Movies',
                style: GoogleFonts.langar(
                    color: const Color.fromARGB(255, 192, 18, 18),
                    fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),

              SizedBox(
                child: FutureBuilder(
                  future: topreatedMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return MovieSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),

              //  this is for upcoming________________
              const SizedBox(
                height: 30,
              ),
              Text(
                'Up Coming Movies',
                style: GoogleFonts.langar(
                    color: const Color.fromARGB(255, 192, 18, 18),
                    fontSize: 25),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                child: FutureBuilder(
                  future: upcomingMovies,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return Center(
                        child: Text(snapshot.error.toString()),
                      );
                    } else if (snapshot.hasData) {
                      return MovieSlider(
                        snapshot: snapshot,
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
