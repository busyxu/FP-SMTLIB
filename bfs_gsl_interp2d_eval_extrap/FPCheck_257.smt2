(declare-fun x1_ack!2651 () (_ BitVec 64))
(declare-fun x0_ack!2655 () (_ BitVec 64))
(declare-fun y0_ack!2652 () (_ BitVec 64))
(declare-fun x_ack!2653 () (_ BitVec 64))
(declare-fun y_ack!2654 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ZERO
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2655) ((_ to_fp 11 53) x1_ack!2651))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2652) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2653) ((_ to_fp 11 53) x0_ack!2655))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2653) ((_ to_fp 11 53) x1_ack!2651))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2654) ((_ to_fp 11 53) y0_ack!2652))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2654) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2651)
                       ((_ to_fp 11 53) x0_ack!2655))
               ((_ to_fp 11 53) x0_ack!2655))
       ((_ to_fp 11 53) x1_ack!2651)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2651)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2651)
                       ((_ to_fp 11 53) x0_ack!2655)))
       ((_ to_fp 11 53) x0_ack!2655)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2652))
               ((_ to_fp 11 53) y0_ack!2652))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2652)))
       ((_ to_fp 11 53) y0_ack!2652)))
(assert (FPCHECK_FDIV_ZERO
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2654)
          ((_ to_fp 11 53) y0_ack!2652))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2652))))

(check-sat)
(exit)
