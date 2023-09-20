(declare-fun c_ack!109 () (_ BitVec 64))
(declare-fun a_ack!110 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!109) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!110 #xffffffff)))
(assert (not (= #xffffffff a_ack!110)))
(assert (not (= #x00000000 a_ack!110)))

(check-sat)
(exit)
