(declare-fun b_ack!115 () (_ BitVec 64))
(declare-fun a_ack!116 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!115) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!116) ((_ to_fp 11 53) #x40762e42fefa39ef))))
(assert (FPCHECK_FADD_ACCURACY a_ack!116 (CF_log (fp.abs ((_ to_fp 11 53) b_ack!115)))))

(check-sat)
(exit)
