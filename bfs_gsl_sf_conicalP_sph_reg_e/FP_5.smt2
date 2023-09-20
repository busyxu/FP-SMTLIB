(declare-fun c_ack!85 () (_ BitVec 64))
(declare-fun a_ack!86 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!85) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!86 #xffffffff)))
(assert (= #xffffffff a_ack!86))

(check-sat)
(exit)
