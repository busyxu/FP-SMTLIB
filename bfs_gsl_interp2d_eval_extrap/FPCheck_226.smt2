(declare-fun x1_ack!2356 () (_ BitVec 64))
(declare-fun x0_ack!2360 () (_ BitVec 64))
(declare-fun y0_ack!2357 () (_ BitVec 64))
(declare-fun x_ack!2358 () (_ BitVec 64))
(declare-fun y_ack!2359 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2360) ((_ to_fp 11 53) x1_ack!2356))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2357) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2358) ((_ to_fp 11 53) x0_ack!2360))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2358) ((_ to_fp 11 53) x1_ack!2356))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2359) ((_ to_fp 11 53) y0_ack!2357)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2356)
                       ((_ to_fp 11 53) x0_ack!2360))
               ((_ to_fp 11 53) x0_ack!2360))
       ((_ to_fp 11 53) x1_ack!2356)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2356)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2356)
                       ((_ to_fp 11 53) x0_ack!2360)))
       ((_ to_fp 11 53) x0_ack!2360)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2357))
               ((_ to_fp 11 53) y0_ack!2357))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2357)))
       ((_ to_fp 11 53) y0_ack!2357)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2358)
          ((_ to_fp 11 53) x0_ack!2360))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2356)
          ((_ to_fp 11 53) x0_ack!2360))))

(check-sat)
(exit)
