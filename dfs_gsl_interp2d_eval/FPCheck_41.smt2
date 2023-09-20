(declare-fun x1_ack!415 () (_ BitVec 64))
(declare-fun x0_ack!420 () (_ BitVec 64))
(declare-fun y0_ack!416 () (_ BitVec 64))
(declare-fun x_ack!418 () (_ BitVec 64))
(declare-fun y_ack!419 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(declare-fun z3_ack!417 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!420) ((_ to_fp 11 53) x1_ack!415))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!416) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!418) ((_ to_fp 11 53) x0_ack!420))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!418) ((_ to_fp 11 53) x1_ack!415))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!419) ((_ to_fp 11 53) y0_ack!416))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!419) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!418) ((_ to_fp 11 53) x0_ack!420))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!418) ((_ to_fp 11 53) x1_ack!415))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!419) ((_ to_fp 11 53) y0_ack!416))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!419) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!415)
                       ((_ to_fp 11 53) x0_ack!420))
               ((_ to_fp 11 53) x0_ack!420))
       ((_ to_fp 11 53) x1_ack!415)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!415)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!415)
                       ((_ to_fp 11 53) x0_ack!420)))
       ((_ to_fp 11 53) x0_ack!420)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!416))
               ((_ to_fp 11 53) y0_ack!416))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!416)))
       ((_ to_fp 11 53) y0_ack!416)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!419)
                                   ((_ to_fp 11 53) y0_ack!416))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!416))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!418)
                                   ((_ to_fp 11 53) x0_ack!420))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!415)
                                   ((_ to_fp 11 53) x0_ack!420)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW a!2 z3_ack!417))))

(check-sat)
(exit)
