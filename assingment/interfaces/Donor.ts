import { ContactInformation } from "./Contact Information";

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
