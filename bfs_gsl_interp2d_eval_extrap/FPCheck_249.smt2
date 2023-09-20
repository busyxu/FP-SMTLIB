(declare-fun x1_ack!2581 () (_ BitVec 64))
(declare-fun x0_ack!2585 () (_ BitVec 64))
(declare-fun y0_ack!2582 () (_ BitVec 64))
(declare-fun x_ack!2583 () (_ BitVec 64))
(declare-fun y_ack!2584 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2585) ((_ to_fp 11 53) x1_ack!2581))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2582) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2583) ((_ to_fp 11 53) x0_ack!2585))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2583) ((_ to_fp 11 53) x1_ack!2581))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2584) ((_ to_fp 11 53) y0_ack!2582))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2584) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2581)
                       ((_ to_fp 11 53) x0_ack!2585))
               ((_ to_fp 11 53) x0_ack!2585))
       ((_ to_fp 11 53) x1_ack!2581)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2581)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2581)
                       ((_ to_fp 11 53) x0_ack!2585)))
       ((_ to_fp 11 53) x0_ack!2585)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2582))
               ((_ to_fp 11 53) y0_ack!2582))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2582)))
       ((_ to_fp 11 53) y0_ack!2582)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x_ack!2583)
          ((_ to_fp 11 53) x0_ack!2585))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!2581)
          ((_ to_fp 11 53) x0_ack!2585))))

(check-sat)
(exit)
