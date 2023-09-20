(declare-fun n_ack!155 () (_ BitVec 32))
(declare-fun a_ack!156 () (_ BitVec 64))
(assert (not (= #x00000000 (bvsrem n_ack!155 #x00000002))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!156) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (= #x00000000 n_ack!155)))

(check-sat)
(exit)
