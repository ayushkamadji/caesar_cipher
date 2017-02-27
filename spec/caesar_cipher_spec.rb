require 'caesar_cipher'

describe "caesar_cipher" do
    context "with plaintext 'a'" do
      context "with cipher 0" do
        it "returns 'a'" do
          expect(caesar_cipher('a',0)).to eql('a')
        end
      end

      context "with cipher 25" do
        it "returns 'z'" do
          expect(caesar_cipher('a',25)).to eql('z')
        end
      end

      context "with cipher 27" do
        it "returns 'b'" do
          expect(caesar_cipher('a',27)).to eql('b')
        end
      end
    end
    
    context "with plaintext 'Alphabet'" do
      context "with cipher '0'" do
        it "returns 'Alphabet'" do
          expect(caesar_cipher("Alphabet",0)).to eql("Alphabet")
        end
      end

      context "with cipher '27'" do
        it "returns 'Bmqibcfu'" do
          expect(caesar_cipher("Alphabet",27)).to eql("Bmqibcfu")
        end
      end
    end

    context "with plaintext 'Cipher this!'" do
      context "with cipher 0" do
        it "returns 'Cipher this!'" do
          expect(caesar_cipher("Cipher this!", 0)).to eql('Cipher this!')
        end
      end

      context "with cipher 27" do
        it "returns 'Ekrjgt vjku!'" do
          expect(caesar_cipher("Cipher this!", 28)).to eql("Ekrjgt vjku!")
        end
      end
    end

    context "with plaintext 'mongoose 12'" do
      context "with cipher 15" do
        it "returns 'bdcvddht 12'" do
          expect(caesar_cipher("mongoose 12", 15)).to eql("bdcvddht 12")
        end
      end
    end
end
