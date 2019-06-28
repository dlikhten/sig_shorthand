RSpec.describe SigShorthand do
  it "has a version number" do
    expect(SigShorthand::VERSION).not_to be nil
  end

  describe "SigShorthand::Vet.translate" do
    it "can translate" do
      expect(SigShorthand::Vet.translate('Q2&QW')).to eq('EVERY 2 HOURS AND EACH WEEK')
      expect(SigShorthand::Vet.translate('Q2|QW')).to eq('EVERY 2 HOURS OR EACH WEEK')
    end

    it "ignores whitespace" do
      expect(SigShorthand::Vet.translate('Q2 & QW')).to eq('EVERY 2 HOURS AND EACH WEEK')
      expect(SigShorthand::Vet.translate('Q2 |QW')).to eq('EVERY 2 HOURS OR EACH WEEK')
    end

    it "a more complex translation" do
      expect(SigShorthand::Vet.translate('APAMPRNWH')).to eq('APPLY IN THE MORNING AS NEEDED FOR WHEEZING')
      expect(SigShorthand::Vet.translate('AP AM PRNWH')).to eq('APPLY IN THE MORNING AS NEEDED FOR WHEEZING')
    end

    it "ignores case" do
      expect(SigShorthand::Vet.translate('ApAmPRNwh')).to eq('APPLY IN THE MORNING AS NEEDED FOR WHEEZING')
    end
  end
end
