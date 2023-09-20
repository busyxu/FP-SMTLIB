(declare-fun c_ack!40 () (_ BitVec 64))
(declare-fun a_ack!41 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!40) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (bvslt a_ack!41 #xffffffff))

(check-sat)
(exit)
