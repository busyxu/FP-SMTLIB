(declare-fun c_ack!77 () (_ BitVec 64))
(declare-fun a_ack!78 () (_ BitVec 32))
(assert (not (fp.leq ((_ to_fp 11 53) c_ack!77) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (bvslt a_ack!78 #xffffffff)))
(assert (not (= #xffffffff a_ack!78)))
(assert (not (= #x00000000 a_ack!78)))

(check-sat)
(exit)
