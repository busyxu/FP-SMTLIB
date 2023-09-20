(declare-fun x1_ack!2421 () (_ BitVec 64))
(declare-fun x0_ack!2425 () (_ BitVec 64))
(declare-fun y0_ack!2422 () (_ BitVec 64))
(declare-fun x_ack!2423 () (_ BitVec 64))
(declare-fun y_ack!2424 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2425) ((_ to_fp 11 53) x1_ack!2421))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2422) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2423) ((_ to_fp 11 53) x0_ack!2425))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2423) ((_ to_fp 11 53) x1_ack!2421))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2424) ((_ to_fp 11 53) y0_ack!2422)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2421)
                       ((_ to_fp 11 53) x0_ack!2425))
               ((_ to_fp 11 53) x0_ack!2425))
       ((_ to_fp 11 53) x1_ack!2421)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2421)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2421)
                       ((_ to_fp 11 53) x0_ack!2425)))
       ((_ to_fp 11 53) x0_ack!2425)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2422))
               ((_ to_fp 11 53) y0_ack!2422))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2422)))
       ((_ to_fp 11 53) y0_ack!2422)))
(assert (FPCHECK_FDIV_UNDERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2424)
          ((_ to_fp 11 53) y0_ack!2422))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2422))))

(check-sat)
(exit)
