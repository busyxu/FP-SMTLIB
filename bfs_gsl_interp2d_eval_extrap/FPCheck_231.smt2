(declare-fun x1_ack!2411 () (_ BitVec 64))
(declare-fun x0_ack!2415 () (_ BitVec 64))
(declare-fun y0_ack!2412 () (_ BitVec 64))
(declare-fun x_ack!2413 () (_ BitVec 64))
(declare-fun y_ack!2414 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2415) ((_ to_fp 11 53) x1_ack!2411))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2412) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2413) ((_ to_fp 11 53) x0_ack!2415))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2413) ((_ to_fp 11 53) x1_ack!2411))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2414) ((_ to_fp 11 53) y0_ack!2412)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2411)
                       ((_ to_fp 11 53) x0_ack!2415))
               ((_ to_fp 11 53) x0_ack!2415))
       ((_ to_fp 11 53) x1_ack!2411)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2411)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2411)
                       ((_ to_fp 11 53) x0_ack!2415)))
       ((_ to_fp 11 53) x0_ack!2415)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2412))
               ((_ to_fp 11 53) y0_ack!2412))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2412)))
       ((_ to_fp 11 53) y0_ack!2412)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2414)
          ((_ to_fp 11 53) y0_ack!2412))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2412))))

(check-sat)
(exit)
