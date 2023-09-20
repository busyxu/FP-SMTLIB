(declare-fun a_ack!223 () (_ BitVec 32))
(declare-fun b_ack!222 () (_ BitVec 64))
(assert (not (bvslt a_ack!223 #xffffffff)))
(assert (not (= #xffffffff a_ack!223)))
(assert (= #x00000000 a_ack!223))
(assert (fp.lt ((_ to_fp 11 53) b_ack!222) ((_ to_fp 11 53) #xc086232bdd7abcd2)))

(check-sat)
(exit)
