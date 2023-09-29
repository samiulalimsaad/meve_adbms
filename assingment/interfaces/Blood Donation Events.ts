export interface BloodDonationEvent {
    event_id: number;
    eventname: string;
    event_date_and_time: Date;
    location: Location;
    organizer_information: string;
    donor_registration: string;
    donation_statistics: string;
}
