(declare-fun x1_ack!319 () (_ BitVec 64))
(declare-fun x0_ack!325 () (_ BitVec 64))
(declare-fun y0_ack!320 () (_ BitVec 64))
(declare-fun x_ack!323 () (_ BitVec 64))
(declare-fun y_ack!324 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z3_ack!322 () (_ BitVec 64))
(declare-fun z0_ack!321 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!325) ((_ to_fp 11 53) x1_ack!319))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!320) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!323) ((_ to_fp 11 53) x0_ack!325))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!323) ((_ to_fp 11 53) x1_ack!319))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!324) ((_ to_fp 11 53) y0_ack!320))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!324) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!323) ((_ to_fp 11 53) x0_ack!325))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!323) ((_ to_fp 11 53) x1_ack!319))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!324) ((_ to_fp 11 53) y0_ack!320))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!324) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!319)
                       ((_ to_fp 11 53) x0_ack!325))
               ((_ to_fp 11 53) x0_ack!325))
       ((_ to_fp 11 53) x1_ack!319)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!319)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!319)
                       ((_ to_fp 11 53) x0_ack!325)))
       ((_ to_fp 11 53) x0_ack!325)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!320))
               ((_ to_fp 11 53) y0_ack!320))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!320)))
       ((_ to_fp 11 53) y0_ack!320)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!324)
                                   ((_ to_fp 11 53) y0_ack!320))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!320))))))
  (FPCHECK_FADD_OVERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) #x8000000000000000)
                    a!1)
            ((_ to_fp 11 53) z0_ack!321))
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) z3_ack!322)))))

(check-sat)
(exit)
