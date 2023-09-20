(declare-fun x1_ack!441 () (_ BitVec 64))
(declare-fun x0_ack!446 () (_ BitVec 64))
(declare-fun x2_ack!442 () (_ BitVec 64))
(declare-fun xx_ack!445 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y1_ack!443 () (_ BitVec 64))
(declare-fun y2_ack!444 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!446) ((_ to_fp 11 53) x1_ack!441)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!441) ((_ to_fp 11 53) x2_ack!442)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!441)
                       ((_ to_fp 11 53) x0_ack!446))
               ((_ to_fp 11 53) x0_ack!446))
       ((_ to_fp 11 53) x1_ack!441)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!441)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!441)
                       ((_ to_fp 11 53) x0_ack!446)))
       ((_ to_fp 11 53) x0_ack!446)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!442)
                       ((_ to_fp 11 53) x1_ack!441))
               ((_ to_fp 11 53) x1_ack!441))
       ((_ to_fp 11 53) x2_ack!442)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!442)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!442)
                       ((_ to_fp 11 53) x1_ack!441)))
       ((_ to_fp 11 53) x1_ack!441)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!441)
                    ((_ to_fp 11 53) x0_ack!446))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!442)
                    ((_ to_fp 11 53) x1_ack!441))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!445) ((_ to_fp 11 53) x0_ack!446))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!445) ((_ to_fp 11 53) x2_ack!442))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!445) ((_ to_fp 11 53) x0_ack!446))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!445) ((_ to_fp 11 53) x1_ack!441)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!441) ((_ to_fp 11 53) xx_ack!445))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!442)
               ((_ to_fp 11 53) x1_ack!441))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_ACCURACY y2_ack!444 y1_ack!443))

(check-sat)
(exit)
