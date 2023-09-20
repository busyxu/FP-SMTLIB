(declare-fun n_ack!187 () (_ BitVec 32))
(declare-fun a_ack!188 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!187 #x00000002))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!188) ((_ to_fp 11 53) #x0000000000000000)))
(assert (= #x00000000 n_ack!187))

(check-sat)
(exit)
