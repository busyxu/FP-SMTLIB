(declare-fun nu2_ack!10 () (_ BitVec 64))
(declare-fun x_ack!11 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!11) ((_ to_fp 11 53) nu2_ack!10))))
(assert (FPCHECK_FDIV_ZERO nu2_ack!10 x_ack!11))

(check-sat)
(exit)
