(declare-fun a_ack!505 () (_ BitVec 32))
(declare-fun b_ack!504 () (_ BitVec 64))
(assert (not (bvslt a_ack!505 #xffffffff)))
(assert (not (= #xffffffff a_ack!505)))
(assert (not (= #x00000000 a_ack!505)))
(assert (not (= #x00000001 a_ack!505)))
(assert (= #x00000002 a_ack!505))
(assert (fp.lt ((_ to_fp 11 53) b_ack!504) ((_ to_fp 11 53) #xc086232bdd7abcd2)))

(check-sat)
(exit)
