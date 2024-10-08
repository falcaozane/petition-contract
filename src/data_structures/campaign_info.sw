library;
use ::data_structures::campaign_state::CampaignState;

// General data structure containing information about a campaign.
pub struct CampaignInfo {
    /// The user who has created the campaign.
    author: Identity,
    // Whether the campaign is currently: in progress, successful, or Canceled.
    state: CampaignState,
    /// The end time for the campaign after which it becomes locked.
    deadline: u64,
    /// Total amount of signs received
    total_signs: u64,
}
pub enum Identity {
    Address: Address,
    ContractId: ContractId,
}
impl CampaignInfo {
    /// Creates a new campaign.
    ///
    /// # Arguments
    ///
    /// * `asset`: [ContractId] - The asset that this campaign accepts as a deposit.
    /// * `author`: [Identity] - The user who has created the campaign.
    /// * `deadline`: [u64] - The end time for the campaign after which it becomes locked.
    ///
    /// # Returns
    ///
    /// * [CampaignInfo] - The newly created campaign.
    pub fn new(
        author: Identity,
        deadline: u64,
    ) -> Self {
        Self {
            author,
            state: CampaignState::Progress,
            deadline,
            total_signs: 0,
        }
    }
}
