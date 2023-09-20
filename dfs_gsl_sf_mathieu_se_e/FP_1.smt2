(declare-fun n_ack!19 () (_ BitVec 32))
(declare-fun a_ack!20 () (_ BitVec 64))
(assert (= #x00000000 (bvsrem n_ack!19 #x00000002)))
(assert (not (= #x00000000 n_ack!19)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!20) ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
