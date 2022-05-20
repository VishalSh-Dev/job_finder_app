class Job {
  String company;
  String logoURL;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;
  Job(this.company, this.logoURL, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<Job> generateJobs() {
    return [
      Job(
        'Google LLC, ',
        'assets/images/google_logo.png',
        false,
        'Principle Product Design',
        '417 Marion, New York\nUnited States',
        'Full-Time',
        [
          'Creative, with an eye for shape and color.',
          'Understand different materials and production methods.',
          'Curious about technical, practical and scientific knowledge. ',
          'Interested in the way people choose and use product.',
        ],
      ),
      Job(
        'Airbnb Inc, ',
        'assests/images/airbnb_logo.png',
        true,
        'Business Intelligence',
        'Gurugram, Delhi\nIndia',
        'Full-Time',
        [
          'Background in data warehouse design and data mining.',
          'Familiarity with BI technologies (e.g. Microsoft Power BI, Oracle BI)',
          'In-depth understanding of database management systems, online analytical processing (OLAP) and ETL (Extract, transform, load) framework',
          'Proven abilities to take initiative and be innovative',
          'Analytical mind with a problem-solving aptitude',
        ],
      ),
    ];
  }
}
