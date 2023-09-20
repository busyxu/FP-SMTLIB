(declare-fun n_ack!129 () (_ BitVec 32))
(declare-fun a_ack!130 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!129 #x00000002)))
(assert (fp.eq ((_ to_fp 11 53) a_ack!130) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!129)))

(check-sat)
(exit)
