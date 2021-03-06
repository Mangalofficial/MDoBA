import 'package:flutter/material.dart';

String doc = '''
\n๐๐ผ๐ฐ๐ธ๐ฒ๐ฟ is a platform for developers and sysadmins to build, run, and share applications with containers. 
The use of containers to deploy applications is called ๐๐ผ๐ป๐๐ฎ๐ถ๐ป๐ฒ๐ฟ๐ถ๐๐ฎ๐๐ถ๐ผ๐ป.
๐๐ผ๐ป๐๐ฎ๐ถ๐ป๐ฒ๐ฟ๐ถ๐๐ฎ๐๐ถ๐ผ๐ป is increasingly popular because containers are :\n
โข ๐๐น๐ฒ๐๐ถ๐ฏ๐น๐ฒ : Even the most complex applications can be containerized.
โข ๐๐ถ๐ด๐ต๐๐๐ฒ๐ถ๐ด๐ต๐ : Containers leverage and share the host kernel, making them much more efficient in terms of system resources than virtual machines.
โข ๐ฃ๐ผ๐ฟ๐๐ฎ๐ฏ๐น๐ฒ : You can build locally, deploy to the cloud, and run anywhere.
โข ๐๐ผ๐ผ๐๐ฒ๐น๐ ๐ฐ๐ผ๐๐ฝ๐น๐ฒ๐ฑ : Containers are highly self sufficient and encapsulated, allowing you to replace or upgrade one without disrupting others.
โข ๐ฆ๐ฐ๐ฎ๐น๐ฎ๐ฏ๐น๐ฒ : You can increase and automatically distribute container replicas across a datacenter.
โข ๐ฆ๐ฒ๐ฐ๐๐ฟ๐ฒ : Containers apply aggressive constraints and isolations to processes without any configuration required on the part of the user.''';

String doc1 = '''
\nโข ๐๐ค๐๐ ๐๐ง ๐๐ฉ๐ฉ๐๐๐ :	Attach local standard input, output, and error streams to a running container
โข ๐๐ค๐๐ ๐๐ง ๐๐ช๐๐ก๐ : Build an image from a Dockerfile
โข ๐๐ค๐๐ ๐๐ง ๐๐ค๐ข๐ข๐๐ฉ :Create a new image from a containerโs changes
โข ๐๐ค๐๐ ๐๐ง ๐๐ค๐ฃ๐ฉ๐๐๐ฃ๐๐ง : Manage containers
โข ๐๐ค๐๐ ๐๐ง ๐๐ฅ : Copy files/folders between a container and the local filesystem
โข ๐๐ค๐๐ ๐๐ง ๐๐ง๐๐๐ฉ๐ : Create a new container
โข ๐๐ค๐๐ ๐๐ง ๐๐ญ๐๐ :	Run a command in a running container
โข ๐๐ค๐๐ ๐๐ง ๐๐ญ๐ฅ๐ค๐ง๐ฉ :	Export a containerโs filesystem as a tar archive
โข ๐๐ค๐๐ ๐๐ง ๐๐ข๐๐๐๐จ :	List images
โข ๐๐ค๐๐ ๐๐ง ๐๐ฃ๐๐ค :	Display system-wide information
โข ๐๐ค๐๐ ๐๐ง ๐๐ฃ๐จ๐ฅ๐๐๐ฉ :	Return low-level information on Docker objects
โข ๐๐ค๐๐ ๐๐ง ๐ก๐ค๐๐๐ฃ :	Log in to a Docker registry
โข ๐๐ค๐๐ ๐๐ง ๐ก๐ค๐๐ค๐ช๐ฉ : Log out from a Docker registry
โข ๐๐ค๐๐ ๐๐ง ๐ก๐ค๐๐จ : Fetch the logs of a container
โข ๐๐ค๐๐ ๐๐ง ๐ฃ๐๐ฉ๐ฌ๐ค๐ง๐  :	Manage networks
โข ๐๐ค๐๐ ๐๐ง ๐ฅ๐๐ช๐จ๐ :	Pause all processes within one or more containers
โข ๐๐ค๐๐ ๐๐ง ๐ฅ๐ค๐ง๐ฉ :	List port mappings or a specific mapping for the container
โข ๐๐ค๐๐ ๐๐ง ๐ฅ๐จ :	List containers
โข ๐๐ค๐๐ ๐๐ง ๐ฅ๐ช๐ก๐ก :	Pull an image or a repository from a registry
โข ๐๐ค๐๐ ๐๐ง ๐ฅ๐ช๐จ๐ :	Push an image or a repository to a registry
โข ๐๐ค๐๐ ๐๐ง ๐ง๐๐ฃ๐๐ข๐ :	Rename a container
โข ๐๐ค๐๐ ๐๐ง ๐ง๐๐จ๐ฉ๐๐ง๐ฉ :	Restart one or more containers
โข ๐๐ค๐๐ ๐๐ง ๐ง๐ข :	Remove one or more containers
โข ๐๐ค๐๐ ๐๐ง ๐ง๐ข๐ :	Remove one or more images
โข ๐๐ค๐๐ ๐๐ง ๐ง๐ช๐ฃ :	Run a command in a new container
โข ๐๐ค๐๐ ๐๐ง ๐จ๐๐๐ง๐๐ฉ :	Manage Docker secrets
โข ๐๐ค๐๐ ๐๐ง ๐จ๐๐ง๐ซ๐๐๐ :	Manage services
โข ๐๐ค๐๐ ๐๐ง ๐จ๐ฉ๐๐ง๐ฉ :	Start one or more stopped containers
โข ๐๐ค๐๐ ๐๐ง ๐จ๐ฉ๐ค๐ฅ :	Stop one or more running containers
โข ๐๐ค๐๐ ๐๐ง ๐ฉ๐๐ :	Create a tag TARGET_IMAGE that refers to SOURCE_IMAGE
โข ๐๐ค๐๐ ๐๐ง ๐ซ๐๐ง๐จ๐๐ค๐ฃ :	Show the Docker version information
โข ๐๐ค๐๐ ๐๐ง ๐ซ๐ค๐ก๐ช๐ข๐ :	Manage volumes''';

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
