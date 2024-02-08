import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:movieml/Widgets/backbuttom.dart';
import 'package:movieml/constant.dart';
import 'package:movieml/model/movie.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage( {super.key, required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            leading: const BackBtn(),
            backgroundColor: Colors.black,
            expandedHeight: 500,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                movie.title,
                style: GoogleFonts.pavanam(
                    color: Colors.black,
                    backgroundColor: Colors.amber,
                    fontSize: 17,
                    fontWeight: FontWeight.w800),
              ),
              background: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                child: Image.network(
                  '${Constant.imagePath}${movie.posterPath}',
                  filterQuality: FilterQuality.high,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                children: [
                  Text(
                    'overview',
                    style: GoogleFonts.iceberg(
                        color: Colors.amberAccent,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                 
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    movie.overview,
                    style: GoogleFonts.cairo(
                        color: Colors.amberAccent,
                        fontSize: 20,
                        fontWeight: FontWeight.w300),
                    textAlign: TextAlign.justify,
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  SizedBox(
                      child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Realase Date: ',
                              style: GoogleFonts.cairo(
                                  color: Colors.amberAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                            ),
                            Text(
                              movie.releaseDate,
                              style: GoogleFonts.cairo(
                                  color: Colors.amberAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(color: Colors.grey),
                        ),
                        child: Row(
                          children: [
                            Text(
                              'Rating',
                              style: GoogleFonts.cairo(
                                  color: Colors.amberAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w100),
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                              size: 25,
                            ),
                            Text(
                              '${movie.voteAverage.toStringAsFixed(1)}/10',
                              style: GoogleFonts.cairo(
                                  color: Colors.amberAccent,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                             IconButton(onPressed: () async {
                     try {
                  final res = await FirebaseFirestore.instance
                      .collection('favmovies')
                      .add({
                    'title': movie.title,
                    'id': movie.movieId,
                    'poster': movie.posterPath
                  });
                  print(res);
                } catch (e) {
                  print(e);
                }
                 }, icon: const Icon(Icons.favorite_outline)
                 ),
                          ],
                        ),
                      ),
                    ],
                    
                  )),
                ],
                
              ),
            ),
            
          ),
        ],
      ),
    );
  }
}
