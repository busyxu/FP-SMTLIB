(declare-fun x1_ack!459 () (_ BitVec 64))
(declare-fun x0_ack!462 () (_ BitVec 64))
(declare-fun x2_ack!460 () (_ BitVec 64))
(declare-fun xx_ack!461 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (fp.lt ((_ to_fp 11 53) x0_ack!462) ((_ to_fp 11 53) x1_ack!459)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!459) ((_ to_fp 11 53) x2_ack!460)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!459)
                       ((_ to_fp 11 53) x0_ack!462))
               ((_ to_fp 11 53) x0_ack!462))
       ((_ to_fp 11 53) x1_ack!459)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!459)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!459)
                       ((_ to_fp 11 53) x0_ack!462)))
       ((_ to_fp 11 53) x0_ack!462)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!460)
                       ((_ to_fp 11 53) x1_ack!459))
               ((_ to_fp 11 53) x1_ack!459))
       ((_ to_fp 11 53) x2_ack!460)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!460)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!460)
                       ((_ to_fp 11 53) x1_ack!459)))
       ((_ to_fp 11 53) x1_ack!459)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!459)
                    ((_ to_fp 11 53) x0_ack!462))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!460)
                    ((_ to_fp 11 53) x1_ack!459))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!461) ((_ to_fp 11 53) x0_ack!462))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!461) ((_ to_fp 11 53) x2_ack!460))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!461) ((_ to_fp 11 53) x0_ack!462))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!461) ((_ to_fp 11 53) x1_ack!459))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!459)
               ((_ to_fp 11 53) x0_ack!462))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_OVERFLOW xx_ack!461 x0_ack!462))

(check-sat)
(exit)
