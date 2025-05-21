pipeline {
    agent any
    stages {
        stage('List Credentials') {
            steps {
                script {
                    def creds = com.cloudbees.plugins.credentials.CredentialsProvider.lookupCredentials(
                        com.cloudbees.plugins.credentials.common.StandardUsernamePasswordCredentials.class,
                        Jenkins.instance,
                        null,
                        null
                    )
                    echo "Credenciales disponibles:"
                    creds.each { c ->
                        echo "- ${c.id} (usuario: ${c.username})"
                    }
                }
            }
        }
    }
}
 