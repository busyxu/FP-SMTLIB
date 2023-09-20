(declare-fun x1_ack!2616 () (_ BitVec 64))
(declare-fun x0_ack!2620 () (_ BitVec 64))
(declare-fun y0_ack!2617 () (_ BitVec 64))
(declare-fun x_ack!2618 () (_ BitVec 64))
(declare-fun y_ack!2619 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2620) ((_ to_fp 11 53) x1_ack!2616))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2617) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2618) ((_ to_fp 11 53) x0_ack!2620))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2618) ((_ to_fp 11 53) x1_ack!2616))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2619) ((_ to_fp 11 53) y0_ack!2617))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2619) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2616)
                       ((_ to_fp 11 53) x0_ack!2620))
               ((_ to_fp 11 53) x0_ack!2620))
       ((_ to_fp 11 53) x1_ack!2616)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2616)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2616)
                       ((_ to_fp 11 53) x0_ack!2620)))
       ((_ to_fp 11 53) x0_ack!2620)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2617))
               ((_ to_fp 11 53) y0_ack!2617))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2617)))
       ((_ to_fp 11 53) y0_ack!2617)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y_ack!2619)
          ((_ to_fp 11 53) y0_ack!2617))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) #x3ff0000000000000)
          ((_ to_fp 11 53) y0_ack!2617))))

(check-sat)
(exit)
