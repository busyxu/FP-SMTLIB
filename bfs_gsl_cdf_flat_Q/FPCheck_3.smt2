(declare-fun a_ack!18 () (_ BitVec 64))
(declare-fun x_ack!20 () (_ BitVec 64))
(declare-fun b_ack!19 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!20) ((_ to_fp 11 53) a_ack!18))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!20) ((_ to_fp 11 53) b_ack!19))))
(assert (FPCHECK_FSUB_OVERFLOW b_ack!19 a_ack!18))

(check-sat)
(exit)
