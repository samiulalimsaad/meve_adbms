import { Donor } from "./Donor";

export interface EmergencyRequests {
    emergency_id: number;
    urgency_level: string;
    requesting_hospital_information: string;
    blood_type: string;
    quantity_needed: number;
    delivery_instructions: string;
    donor: Donor;
}
