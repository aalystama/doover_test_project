import 'package:doover_test_project/core/consts/colors.dart';
import 'package:doover_test_project/core/consts/paddings.dart';
import 'package:doover_test_project/core/consts/text_styles.dart';
import 'package:doover_test_project/core/widgets/appbar.dart';
import 'package:doover_test_project/features/posts/controllers/posts_cubit/posts_cubit.dart';
import 'package:doover_test_project/features/posts/data/models/post.dart';
import 'package:doover_test_project/features/posts/presentation/widgets/comment_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailedPostScreen extends StatefulWidget {
  final Post post;

  const DetailedPostScreen({Key key, this.post}) : super(key: key);

  @override
  _DetailedPostScreenState createState() => _DetailedPostScreenState();
}

class _DetailedPostScreenState extends State<DetailedPostScreen> {
  bool isLoaded = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size(
            MediaQuery.of(context).size.width,
            kToolbarHeight,
          ),
          child: DooverAppBar(title: widget.post.title),
        ),
        body: Stack(
          children: [
            Padding(
              padding: DooverPaddings.kPagePaddings,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    widget.post.title,
                    style: DooverTextStyles.kDetailedPostTitleTextStyle,
                  ),
                  SizedBox(height: 25),
                  Text(
                    widget.post.body,
                    style: DooverTextStyles.kDetailedPostBodyTextStyle,
                  ),
                  SizedBox(height: 25),
                  BlocConsumer<PostsCubit, PostsState>(
                    listener: (context, state) {
                      if (state is PostsCommentsSuccess) {
                        setState(() {
                          isLoaded = true;
                        });
                      }
                    },
                    builder: (context, state) {
                      if (state is PostsLoading) {
                        return Center(child: CircularProgressIndicator());
                      }

                      if (state is PostsFailure) {
                        return Center(child: Text(state.message));
                      }

                      if (state is PostsCommentsSuccess) {
                        return ListView.separated(
                          physics: NeverScrollableScrollPhysics(),
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          itemBuilder: (context, index) => CommentCard(
                            comment: state.comments[index],
                          ),
                          separatorBuilder: (context, index) =>
                              SizedBox(height: 10),
                          itemCount: 2,
                        );
                      }

                      return Offstage();
                    },
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Offstage(
                offstage: !isLoaded,
                child: FlatButton(
                  padding: EdgeInsets.zero,
                  onPressed: () {},
                  child: Container(
                    padding: DooverPaddings.kPostCardPadding,
                    height: kToolbarHeight,
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(10)),
                      color: DooverColors.kButtonColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(text: 'Show me '),
                              TextSpan(
                                text: '64 result',
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                            style: TextStyle(
                              fontFamily: 'Raleway',
                              fontSize: 18,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.remove_red_eye_sharp,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
