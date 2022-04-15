import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const NewsbizkootWeb());
}

class NewsbizkootWeb extends StatefulWidget {
  const NewsbizkootWeb({Key? key}) : super(key: key);

  @override
  _NewsbizkootWebState createState() => _NewsbizkootWebState();
}

class _NewsbizkootWebState extends State<NewsbizkootWeb> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Poppins"),
      title: "NewsBizKoot",
      debugShowCheckedModeBanner: false,
      home: const Newsbizkoot(),
    );
  }
}

class Newsbizkoot extends StatefulWidget {
  const Newsbizkoot({Key? key}) : super(key: key);

  @override
  _NewsbizkootState createState() => _NewsbizkootState();
}

class _NewsbizkootState extends State<Newsbizkoot> {
  bool radioButton = true;
  @override
  Widget build(BuildContext context) {
    SizeProvider().init(context);
    return Scaffold(
      body: ScrollConfiguration(
        behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: 128.width, vertical: 16.height),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const HeaderWidget(),
                    SizedBox(
                      height: 40.height,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 24.height,
                        ),
                        Text(
                          "Press Release Submissions",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 24.height),
                        ),
                        SizedBox(
                          height: 24.height,
                        ),
                        const Text(
                            "We offer two submission options for your press release. Each provides the opportunity to have your announcement shared with those who matter most."),
                        SizedBox(
                          height: 24.height,
                        ),
                        const Text(
                            "Complement your existing press release campaign with highly targeted access to our audience of IoT experts, thought leaders, decision makers, prospective customers, and enthusiasts through our submission form below."),
                        SizedBox(
                          height: 24.height,
                        ),
                        const Text(
                            "We use our extensive distribution channels and industry relationships to ensure every press release is seen by the people who matter most so that your company gets the attention it deserves.")
                      ],
                    ),
                    SizedBox(
                      height: 24.height,
                    ),
                    Text(
                      "Submit a Press Release",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 24.height),
                    ),
                    SizedBox(
                      height: 24.height,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF9FAFB),
                        border: Border.all(color: const Color(0xFFe7eaef)),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: 32.height, horizontal: 16.width),
                      width: 800.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 100.height,
                            child: Stack(
                              alignment: Alignment.center,
                              children: [
                                Positioned(
                                  top: 20.height,
                                  child: Container(
                                    width: 750.width,
                                    height: 2.height,
                                    color: const Color(0xFFd6dce1),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: const [
                                    ProgressIndicator(
                                      step: 1,
                                      hasReached: true,
                                      title: "Press Release Type",
                                    ),
                                    ProgressIndicator(
                                      step: 2,
                                      hasReached: false,
                                      title: "Company Information",
                                    ),
                                    ProgressIndicator(
                                      step: 3,
                                      hasReached: false,
                                      title: "Press Release Information",
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const RequiredText(
                            text: "Submission Type",
                          ),
                          ListTile(
                            title: const Text(
                                "Free Press Release Submission (Free - Limit 3 Submissions Per Year)"),
                            leading: Radio(
                                value: true,
                                activeColor: const Color(0xFF3c4755),
                                groupValue: radioButton,
                                onChanged: (bool? value) {
                                  setState(() {
                                    radioButton = value ?? true;
                                  });
                                }),
                          ),
                          ListTile(
                            title: const Text(
                                "Boosted Press Release Submission (\$89 Per Release - Unlimited Submissions)"),
                            leading: Radio(
                                value: false,
                                activeColor: const Color(0xFF3c4755),
                                groupValue: radioButton,
                                onChanged: (bool? value) {
                                  setState(() {
                                    radioButton = value ?? false;
                                  });
                                }),
                          ),
                          SizedBox(
                            height: 8.height,
                          ),
                          Text(
                            'If you\'re an NewsBizKoot\'s Partner, select "Free" and your press release will be automatically upgraded.',
                            style: TextStyle(color: Colors.blueGrey.shade300),
                          ),
                          SizedBox(
                            height: 36.height,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFeef0f7),
                                width: 2.width,
                              ),
                              color: const Color(0xFFf4f6fa),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.width, vertical: 20.height),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Free Press Release Submission",
                                  style: TextStyle(
                                    fontSize: 18.height,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 14.height,
                                ),
                                const Text(
                                  "We review all free submissions and decide what's best for our website.",
                                ),
                              ],
                            ),
                            width: 800.width,
                          ),
                          SizedBox(
                            height: 16.height,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: const Color(0xFFeef0f7),
                                width: 2.width,
                              ),
                              color: const Color(0xFFf4f6fa),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 16.width, vertical: 20.height),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Boosted Press Release Submission",
                                  style: TextStyle(
                                    fontSize: 18.height,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 14.height,
                                ),
                                const Text(
                                  "Guarantee your press release is seen by our audience with enhanced distribution across our channels.",
                                ),
                                SizedBox(
                                  height: 14.height,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.width),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                          "•  Featured on our homepage with perpetual hosting to ensure maximum visibility"),
                                      SizedBox(
                                        height: 4.height,
                                      ),
                                      const Text(
                                          "•  Include your logo for increased brand awareness"),
                                      SizedBox(
                                        height: 4.height,
                                      ),
                                      const Text(
                                          "•  Exclusive social media distribution to NewsBizKoot's followers"),
                                      SizedBox(
                                        height: 4.height,
                                      ),
                                      const Text("•  Expert SEO optimization"),
                                      SizedBox(
                                        height: 4.height,
                                      ),
                                      const Text(
                                          "•  Native formatting applied to each post to increase readability and engagement"),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16.height,
                                ),
                                const Image(
                                    image: AssetImage("assets/image.png")),
                                SizedBox(
                                  height: 16.height,
                                ),
                                const Text(
                                  "*Please note that only press releases relevant to IoT will be accepted. We reserve the right to reject any submission for any reason we deem necessary — at which point your payment will be refunded.",
                                  style: TextStyle(fontStyle: FontStyle.italic),
                                )
                              ],
                            ),
                            width: 800.width,
                          ),
                          SizedBox(
                            height: 16.height,
                          ),
                          Container(
                            width: double.infinity,
                            alignment: Alignment.center,
                            child: FlatButton(
                              onPressed: () {},
                              child: Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: 8.height, horizontal: 16.width),
                                child: Text(
                                  "Next",
                                  style: TextStyle(
                                      fontSize: 16.height, color: Colors.white),
                                ),
                              ),
                              color: Colors.teal.shade700,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(48)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const FooterWidget()
            ],
          ),
        ),
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  const FooterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF181e25),
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: 128.width, vertical: 24.height),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Newsbizkoot",
                  style: TextStyle(
                      fontSize: 24.height,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                SizedBox(
                  width: 250.width,
                  child: const Text(
                    "IoT For All is creating resources to enable companies of all sizes to leverage IoT. From technical deep-dives, to IoT ecosystem overviews, to evergreen resources, IoT For All is the best place to keep up with what's going on in IoT.",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 16.height,
                ),
                SizedBox(
                  width: 200.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        child: SvgPicture.asset(
                          "assets/linkedin.svg",
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        child: SvgPicture.asset(
                          "assets/twitter.svg",
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        child: SvgPicture.asset(
                          "assets/facebook.svg",
                          color: Colors.white,
                        ),
                      ),
                      InkWell(
                        child: SvgPicture.asset(
                          "assets/youtube.svg",
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "CONTENT",
                  style: TextStyle(
                      fontSize: 18.height,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                LinkedText(
                  "Solutions",
                  icon: Icons.layers,
                  color: Colors.yellow,
                ),
                LinkedText(
                  "Applications",
                  icon: Icons.grid_view,
                  color: Colors.blue.shade700,
                ),
                LinkedText(
                  "Events",
                  icon: Icons.movie,
                  color: Colors.purple,
                ),
                LinkedText(
                  "Webminars",
                  icon: Icons.video_library,
                  color: Colors.red,
                ),
                LinkedText(
                  "Job Posts",
                  icon: Icons.work,
                  color: Colors.orange,
                ),
                LinkedText(
                  "Articles",
                  icon: Icons.article,
                  color: Colors.lightBlue,
                ),
                LinkedText(
                  "Podcasts",
                  icon: Icons.mic,
                  color: Colors.green,
                ),
                LinkedText(
                  "News",
                  icon: Icons.campaign,
                  color: Colors.lightGreen,
                ),
                LinkedText(
                  "White Papers",
                  icon: Icons.feed,
                  color: Colors.teal.shade400,
                ),
                LinkedText(
                  "eBooks",
                  color: Colors.tealAccent,
                  icon: Icons.menu_book,
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "EXPLORE",
                  style: TextStyle(
                      fontSize: 18.height,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const LinkedText(
                  "Home",
                ),
                const LinkedText(
                  "Articles",
                ),
                const LinkedText(
                  "Solutions",
                ),
                const LinkedText(
                  "Events & Webminars",
                ),
                const LinkedText(
                  "Podcasts",
                ),
                const Text(
                  "Companies",
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ABOUT",
                  style: TextStyle(
                      fontSize: 18.height,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const LinkedText(
                  "About NewsBizKoot",
                ),
                const LinkedText(
                  "Our Team",
                ),
                const LinkedText(
                  "Careers",
                ),
                const LinkedText(
                  "Newsletter",
                ),
                const LinkedText(
                  "Advertise",
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "COMMUNITY",
                  style: TextStyle(
                      fontSize: 18.height,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const LinkedText(
                  "Meet the community",
                ),
                const LinkedText(
                  "Become a Contributor",
                ),
                const LinkedText(
                  "Become a Partner",
                ),
                SizedBox(
                  height: 16.height,
                ),
                Text(
                  "SUBMIT CONTENT",
                  style: TextStyle(
                      fontSize: 18.height,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                ),
                const LinkedText(
                  "Submit a Guest Article",
                ),
                const LinkedText(
                  "Submit a Press Release",
                ),
                const LinkedText(
                  "Login",
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RequiredText extends StatelessWidget {
  final String text;
  const RequiredText({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          text,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.height),
        ),
        Text(
          "*",
          style: TextStyle(fontSize: 18.height, color: Colors.red),
        ),
      ],
    );
  }
}

class ProgressIndicator extends StatelessWidget {
  final int step;
  final bool hasReached;
  final String title;
  const ProgressIndicator({
    Key? key,
    required this.step,
    required this.hasReached,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ClipOval(
          child: Container(
            decoration: BoxDecoration(
                color: hasReached ? Colors.teal : const Color(0xFFF4F4F4),
                border: Border.all(
                  color: hasReached
                      ? Colors.teal.shade700
                      : const Color(0xFFccd2d7),
                  width: 2.width,
                ),
                shape: BoxShape.circle),
            height: 42.height,
            width: 42.height,
            child: Center(
              child: Text(
                step.toString(),
                style: TextStyle(
                  color: hasReached ? Colors.white : const Color(0xFF749b9b),
                  fontSize: 22.height,
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8.height,
        ),
        Text(title)
      ],
    );
  }
}

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.menu_rounded),
                iconSize: 48.height,
              ),
              SizedBox(
                width: 8.width,
              ),
              Text(
                "Newsbizkoot",
                style:
                    TextStyle(fontSize: 24.height, fontWeight: FontWeight.w700),
              ),
              const Spacer(),
            ],
          ),
          flex: 6,
        ),
        Expanded(
          child: Row(
            children: [
              Flexible(
                child: SizedBox(
                  height: 48.height,
                  child: TextFormField(
                    decoration: InputDecoration(
                      hintText: "Search",
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(8.height),
                            right: Radius.zero),
                        borderSide: BorderSide(
                            color: Colors.grey.shade300, width: 2.width),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(8.height),
                            right: Radius.zero),
                        borderSide: BorderSide(
                            color: const Color(0xFF1396A0), width: 3.width),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.horizontal(
                            left: Radius.circular(8.height),
                            right: Radius.zero),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48.height,
                width: 48.height,
                child: IconButton(
                  padding: EdgeInsets.zero,
                  splashRadius: 16.height,
                  onPressed: () {},
                  iconSize: 28.height,
                  icon: Container(
                    padding: EdgeInsets.all(8.height),
                    child: const Icon(
                      Icons.search_rounded,
                      color: Colors.white,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF1396A0),
                      borderRadius: BorderRadius.horizontal(
                          left: const Radius.circular(0),
                          right: Radius.circular(8.height)),
                    ),
                    height: 48.height,
                    width: 48.height,
                  ),
                ),
              ),
            ],
          ),
          flex: 2,
        )
      ],
    );
  }
}

class LinkedText extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color color;
  const LinkedText(
    this.text, {
    Key? key,
    this.icon,
    this.color = Colors.white,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: InkWell(
        onTap: () {},
        child: Row(
          children: [
            icon != null
                ? Icon(
                    icon,
                    color: color,
                    size: 16.height,
                  )
                : const SizedBox(),
            SizedBox(
              width: icon != null ? 8.width : 0,
            ),
            Text(
              text,
              style: TextStyle(fontSize: 14.height, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}

class SizeProvider {
  static late double heightRatio;
  static late double widthRatio;
  init(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    heightRatio = size.height / 789;
    widthRatio = size.width / 1440;
  }
}

extension SizeProviderExtension on int {
  double get height {
    return this * SizeProvider.heightRatio;
  }

  double get width {
    return this * SizeProvider.widthRatio;
  }
}
