from locust import HttpUser, task, between

class NodeAppUser(HttpUser):
    wait_time = between(1, 2)

    @task
    def get_root(self):
        self.client.get("/")