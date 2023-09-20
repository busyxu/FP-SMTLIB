(declare-fun x1_ack!2561 () (_ BitVec 64))
(declare-fun x0_ack!2565 () (_ BitVec 64))
(declare-fun y0_ack!2562 () (_ BitVec 64))
(declare-fun x_ack!2563 () (_ BitVec 64))
(declare-fun y_ack!2564 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2565) ((_ to_fp 11 53) x1_ack!2561))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2562) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2563) ((_ to_fp 11 53) x0_ack!2565))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2563) ((_ to_fp 11 53) x1_ack!2561))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2564) ((_ to_fp 11 53) y0_ack!2562))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2564) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2561)
                       ((_ to_fp 11 53) x0_ack!2565))
               ((_ to_fp 11 53) x0_ack!2565))
       ((_ to_fp 11 53) x1_ack!2561)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2561)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2561)
                       ((_ to_fp 11 53) x0_ack!2565)))
       ((_ to_fp 11 53) x0_ack!2565)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2562))
               ((_ to_fp 11 53) y0_ack!2562))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2562)))
       ((_ to_fp 11 53) y0_ack!2562)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2563)
          ((_ to_fp 11 53) x0_ack!2565))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2561)
          ((_ to_fp 11 53) x0_ack!2565))))

(check-sat)
(exit)
