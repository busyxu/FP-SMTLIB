(declare-fun x1_ack!509 () (_ BitVec 64))
(declare-fun x0_ack!513 () (_ BitVec 64))
(declare-fun y0_ack!510 () (_ BitVec 64))
(declare-fun x_ack!511 () (_ BitVec 64))
(declare-fun y_ack!512 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!513) ((_ to_fp 11 53) x1_ack!509))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!510) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!511) ((_ to_fp 11 53) x0_ack!513))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!511) ((_ to_fp 11 53) x1_ack!509))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!512) ((_ to_fp 11 53) y0_ack!510))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!512) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!511) ((_ to_fp 11 53) x0_ack!513))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!511) ((_ to_fp 11 53) x1_ack!509))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!512) ((_ to_fp 11 53) y0_ack!510))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!512) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!509)
                       ((_ to_fp 11 53) x0_ack!513))
               ((_ to_fp 11 53) x0_ack!513))
       ((_ to_fp 11 53) x1_ack!509)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!509)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!509)
                       ((_ to_fp 11 53) x0_ack!513)))
       ((_ to_fp 11 53) x0_ack!513)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!510))
               ((_ to_fp 11 53) y0_ack!510))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!510)))
       ((_ to_fp 11 53) y0_ack!510)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!511)
                                   ((_ to_fp 11 53) x0_ack!513))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!509)
                                   ((_ to_fp 11 53) x0_ack!513))))))
  (FPCHECK_FMUL_OVERFLOW
    a!1
    (fp.div roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) y_ack!512)
                    ((_ to_fp 11 53) y0_ack!510))
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    ((_ to_fp 11 53) y0_ack!510))))))

(check-sat)
(exit)
