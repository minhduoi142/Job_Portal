package com.telusko.SpringBootWeb1.service;

import com.telusko.SpringBootWeb1.model.JobPost;
import com.telusko.SpringBootWeb1.repo.JobRepo;
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
