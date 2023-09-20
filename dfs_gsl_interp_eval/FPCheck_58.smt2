(declare-fun x1_ack!515 () (_ BitVec 64))
(declare-fun x0_ack!520 () (_ BitVec 64))
(declare-fun x2_ack!516 () (_ BitVec 64))
(declare-fun xx_ack!519 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!517 () (_ BitVec 64))
(declare-fun y2_ack!518 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!520) ((_ to_fp 11 53) x1_ack!515)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!515) ((_ to_fp 11 53) x2_ack!516)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!515)
                       ((_ to_fp 11 53) x0_ack!520))
               ((_ to_fp 11 53) x0_ack!520))
       ((_ to_fp 11 53) x1_ack!515)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!515)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!515)
                       ((_ to_fp 11 53) x0_ack!520)))
       ((_ to_fp 11 53) x0_ack!520)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!516)
                       ((_ to_fp 11 53) x1_ack!515))
               ((_ to_fp 11 53) x1_ack!515))
       ((_ to_fp 11 53) x2_ack!516)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!516)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!516)
                       ((_ to_fp 11 53) x1_ack!515)))
       ((_ to_fp 11 53) x1_ack!515)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!515)
                    ((_ to_fp 11 53) x0_ack!520))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!516)
                    ((_ to_fp 11 53) x1_ack!515))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!519) ((_ to_fp 11 53) x0_ack!520))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!519) ((_ to_fp 11 53) x2_ack!516))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!519) ((_ to_fp 11 53) x0_ack!520))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!519) ((_ to_fp 11 53) x1_ack!515)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!515) ((_ to_fp 11 53) xx_ack!519))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!516)
               ((_ to_fp 11 53) x1_ack!515))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!518)
          ((_ to_fp 11 53) y1_ack!517))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!516)
          ((_ to_fp 11 53) x1_ack!515))))

(check-sat)
(exit)
