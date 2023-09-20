(declare-fun c_ack!360 () (_ BitVec 64))
(declare-fun a_ack!361 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!360) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!361 #xffffffff)))
(assert (= #xffffffff a_ack!361))
(assert (fp.leq ((_ to_fp 11 53) c_ack!360) ((_ to_fp 11 53) #xbff0000000000000)))

(check-sat)
(exit)
