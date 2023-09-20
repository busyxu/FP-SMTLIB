(declare-fun x1_ack!483 () (_ BitVec 64))
(declare-fun x0_ack!488 () (_ BitVec 64))
(declare-fun x2_ack!484 () (_ BitVec 64))
(declare-fun xx_ack!487 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!485 () (_ BitVec 64))
(declare-fun y1_ack!486 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!488) ((_ to_fp 11 53) x1_ack!483)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!483) ((_ to_fp 11 53) x2_ack!484)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!483)
                       ((_ to_fp 11 53) x0_ack!488))
               ((_ to_fp 11 53) x0_ack!488))
       ((_ to_fp 11 53) x1_ack!483)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!483)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!483)
                       ((_ to_fp 11 53) x0_ack!488)))
       ((_ to_fp 11 53) x0_ack!488)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!484)
                       ((_ to_fp 11 53) x1_ack!483))
               ((_ to_fp 11 53) x1_ack!483))
       ((_ to_fp 11 53) x2_ack!484)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!484)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!484)
                       ((_ to_fp 11 53) x1_ack!483)))
       ((_ to_fp 11 53) x1_ack!483)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!483)
                    ((_ to_fp 11 53) x0_ack!488))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!484)
                    ((_ to_fp 11 53) x1_ack!483))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!487) ((_ to_fp 11 53) x0_ack!488))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!487) ((_ to_fp 11 53) x2_ack!484))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!487) ((_ to_fp 11 53) x0_ack!488))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!487) ((_ to_fp 11 53) x1_ack!483))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!483)
               ((_ to_fp 11 53) x0_ack!488))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_OVERFLOW
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!486)
          ((_ to_fp 11 53) y0_ack!485))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!483)
          ((_ to_fp 11 53) x0_ack!488))))

(check-sat)
(exit)
