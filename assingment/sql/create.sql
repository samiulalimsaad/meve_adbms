-- Create the BloodTestingAndScreening table
CREATE TABLE
    BloodTestingAndScreening (
        blood_test_id NUMBER PRIMARY KEY,
        test_results VARCHAR2 (255),
        screening_date DATE,
        testing_laboratory_information VARCHAR2 (100),
        report_id NUMBER,
        FOREIGN KEY (report_id) REFERENCES ReportsAndAnalytics (report_id)
    );

-- Create the FeedbackAndSurvey table
CREATE TABLE
    FeedbackAndSurvey (
        feedback_id NUMBER PRIMARY KEY,
        recipient_feedback VARCHAR2 (255),
        survey_responses VARCHAR2 (255),
        improvement_suggestions VARCHAR2 (255),
        donor_feedback VARCHAR2 (255)
    );

-- Create the ReportsAndAnalytics table
CREATE TABLE
    ReportsAndAnalytics (
        report_id NUMBER PRIMARY KEY,
        donation_reports VARCHAR2 (255),
        inventory_reports VARCHAR2 (255),
        donor_recipient_statistics VARCHAR2 (255),
        blood_type_distribution VARCHAR2 (255)
    );

-- Create the Donor table
CREATE TABLE
    Donor (
        donor_id NUMBER PRIMARY KEY,
        name VARCHAR2 (100),
        date_of_birth DATE,
        blood_type VARCHAR2 (10),
        weight NUMBER,
        gender VARCHAR2 (10),
        id_card_number VARCHAR2 (20),
        last_donation_date DATE,
        contact_information_id NUMBER,
        address_id NUMBER,
        FOREIGN KEY (contact_information_id) REFERENCES ContactInformation (contact_id),
        FOREIGN KEY (address_id) REFERENCES Location (location_id)
    );

-- Create the Location table
CREATE TABLE
    Location (
        location_id NUMBER PRIMARY KEY,
        name VARCHAR2 (100),
        address VARCHAR2 (255),
        city VARCHAR2 (50),
        state VARCHAR2 (50),
        postal_code VARCHAR2 (20),
        country VARCHAR2 (50),
        latitude NUMBER,
        longitude NUMBER,
        description VARCHAR2 (255),
        contact_number VARCHAR2 (20)
    );

-- Create the ContactInformation table
CREATE TABLE
    ContactInformation (
        contact_id NUMBER PRIMARY KEY,
        email VARCHAR2 (100),
        phone_number VARCHAR2 (20)
    );

-- Create the Recipient table
CREATE TABLE
    Recipient (
        recipient_id NUMBER PRIMARY KEY,
        name VARCHAR2 (100),
        date_of_birth DATE,
        blood_type VARCHAR2 (10),
        medical_history VARCHAR2 (255),
        doctors_prescription VARCHAR2 (255),
        hospital_information VARCHAR2 (255),
        emergency_contact VARCHAR2 (100),
        contact_information_id NUMBER,
        address_id NUMBER,
        FOREIGN KEY (contact_information_id) REFERENCES ContactInformation (contact_id),
        FOREIGN KEY (address_id) REFERENCES Location (location_id)
    );

-- Create the BloodDonationEvent table
CREATE TABLE
    BloodDonationEvent (
        event_id NUMBER PRIMARY KEY,
        eventname VARCHAR2 (100),
        event_date_and_time DATE,
        location_id NUMBER,
        organizer_information VARCHAR2 (255),
        donor_registration VARCHAR2 (255),
        donation_statistics VARCHAR2 (255),
        FOREIGN KEY (location_id) REFERENCES Location (location_id)
    );

-- Create the BloodDonation table
CREATE TABLE
    BloodDonation (
        blood_id NUMBER PRIMARY KEY,
        blood_bag_id_or_barcode VARCHAR2 (255),
        blood_type VARCHAR2 (50),
        donation_date DATE,
        expiration_date DATE,
        storage_location VARCHAR2 (100),
        quantity NUMBER,
        blood_group VARCHAR2 (10),
        rh_factor VARCHAR2 (10),
        test_results_id NUMBER,
        donor_id NUMBER,
        recipient_id NUMBER,
        blood_event_id NUMBER,
        feedback_id NUMBER,
        FOREIGN KEY (test_results_id) REFERENCES BloodTestingAndScreening (blood_test_id),
        FOREIGN KEY (donor_id) REFERENCES Donor (donor_id),
        FOREIGN KEY (recipient_id) REFERENCES Recipient (recipient_id),
        FOREIGN KEY (blood_event_id) REFERENCES BloodDonationEvent (event_id),
        FOREIGN KEY (feedback_id) REFERENCES FeedbackAndSurvey (feedback_id)
    );

-- Create the EmergencyRequests table
CREATE TABLE
    EmergencyRequests (
        emergency_id NUMBER PRIMARY KEY,
        urgency_level VARCHAR2 (50),
        requesting_hospital_information VARCHAR2 (255),
        blood_type VARCHAR2 (10),
        quantity_needed NUMBER,
        delivery_instructions VARCHAR2 (255),
        donor_id NUMBER,
        FOREIGN KEY (donor_id) REFERENCES Donor (donor_id)
    );

-- Create the DonorRecognitionAndRewards table
CREATE TABLE
    DonorRecognitionAndRewards (
        donor_id NUMBER PRIMARY KEY,
        donor_awards_and_recognition VARCHAR2 (255),
        points_or_reward_system VARCHAR2 (255)
    );

-- Create the SupportAndHelpCenter table
CREATE TABLE
    SupportAndHelpCenter (
        support_id NUMBER PRIMARY KEY,
        faqs VARCHAR2 (255),
        user_guides VARCHAR2 (255),
        contact_support VARCHAR2 (255)
    );

-- Create the StaffAndUserManagement table
CREATE TABLE
    StaffAndUserManagement (
        user_id NUMBER PRIMARY KEY,
        staff_username VARCHAR2 (50),
        role_permissions VARCHAR2 (100),
        contact_information VARCHAR2 (255),
        login_credentials VARCHAR2 (255),
        activity_logs_id NUMBER,
        FOREIGN KEY (activity_logs_id) REFERENCES ActivityLog (log_id)
    );

-- Create the ActivityLog table
CREATE TABLE
    ActivityLog (
        log_id NUMBER PRIMARY KEY,
        timestamp DATE,
        user_id NUMBER,
        action VARCHAR2 (100),
        description VARCHAR2 (255)
    );