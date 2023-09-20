(declare-fun x1_ack!503 () (_ BitVec 64))
(declare-fun x0_ack!508 () (_ BitVec 64))
(declare-fun x2_ack!504 () (_ BitVec 64))
(declare-fun xx_ack!507 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y1_ack!505 () (_ BitVec 64))
(declare-fun y2_ack!506 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!508) ((_ to_fp 11 53) x1_ack!503)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!503) ((_ to_fp 11 53) x2_ack!504)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!503)
                       ((_ to_fp 11 53) x0_ack!508))
               ((_ to_fp 11 53) x0_ack!508))
       ((_ to_fp 11 53) x1_ack!503)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!503)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!503)
                       ((_ to_fp 11 53) x0_ack!508)))
       ((_ to_fp 11 53) x0_ack!508)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!504)
                       ((_ to_fp 11 53) x1_ack!503))
               ((_ to_fp 11 53) x1_ack!503))
       ((_ to_fp 11 53) x2_ack!504)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!504)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!504)
                       ((_ to_fp 11 53) x1_ack!503)))
       ((_ to_fp 11 53) x1_ack!503)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!503)
                    ((_ to_fp 11 53) x0_ack!508))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!504)
                    ((_ to_fp 11 53) x1_ack!503))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) x0_ack!508))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) x2_ack!504))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) x0_ack!508))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!507) ((_ to_fp 11 53) x1_ack!503)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!503) ((_ to_fp 11 53) xx_ack!507))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!504)
               ((_ to_fp 11 53) x1_ack!503))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) y2_ack!506)
          ((_ to_fp 11 53) y1_ack!505))
  (fp.sub roundNearestTiesToEven
          ((_ to_fp 11 53) x2_ack!504)
          ((_ to_fp 11 53) x1_ack!503))))

(check-sat)
(exit)
