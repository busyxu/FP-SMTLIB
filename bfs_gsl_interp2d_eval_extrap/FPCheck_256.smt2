(declare-fun x1_ack!2646 () (_ BitVec 64))
(declare-fun x0_ack!2650 () (_ BitVec 64))
(declare-fun y0_ack!2647 () (_ BitVec 64))
(declare-fun x_ack!2648 () (_ BitVec 64))
(declare-fun y_ack!2649 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2650) ((_ to_fp 11 53) x1_ack!2646))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2647) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2648) ((_ to_fp 11 53) x0_ack!2650))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2648) ((_ to_fp 11 53) x1_ack!2646))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2649) ((_ to_fp 11 53) y0_ack!2647))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2649) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2646)
                       ((_ to_fp 11 53) x0_ack!2650))
               ((_ to_fp 11 53) x0_ack!2650))
       ((_ to_fp 11 53) x1_ack!2646)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2646)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2646)
                       ((_ to_fp 11 53) x0_ack!2650)))
       ((_ to_fp 11 53) x0_ack!2650)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2647))
               ((_ to_fp 11 53) y0_ack!2647))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2647)))
       ((_ to_fp 11 53) y0_ack!2647)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2649)
          ((_ to_fp 11 53) y0_ack!2647))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2647))))

(check-sat)
(exit)
