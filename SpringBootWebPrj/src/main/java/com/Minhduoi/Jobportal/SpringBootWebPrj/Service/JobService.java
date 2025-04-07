package com.Minhduoi.Jobportal.SpringBootWebPrj.Service;

import com.Minhduoi.Jobportal.SpringBootWebPrj.Model.JobPost;
import com.Minhduoi.Jobportal.SpringBootWebPrj.Repo.JobRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service
public class JobService {

    @Autowired
    JobRepo repo;
    public void addJob(JobPost jobPost)
    {
        repo.addJob(jobPost);
    }

    public List<JobPost> getAllJobs(){
        return repo.getAllJobs();
    }


}
