export interface BloodDonation {
    blood_id: number;
    blood_bag_id_or_barcode: string;
    blood_type: string;
    donation_date: Date;
    expiration_date: Date;
    storage_location: string;
    quantity: number;
    blood_group: string;
    rh_factor: string;
    test_results: BloodTestingAndScreening;
    donor_id: Donor;
    recipient_id: Recipient;
    blood_event_id: BloodDonationEvent;
    feedback: FeedbackAndSurvey;
}

export interface BloodTestingAndScreening {
    blood_test_id: number;
    test_results: string;
    screening_date: Date;
    testing_laboratory_information: string;
    report: ReportsAndAnalytics;
}

export interface FeedbackAndSurvey {
    feedback_id: number;
    recipient_feedback: string;
    survey_responses: string;
    improvement_suggestions?: string;
    donor_feedback: string;
}

export interface BloodDonationEvent {
    event_id: number;
    eventname: string;
    event_date_and_time: Date;
    location: Location;
    organizer_information: string;
    donor_registration: string;
    donation_statistics: string;
}

export interface ReportsAndAnalytics {
    report_id: number;
    donation_reports: string;
    inventory_reports: string;
    donor_recipient_statistics: string;
    blood_type_distribution: string;
}

export interface EmergencyRequests {
    emergency_id: number;
    urgency_level: string;
    requesting_hospital_information: string;
    blood_type: string;
    quantity_needed: number;
    delivery_instructions: string;
    donor: Donor;
}

export interface DonorRecognitionAndRewards {
    donor_id: number;
    donor_awards_and_recognition: string;
    points_or_reward_system: string;
}

export interface Donor {
    donor_id: number;
    name: string;
    date_of_birth: Date;
    blood_type: string;
    weight: number;
    gender: string;
    id_card_number: string;
    last_donation_date: Date;
    contact_information: ContactInformation;
    address: Location;
}

export interface Location {
    location_id: number;
    name: string;
    address: string;
    city: string;
    state: string;
    postal_code: string;
    country: string;
    latitude: number;
    longitude: number;
    description: string;
    contact_number: string;
}

export interface ContactInformation {
    contact_id: number;
    email: string;
    phone_number: string;
}

export interface Recipient {
    recipient_id: number;
    name: string;
    date_of_birth: Date;
    blood_type: string;
    medical_history: string;
    doctors_prescription: string;
    hospital_information: string;
    emergency_contact: string;
    contact_information: ContactInformation;
    address: Location;
}

export interface SupportAndHelpCenter {
    support_id: number;
    faqs: string;
    user_guides: string;
    contact_support: string;
}

export interface StaffAndUserManagementProps {
    user_id: number;
    staff_username: string;
    role_permissions: string;
    contact_information: string;
    login_credentials: string;
    activity_logs: ActivityLog;
}
export interface ActivityLog {
    log_id: number;
    timestamp: Date;
    user_id: number;
    action: string;
    description: string;
}
