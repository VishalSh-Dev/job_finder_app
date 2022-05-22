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
        'Google LLC ',
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
        'Cognizant ',
        'assets/images/cognizant.png',
        true,
        'Apache Solr',
        'Kolkata, WestBengal\nIndia',
        'Full-Time',
        [
          'Should have Very good experience in Apache SOLR',
          'Should have strong experience in core JAVA, spring, RESTful services',
          'Good hands-on schema design, analyzer and filter configuration',
          'Knowledge in Apache SOLR architecture and Environment setup/Administration, SOLR Cloud and its architecture',
          'Analytical mind with a problem-solving aptitude',
        ],
      ),
      Job(
        'Oracle ',
        'assets/images/oracle.png',
        true,
        'EPM,LEAD INTEGRATIONS',
        'Hyderabad \nIndia',
        'Full-Time',
        [
          'Gather integration requirements; plan, coordinate and participate in workshops, solution refinement, development activities, and support the testing of integrations',
          'Exhibit confidence and ease when interacting with technical counterpart, middle and senior-level managers (client and internal);',
          'Provide pre-sales support in terms of EPM Integrations, automations.',
          'Provide expertise in building innovative solutions for EPM scope',
          'Working knowledge on Core EPM skills like EPBCS, FCCS and ARCS',
        ],
      ),
      Job(
        'Mindtree ',
        'assets/images/mindtree.png',
        false,
        'Data BA Data Analysis',
        'Bangalore,Karnataka \nIndia',
        'Full-Time',
        [
          'Data BA with Analytics experience Data scientist who has experience working in Media and Competitive Analytics area will be responsible for the following and may work very closely with the client on a daily basis.',
          'Contribute to the strategy and business development organization by providing market intelligence expertise, market assessments, price forecasts, economic valuations, dashboards and related analytics',
          'Ongoing tracking and analysis of key competitors, and emerging competitive threats and trends',
          'Demonstrate an ability to implement competitive insight and analysis projects in support of assigned business unit region',
          'Demonstrate an ability to implement competitive insight and analysis projects in support of assigned business unit region',
        ],
      ),
    ];
  }
}
