(declare-fun x1_ack!417 () (_ BitVec 64))
(declare-fun x0_ack!422 () (_ BitVec 64))
(declare-fun x2_ack!418 () (_ BitVec 64))
(declare-fun xx_ack!421 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!419 () (_ BitVec 64))
(declare-fun y1_ack!420 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!422) ((_ to_fp 11 53) x1_ack!417)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!417) ((_ to_fp 11 53) x2_ack!418)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!417)
                       ((_ to_fp 11 53) x0_ack!422))
               ((_ to_fp 11 53) x0_ack!422))
       ((_ to_fp 11 53) x1_ack!417)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!417)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!417)
                       ((_ to_fp 11 53) x0_ack!422)))
       ((_ to_fp 11 53) x0_ack!422)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!418)
                       ((_ to_fp 11 53) x1_ack!417))
               ((_ to_fp 11 53) x1_ack!417))
       ((_ to_fp 11 53) x2_ack!418)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!418)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!418)
                       ((_ to_fp 11 53) x1_ack!417)))
       ((_ to_fp 11 53) x1_ack!417)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!417)
                    ((_ to_fp 11 53) x0_ack!422))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!418)
                    ((_ to_fp 11 53) x1_ack!417))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!421) ((_ to_fp 11 53) x0_ack!422))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!421) ((_ to_fp 11 53) x2_ack!418))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!421) ((_ to_fp 11 53) x0_ack!422))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!421) ((_ to_fp 11 53) x1_ack!417))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!417)
               ((_ to_fp 11 53) x0_ack!422))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY y1_ack!420 y0_ack!419))

(check-sat)
(exit)
