# 🏫 SAGE Education - Institutional Management / ERP

**Module:** AMS, SMS & EIS  
**Version:** 2.0.x  
**Tryton:**: 8.0.x


---


## 📘 About the Project

**SAGE Education** is a ***free and open-source*** project for ***educators, educational institutions, and governments***.
It provides the functionality of **Academic Management System (AMS), School Management System (SMS), and Educational Information System (EIS)**.
Its ***modular, scalable, and secure*** design allows it to be implemented in many different scenarios: from **small schools** and **training centers** to **large national public education systems**.

SAGE Education has a growing, committed, and friendly community that brings together the best in the fields of ***educational sciences, pedagogy, educational technology, and computer science***.
No matter where in the world you live, we are passionate about upholding education and educational technology as a non-negotiable human right.

We hope you find **SAGE Education** motivating and inspiring, and we look forward to having you as part of the team.


We host a public demo server where you can try out SAGE Education with different access profiles:
[app.sage-edu.comunidadedosaber.ao](https://app.sage-edu.comunidadedosaber.ao)  


| Profile    | User      | Password        |
|------------|-----------|-----------------|
| Student    | student   | sage_education  |
| Teacher    | teacher   | sage_education  |
| Secretary  | secretary | sage_education  |
| Direction  | direction | sage_education  |
| Admin      | admin     | sage_admin      |


---


## ⚙️ SAGE Education Modules

**🎓 AMS** - Academic Management System

**🏫 SMS** - School Management System

**🏢 EIS** - Educational Information System

### 🎯 Core Purpose

SAGE Education centralizes **all aspects of school management**, including:
- Institutional organization
- Academic structure and courses
- Student enrollment and transfers
- Class management, teachers, and attendance
- Evaluations and metrics
- Reports, dashboards, and user interfaces

### ✨ Modules Overview

#### 🏛️ Akademy Party – Base Party Management
- [https://github.com/comunidade-do-saber/akademy-party](https://github.com/comunidade-do-saber/akademy-party) 

#### 🏢 Akademy Company – Institutional Management
- [https://github.com/comunidade-do-saber/akademy-company](https://github.com/comunidade-do-saber/akademy-company) 

#### 🏫 Akademy Class – Academic & Class Management
- [https://github.com/comunidade-do-saber/akademy-classe](https://github.com/comunidade-do-saber/akademy-classe) 
- [https://github.com/comunidade-do-saber/akademy-classe-evaluation](https://github.com/comunidade-do-saber/akademy-classe-evaluation) 

#### 📝 Akademy Matriculation – Enrollment & Applications
- [https://github.com/comunidade-do-saber/akademy-matriculation](https://github.com/comunidade-do-saber/akademy-matriculation) 
- [https://github.com/comunidade-do-saber/akademy-matriculation_confirmation](https://github.com/comunidade-do-saber/akademy-matriculation_confirmation) 


---


## 🌍 Target Audience

- Educational institutions
- System administrators
- Open-source contributors
- Governments and NGOs
- Educational software integrators


### 🌐 Homepage

**Website:** [comunidadedosaber.ao](https://comunidadedosaber.ao)  
**App:** [app.sage-edu.comunidadedosaber.ao](https://app.sage-edu.comunidadedosaber.ao)  
**Docs:** [docs.sage-edu.comunidadedosaber.ao](https://docs.sage-edu.comunidadedosaber.ao)  
**Team:** [comunidadedosaber.ao](https://comunidadedosaber.ao)  
**PyPi:** [SAGE Edu](https://pypi.org/user/comunidade_do_saber)    


---


## 🤝 Contributing

Contributions are welcome!
Please open an issue or submit a pull request following the SAGE Edu contribution guidelines.

### 💬 Technical Support

If you encounter any errors or require technical support, please contact us through the channels below:

- 📧 **E-mail:** 
    -   [suporte@comunidadedosaber.ao](mailto:suporte@comunidadedosaber.ao)
    -   [comercial@comunidadedosaber.ao](mailto:comercial@comunidadedosaber.ao)
- 💬 **WhatsApp:** [+244 955 868 110](https://wa.me/244955868110)


---


## 📋 Installation (v2.0)


### 🐳 Quick Start with Docker (Recommended)
```bash
git clone https://github.com/comunidade-do-saber/sage-edu.git
cd sage-edu/docker
docker compose up -d
```


### 🔧 PIP Installation (Manual)

Before starting, make sure you have one of the following components installed in version 8.0 to access the client environment:

- [Tryton Server](https://www.tryton.org/)
- [Tryton Desktop Client](https://www.tryton.org/)
- [Tryton Web Client](https://www.npmjs.com/package/tryton-sao)

It is also possible to install SAGE Edu using pip.
To do this, you will need:

* Have PostgreSQL installed and configured

Including user creation and permissions.

* Create the database

* Install modules throw PIP

```bash
pip install akademy-party
pip install akademy-company
pip install akademy-classe
pip install akademy-classe-evaluation
pip install akademy-matriculation
pip install akademy-matriculation-confirmation
```

* Create Tryton configuration file (trytond.conf)
```bash
[database]
uri = postgresql://user:password@localhost:5432/data_base
```

