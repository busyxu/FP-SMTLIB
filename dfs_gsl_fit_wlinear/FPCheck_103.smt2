(declare-fun w0_ack!340 () (_ BitVec 64))
(declare-fun w1_ack!337 () (_ BitVec 64))
(declare-fun w2_ack!338 () (_ BitVec 64))
(declare-fun w3_ack!339 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.gt ((_ to_fp 11 53) w0_ack!340) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.gt ((_ to_fp 11 53) w1_ack!337) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w2_ack!338) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.gt ((_ to_fp 11 53) w3_ack!339) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.gt ((_ to_fp 11 53) w0_ack!340) ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FADD_OVERFLOW #x0000000000000000 w0_ack!340))

(check-sat)
(exit)
