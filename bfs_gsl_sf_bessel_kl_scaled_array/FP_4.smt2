(declare-fun a_ack!46 () (_ BitVec 32))
(declare-fun b_ack!45 () (_ BitVec 64))
(assert (not (bvslt a_ack!46 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!45) ((_ to_fp 11 53) #x0000000000000000))))
(assert (= #x00000000 a_ack!46))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!45) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
