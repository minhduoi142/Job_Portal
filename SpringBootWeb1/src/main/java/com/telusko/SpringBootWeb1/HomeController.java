    package com.telusko.SpringBootWeb1;

    import com.telusko.SpringBootWeb1.model.JobPost;
    import com.telusko.SpringBootWeb1.service.JobService;
    import org.springframework.beans.factory.annotation.Autowired;
    import org.springframework.stereotype.Controller;
    import org.springframework.ui.Model;
    import org.springframework.web.bind.annotation.GetMapping;
    import org.springframework.web.bind.annotation.PostMapping;
    import org.springframework.web.bind.annotation.RequestMapping;

    import java.util.List;

    @Controller
    public class HomeController {
    @RequestMapping({"/", "home"})
        public String home()
        {
            System.out.println("called");
            return "index.jsp";
        }
        @GetMapping("addjob")
        public String add()
        {
            return "addjob.jsp";
        }

  @Autowired
        JobService service;

    @PostMapping("handleForm")
        public String handle(JobPost jobPost)
        {
            service.addJob(jobPost);

            return "success.jsp";
        }

        @GetMapping("viewalljobs")
        public String viewall(Model m)
        {
            List<JobPost> jobs = service.getAllJobs();
            System.out.println(jobs);
            m.addAttribute("jobPosts", jobs);
            return "viewall.jsp";
        }
    }
