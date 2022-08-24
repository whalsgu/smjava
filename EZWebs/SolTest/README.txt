[Maven Project]

java -jar SolTest.jar

(pom.xml)

 <build>
    <pluginManagement><!-- lock down plugins versions to avoid using Maven defaults (may be moved to parent pom) -->
      <plugins>

        <plugin>
          <artifactId>maven-jar-plugin</artifactId>
          <version>3.0.2</version>
		  <configuration>
			<archive>
				<manifest>
					<addClasspath>true</addClasspath>
					<mainClass>com.solero.App</mainClass>
				</manifest>
			</archive>
		  </configuration>
        </plugin>
        
      </plugins>
    </pluginManagement>
  </build>
        