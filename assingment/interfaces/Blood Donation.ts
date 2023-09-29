import { BloodDonationEvent } from "./Blood Donation Events";
import { BloodTestingAndScreening } from "./Blood Testing and Screening";
import { Donor } from "./Donor";
import { FeedbackAndSurvey } from "./Feedback and Surveys";
import { Recipient } from "./Recipient";

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
