(declare-fun x1_ack!519 () (_ BitVec 64))
(declare-fun x0_ack!524 () (_ BitVec 64))
(declare-fun x2_ack!520 () (_ BitVec 64))
(declare-fun xx_ack!523 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!521 () (_ BitVec 64))
(declare-fun y1_ack!522 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!524) ((_ to_fp 11 53) x1_ack!519)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!519) ((_ to_fp 11 53) x2_ack!520)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!519)
                       ((_ to_fp 11 53) x0_ack!524))
               ((_ to_fp 11 53) x0_ack!524))
       ((_ to_fp 11 53) x1_ack!519)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!519)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!519)
                       ((_ to_fp 11 53) x0_ack!524)))
       ((_ to_fp 11 53) x0_ack!524)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!520)
                       ((_ to_fp 11 53) x1_ack!519))
               ((_ to_fp 11 53) x1_ack!519))
       ((_ to_fp 11 53) x2_ack!520)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!520)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!520)
                       ((_ to_fp 11 53) x1_ack!519)))
       ((_ to_fp 11 53) x1_ack!519)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!519)
                    ((_ to_fp 11 53) x0_ack!524))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!520)
                    ((_ to_fp 11 53) x1_ack!519))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!523) ((_ to_fp 11 53) x0_ack!524))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!523) ((_ to_fp 11 53) x2_ack!520))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!523) ((_ to_fp 11 53) x0_ack!524))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!523) ((_ to_fp 11 53) x1_ack!519))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!519)
               ((_ to_fp 11 53) x0_ack!524))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_INVALID
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!522)
          ((_ to_fp 11 53) y0_ack!521))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!519)
          ((_ to_fp 11 53) x0_ack!524))))

(check-sat)
(exit)
