(declare-fun x1_ack!507 () (_ BitVec 64))
(declare-fun x0_ack!512 () (_ BitVec 64))
(declare-fun x2_ack!508 () (_ BitVec 64))
(declare-fun xx_ack!511 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!509 () (_ BitVec 64))
(declare-fun y1_ack!510 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!512) ((_ to_fp 11 53) x1_ack!507)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!507) ((_ to_fp 11 53) x2_ack!508)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!507)
                       ((_ to_fp 11 53) x0_ack!512))
               ((_ to_fp 11 53) x0_ack!512))
       ((_ to_fp 11 53) x1_ack!507)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!507)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!507)
                       ((_ to_fp 11 53) x0_ack!512)))
       ((_ to_fp 11 53) x0_ack!512)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!508)
                       ((_ to_fp 11 53) x1_ack!507))
               ((_ to_fp 11 53) x1_ack!507))
       ((_ to_fp 11 53) x2_ack!508)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!508)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!508)
                       ((_ to_fp 11 53) x1_ack!507)))
       ((_ to_fp 11 53) x1_ack!507)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!507)
                    ((_ to_fp 11 53) x0_ack!512))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!508)
                    ((_ to_fp 11 53) x1_ack!507))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!511) ((_ to_fp 11 53) x0_ack!512))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!511) ((_ to_fp 11 53) x2_ack!508))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!511) ((_ to_fp 11 53) x0_ack!512))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!511) ((_ to_fp 11 53) x1_ack!507))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!507)
               ((_ to_fp 11 53) x0_ack!512))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y1_ack!510)
          ((_ to_fp 11 53) y0_ack!509))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x1_ack!507)
          ((_ to_fp 11 53) x0_ack!512))))

(check-sat)
(exit)
