(declare-fun nu2_ack!22 () (_ BitVec 64))
(declare-fun x_ack!23 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x_ack!23) ((_ to_fp 11 53) nu2_ack!22)))

(check-sat)
(exit)
