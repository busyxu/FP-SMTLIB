(declare-fun a_ack!226 () (_ BitVec 64))
(declare-fun b_ack!225 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!226) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!226))
            (fp.abs ((_ to_fp 11 53) b_ack!225)))))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!226))
       (fp.abs ((_ to_fp 11 53) b_ack!225))))
(assert (FPCHECK_FMUL_ACCURACY
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!225))
          (fp.abs ((_ to_fp 11 53) a_ack!226)))
  (fp.div roundNearestTiesToEven
          (fp.abs ((_ to_fp 11 53) b_ack!225))
          (fp.abs ((_ to_fp 11 53) a_ack!226)))))

(check-sat)
(exit)
