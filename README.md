# Hospital Management System (HMS) - Standalone Application

Welcome to the **Hospital Management System (HMS)**! This is a standalone Java application designed to manage hospital operations, including patient registration, doctor scheduling, billing, and report generation. This guide provides step-by-step instructions for installing and running the HMS application on your system.

## Table of Contents
- [About the Project](#about-the-project)
- [Features](#features)
- [Technologies Used](#technologies-used)
- [Installation](#installation)
- [Configuration](#configuration)
- [Usage](#usage)
- [Screenshots](#screenshots)
- [Contributing](#contributing)
- [License](#license)
- [Contact](#contact)

---

## About the Project

The Hospital Management System (HMS) is an offline application built for hospitals to manage day-to-day operations efficiently. This system enables the hospital staff to handle tasks like patient registration, doctor appointments, billing, and report generation, all in one application.

## Features

- **Patient Management**: Register new patients, update records, and view patient history.
- **Doctor Scheduling**: Assign doctors to patients, view schedules, and manage appointments.
- **Billing System**: Generate and manage bills for patient services.
- **Reports**: Generate detailed reports for patients, doctors, and billing.

## Technologies Used

- **Language**: Java
- **Database**: MySQL
- **GUI**: Java Swing for user interface
- **Build Tool**: Apache Ant or Maven for project management

## Installation

Follow these steps to install the HMS application:

1. **Create the Project Folder**:
   - On your desktop, create a folder named `HMS Final Project`. This is essential for the application to function correctly.

2. **Set up the Configuration Folder**:
   - Go to `C:\` and create a folder named `System.cfg`. This folder will be used by the application for configuration settings.

3. **Navigate to the Setup Folder**:
   - Inside `Desktop\HMS Final Project`, open the `setup` folder.

4. **Install the HMS Application**:
   - Run `HMSsetup.exe` from the `setup` folder to install the application.

5. **Database Setup**:
   - You can find the SQL file required for setting up the database in `Desktop\HMS Final Project\backup`.
   - Import this SQL file into your MySQL database to initialize the HMS database.

6. **Clean and Build the Project (Optional)**:
   - To reduce the download size, some project files were cleaned. It is recommended (but not mandatory) to clean and build the project from your Java IDE to ensure all dependencies are correctly configured.

7. **Complete**:
   - That’s all! The application is now ready to use.

## Configuration

- **Database Configuration**: Ensure the MySQL database connection details in the `config` file match your MySQL setup.
- **System.cfg**: Keep the `System.cfg` folder at `C:\` to ensure smooth operation of the application.

## Usage

1. **Launch the Application**:
   - After installation, open the application from the installed shortcut or the `HMS Final Project` folder on the desktop.
   
2. **Login**:
   - Log in with your user credentials.
   
3. **Access Features**:
   - Use the navigation menu to access patient management, doctor scheduling, billing, and reports.

## Screenshots

**EER**
![eer](https://github.com/user-attachments/assets/67d03615-0696-4633-9f72-68dd89c7be6e)

**UML**
![hms](https://github.com/user-attachments/assets/b61ac759-e923-4ce3-9a89-47bcae650bde)

**UI**
![Patient Care](https://github.com/user-attachments/assets/462ef6a3-ac04-41c1-a033-5847cfbc9482)
![path](https://github.com/user-attachments/assets/a53d5837-4659-4a09-8272-81d1cb8e937d)
![opdcheckout](https://github.com/user-attachments/assets/e399aadc-0ae9-4350-81e5-8ed096fd2017)
![OPD Treatment](https://github.com/user-attachments/assets/1be325e8-1b1d-4ca1-af16-132ac19eca5b)
![OPD Reception](https://github.com/user-attachments/assets/395de3d6-108d-452a-a39a-45fa94782282)
![OPD Doctor](https://github.com/user-attachments/assets/13614a87-c497-455e-a48f-2efbddf9ea81)
![login](https://github.com/user-attachments/assets/2044c8d7-c7b4-4fa7-9de0-40edaafd2546)
![ipdcheckout](https://github.com/user-attachments/assets/84b5dddb-9000-4492-9cc2-e24dd27d2742)
![IPD Treatment](https://github.com/user-attachments/assets/2bff197d-3c68-45e7-b319-c0d9e22d00ca)
![IPD Reception](https://github.com/user-attachments/assets/2c0c0fd4-375b-429c-8255-2b91dfdfe1bd)
![IPD Doctor](https://github.com/user-attachments/assets/1f4fba64-761e-4275-8ad8-a5539b9dafc9)
![Home](https://github.com/user-attachments/assets/f99a4e92-eed3-4678-990f-202827500fe8)
![Drugs management](https://github.com/user-attachments/assets/1c315909-91f2-4546-9308-1a817db454a5)
![doctor charge](https://github.com/user-attachments/assets/62a527e1-0b2a-40a5-b10c-ec1c21e0c2a4)
![city](https://github.com/user-attachments/assets/1c4852a3-aa8d-4c96-8acf-298334fa8b5c)
![blood type](https://github.com/user-attachments/assets/23eeb1a4-27f9-4faf-ad78-13b00dc8ff3c)
![user type](https://github.com/user-attachments/assets/ebaa5c7c-16f8-4986-b676-1af524816cd5)
![treatment times](https://github.com/user-attachments/assets/232fd4b6-fa54-479d-9e3d-e24fd990ade5)
![system_user](https://github.com/user-attachments/assets/f4b5e0c5-aa3c-43f3-94ab-0e5582244ad9)
![system user](https://github.com/user-attachments/assets/2738e29e-6fbf-49a1-b5eb-b4b65b1a9d36)
![stuff registration](https://github.com/user-attachments/assets/3981b33c-eb3b-4e77-83fa-fe0bb05539bd)
![Screenshot (13725)](https://github.com/user-attachments/assets/c7a311d7-7ae4-461e-b80f-149d8092f90c)
![Room management](https://github.com/user-attachments/assets/69843f2d-f927-4fe9-a716-d9b2dcbb514a)
![Pharmacy](https://github.com/user-attachments/assets/baf0e268-5484-49e1-978e-dcff16faad19)
![patient_reason](https://github.com/user-attachments/assets/0382f5ef-120d-4931-a40b-1a823ac5e2b1)
![Patient Registration](https://github.com/user-attachments/assets/4fd3d461-a27e-4f6f-aa3c-a84bd0cd2a1a)

**Reports**
[patient_ipd_ad.pdf](https://github.com/user-attachments/files/17721230/patient_ipd_ad.pdf)
[opd_recept.pdf](https://github.com/user-attachments/files/17721229/opd_recept.pdf)
[ipd_patient_admintted_registration_Reciept.pdf](https://github.com/user-attachments/files/17721227/ipd_patient_admintted_registration_Reciept.pdf)
[ipd_invoice_main.pdf](https://github.com/user-attachments/files/17721226/ipd_invoice_main.pdf)
[invoice_main.pdf](https://github.com/user-attachments/files/17721225/invoice_main.pdf)


## Contributing

Contributions are welcome! Please open issues or submit pull requests to enhance the HMS application.

## License

This project is licensed under the MIT License - see the LICENSE file for details.

## Contact

For any questions or additional information, feel free to reach out via email: [manulakavishka7@gmail.com](mailto:manulakavishka7@gmail.com).
