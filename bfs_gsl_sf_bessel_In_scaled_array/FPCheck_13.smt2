(declare-fun a_ack!95 () (_ BitVec 32))
(declare-fun b_ack!93 () (_ BitVec 32))
(declare-fun c_ack!94 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvslt b_ack!93 a_ack!95)))
(assert (not (bvslt a_ack!95 #x00000000)))
(assert (not (fp.eq ((_ to_fp 11 53) c_ack!94) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 b_ack!93)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) c_ack!94))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.abs ((_ to_fp 11 53) c_ack!94))
                          (fp.abs ((_ to_fp 11 53) c_ack!94)))
                  ((_ to_fp 11 53) #x41fd6e2bc3b82b06))))
  (not a!1)))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.abs ((_ to_fp 11 53) c_ack!94))
  (fp.abs ((_ to_fp 11 53) c_ack!94))))

(check-sat)
(exit)
