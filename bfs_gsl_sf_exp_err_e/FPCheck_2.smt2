(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun b_ack!6 () (_ BitVec 64))
(declare-fun a_ack!7 () (_ BitVec 64))
(assert (FPCHECK_FADD_ACCURACY a_ack!7 (fp.abs ((_ to_fp 11 53) b_ack!6))))

(check-sat)
(exit)
