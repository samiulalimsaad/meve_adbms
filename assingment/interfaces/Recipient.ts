import { ContactInformation } from "./Contact Information";

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
