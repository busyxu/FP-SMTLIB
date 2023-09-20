(declare-fun a_ack!673 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) a_ack!673) ((_ to_fp 11 53) #xc085eeaad5511c64)))

(check-sat)
(exit)
