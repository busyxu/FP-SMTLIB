(declare-fun a_ack!2789 () (_ BitVec 32))
(declare-fun b_ack!2787 () (_ BitVec 32))
(declare-fun c_ack!2788 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2787 a_ack!2789)))
(assert (not (bvslt a_ack!2789 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2788) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2787)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2788))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!2788))
  (fp.abs ((_ to_fp 11 53) c_ack!2788))))

(check-sat)
(exit)
