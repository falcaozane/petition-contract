library;

use core::ops::Eq;
use core::cmp::PartialEq;

/// Represents the current state of the campaign.
pub enum CampaignState {
    /// The campaign has been cancelled.
    pub Cancelled: (),
    /// The campain was successful
    pub Successful: (),
    /// The campaign is still accepting funds.
    pub Progress: (),
}

impl PartialEq for CampaignState {
    fn eq(&self, other: &Self) -> bool {
        match (self, other) {
            (CampaignState::Cancelled, CampaignState::Cancelled) => true,
            (CampaignState::Successful, CampaignState::Successful) => true,
            (CampaignState::Progress, CampaignState::Progress) => true,
            _ => false,
        }
    }
}