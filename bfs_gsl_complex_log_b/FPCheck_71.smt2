(declare-fun y1_ack!460 () (_ BitVec 64))
(declare-fun x1_ack!463 () (_ BitVec 64))
(declare-fun y2_ack!462 () (_ BitVec 64))
(declare-fun x2_ack!461 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!463))
             (fp.abs ((_ to_fp 11 53) y1_ack!460)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!463) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!461))
             (fp.abs ((_ to_fp 11 53) y2_ack!462)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!461) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!462)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!460)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
(let ((a!3 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (CF_atan2 y1_ack!460 x1_ack!463)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   a!1))
                   (fp.mul roundNearestTiesToEven
                           a!2
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x7ff0000000000001)
                                   (CF_atan2 y2_ack!462 x2_ack!461))))))
  (FPCHECK_FMUL_UNDERFLOW a!3 #x7ff0000000000001))))

(check-sat)
(exit)
