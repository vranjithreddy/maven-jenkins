node {
   #// Mark the code checkout 'stage'....
   stage 'Checkout'
   
   git url: 'https://github.com/vranjithreddy/maven-jenkins.git'

   // Get the maven tool.
   // ** NOTE: This 'M3' maven tool must be configured
   // **       in the global configuration.           
   def mvnHome = tool 'mvn'

   // Mark the code build 'stage'....
   stage 'Build'
   // Run the maven build
   sh "${mvnHome}/bin/mvn -Dmaven.test.failure.ignore clean package"
   step([$class: 'JUnitResultArchiver', testResults: '**/target/surefire-reports/TEST-*.xml'])
}
