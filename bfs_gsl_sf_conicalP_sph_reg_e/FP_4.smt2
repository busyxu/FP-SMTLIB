(declare-fun c_ack!83 () (_ BitVec 64))
(declare-fun a_ack!84 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!83) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!84 #xffffffff))

(check-sat)
(exit)
