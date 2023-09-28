import { ReportsAndAnalytics } from "./Reports and Analytics";

export interface BloodTestingAndScreening {
    blood_test_id: number;
    test_results: string;
    screening_date: Date;
    testing_laboratory_information: string;
    report: ReportsAndAnalytics;
}
