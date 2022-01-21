import 'package:flutter/material.dart';

String doc = '''
\n𝗗𝗼𝗰𝗸𝗲𝗿 is a platform for developers and sysadmins to build, run, and share applications with containers. 
The use of containers to deploy applications is called 𝗖𝗼𝗻𝘁𝗮𝗶𝗻𝗲𝗿𝗶𝘇𝗮𝘁𝗶𝗼𝗻.
𝗖𝗼𝗻𝘁𝗮𝗶𝗻𝗲𝗿𝗶𝘇𝗮𝘁𝗶𝗼𝗻 is increasingly popular because containers are :\n
• 𝗙𝗹𝗲𝘅𝗶𝗯𝗹𝗲 : Even the most complex applications can be containerized.
• 𝗟𝗶𝗴𝗵𝘁𝘄𝗲𝗶𝗴𝗵𝘁 : Containers leverage and share the host kernel, making them much more efficient in terms of system resources than virtual machines.
• 𝗣𝗼𝗿𝘁𝗮𝗯𝗹𝗲 : You can build locally, deploy to the cloud, and run anywhere.
• 𝗟𝗼𝗼𝘀𝗲𝗹𝘆 𝗰𝗼𝘂𝗽𝗹𝗲𝗱 : Containers are highly self sufficient and encapsulated, allowing you to replace or upgrade one without disrupting others.
• 𝗦𝗰𝗮𝗹𝗮𝗯𝗹𝗲 : You can increase and automatically distribute container replicas across a datacenter.
• 𝗦𝗲𝗰𝘂𝗿𝗲 : Containers apply aggressive constraints and isolations to processes without any configuration required on the part of the user.''';

String doc1 = '''
\n• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙖𝙩𝙩𝙖𝙘𝙝 :	Attach local standard input, output, and error streams to a running container
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙗𝙪𝙞𝙡𝙙 : Build an image from a Dockerfile
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙘𝙤𝙢𝙢𝙞𝙩 :Create a new image from a container’s changes
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙘𝙤𝙣𝙩𝙖𝙞𝙣𝙚𝙧 : Manage containers
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙘𝙥 : Copy files/folders between a container and the local filesystem
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙘𝙧𝙚𝙖𝙩𝙚 : Create a new container
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙚𝙭𝙚𝙘 :	Run a command in a running container
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙚𝙭𝙥𝙤𝙧𝙩 :	Export a container’s filesystem as a tar archive
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙞𝙢𝙖𝙜𝙚𝙨 :	List images
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙞𝙣𝙛𝙤 :	Display system-wide information
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙞𝙣𝙨𝙥𝙚𝙘𝙩 :	Return low-level information on Docker objects
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙡𝙤𝙜𝙞𝙣 :	Log in to a Docker registry
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙡𝙤𝙜𝙤𝙪𝙩 : Log out from a Docker registry
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙡𝙤𝙜𝙨 : Fetch the logs of a container
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙣𝙚𝙩𝙬𝙤𝙧𝙠 :	Manage networks
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙥𝙖𝙪𝙨𝙚 :	Pause all processes within one or more containers
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙥𝙤𝙧𝙩 :	List port mappings or a specific mapping for the container
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙥𝙨 :	List containers
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙥𝙪𝙡𝙡 :	Pull an image or a repository from a registry
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙥𝙪𝙨𝙝 :	Push an image or a repository to a registry
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙧𝙚𝙣𝙖𝙢𝙚 :	Rename a container
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙧𝙚𝙨𝙩𝙖𝙧𝙩 :	Restart one or more containers
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙧𝙢 :	Remove one or more containers
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙧𝙢𝙞 :	Remove one or more images
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙧𝙪𝙣 :	Run a command in a new container
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙨𝙚𝙘𝙧𝙚𝙩 :	Manage Docker secrets
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙨𝙚𝙧𝙫𝙞𝙘𝙚 :	Manage services
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙨𝙩𝙖𝙧𝙩 :	Start one or more stopped containers
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙨𝙩𝙤𝙥 :	Stop one or more running containers
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙩𝙖𝙜 :	Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙫𝙚𝙧𝙨𝙞𝙤𝙣 :	Show the Docker version information
• 𝙙𝙤𝙘𝙠𝙚𝙧 𝙫𝙤𝙡𝙪𝙢𝙚 :	Manage volumes''';

class MainContent extends StatefulWidget {
  @override
  _MainContentState createState() => _MainContentState();
}

class _MainContentState extends State<MainContent> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: ConstrainedBox(
        constraints: BoxConstraints(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              color: Colors.grey[50],
              height: MediaQuery.of(context).size.height,
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          height: 20,
                        ),
                        Image.asset('assets/Docker_intro.png'),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/docker.png',
                              height: 30,
                            ),
                            Text(
                              ' Introduction to Docker',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                height: 1,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          child: Text(doc),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Image.network(
                              'https://miro.medium.com/max/640/1*mSL3FhUJ2nS2avPyNd73aQ.png'),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Container(
                          child: Text(
                            '>>>   Docker Commands',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          height: 1020,
                          child: Text(doc1),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
