(declare-fun a_ack!255 () (_ BitVec 32))
(declare-fun b_ack!254 () (_ BitVec 64))
(assert (not (bvslt a_ack!255 #xffffffff)))
(assert (= #xffffffff a_ack!255))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!254) ((_ to_fp 11 53) #xc086232bdd7abcd2))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!254) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
