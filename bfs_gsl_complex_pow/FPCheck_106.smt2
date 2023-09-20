(declare-fun x1_ack!701 () (_ BitVec 64))
(declare-fun x2_ack!699 () (_ BitVec 64))
(declare-fun y1_ack!698 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_sin ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun y2_ack!700 () (_ BitVec 64))
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!699) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!699) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!701))
        (fp.abs ((_ to_fp 11 53) y1_ack!698))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!701) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) x1_ack!701)))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!2 (CF_exp (fp.sub roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   a!1
                                   ((_ to_fp 11 53) x2_ack!699))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!700)
                                   (CF_atan2 y1_ack!698 x1_ack!701)))))
      (a!3 (CF_sin (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   (CF_atan2 y1_ack!698 x1_ack!701)
                                   ((_ to_fp 11 53) x2_ack!699))
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) y2_ack!700)
                                   a!1)))))
  (FPCHECK_FMUL_UNDERFLOW a!2 a!3))))

(check-sat)
(exit)
