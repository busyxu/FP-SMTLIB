(declare-fun a_ack!2795 () (_ BitVec 32))
(declare-fun b_ack!2793 () (_ BitVec 32))
(declare-fun c_ack!2794 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!2793 a_ack!2795)))
(assert (not (bvslt a_ack!2795 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!2794) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!2793)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!2794))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!2794))
  (fp.abs ((_ to_fp 11 53) c_ack!2794))))

(check-sat)
(exit)
