(declare-fun a_ack!309 () (_ BitVec 32))
(declare-fun b_ack!308 () (_ BitVec 64))
(assert (not (bvslt a_ack!309 #xffffffff)))
(assert (= #xffffffff a_ack!309))
(assert (fp.lt ((_ to_fp 11 53) b_ack!308) ((_ to_fp 11 53) #xc086232bdd7abcd2)))

(check-sat)
(exit)
