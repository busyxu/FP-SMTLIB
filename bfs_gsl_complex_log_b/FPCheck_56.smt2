(declare-fun y1_ack!348 () (_ BitVec 64))
(declare-fun x1_ack!351 () (_ BitVec 64))
(declare-fun y2_ack!350 () (_ BitVec 64))
(declare-fun x2_ack!349 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_atan2 ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x1_ack!351))
             (fp.abs ((_ to_fp 11 53) y1_ack!348)))))
(assert (not (fp.eq ((_ to_fp 11 53) x1_ack!351) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.geq (fp.abs ((_ to_fp 11 53) x2_ack!349))
             (fp.abs ((_ to_fp 11 53) y2_ack!350)))))
(assert (not (fp.eq ((_ to_fp 11 53) x2_ack!349) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y1_ack!348)))
                   ((_ to_fp 11 53) #x7ff0000000000001)))
      (a!2 (fp.add roundNearestTiesToEven
                   (CF_log (fp.abs ((_ to_fp 11 53) y2_ack!350)))
                   ((_ to_fp 11 53) #x7ff0000000000001))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            a!1
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    a!2))
    (fp.mul roundNearestTiesToEven
            (CF_atan2 y1_ack!348 x1_ack!351)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x7ff0000000000001)
                    (CF_atan2 y2_ack!350 x2_ack!349))))))

(check-sat)
(exit)
