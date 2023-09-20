(declare-fun x1_ack!573 () (_ BitVec 64))
(declare-fun x0_ack!576 () (_ BitVec 64))
(declare-fun x2_ack!574 () (_ BitVec 64))
(declare-fun xx_ack!575 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!576) ((_ to_fp 11 53) x1_ack!573)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!573) ((_ to_fp 11 53) x2_ack!574)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!573)
                       ((_ to_fp 11 53) x0_ack!576))
               ((_ to_fp 11 53) x0_ack!576))
       ((_ to_fp 11 53) x1_ack!573)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!573)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!573)
                       ((_ to_fp 11 53) x0_ack!576)))
       ((_ to_fp 11 53) x0_ack!576)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!574)
                       ((_ to_fp 11 53) x1_ack!573))
               ((_ to_fp 11 53) x1_ack!573))
       ((_ to_fp 11 53) x2_ack!574)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!574)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!574)
                       ((_ to_fp 11 53) x1_ack!573)))
       ((_ to_fp 11 53) x1_ack!573)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!573)
                    ((_ to_fp 11 53) x0_ack!576))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!574)
                    ((_ to_fp 11 53) x1_ack!573))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!575) ((_ to_fp 11 53) x0_ack!576))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!575) ((_ to_fp 11 53) x2_ack!574))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!575) ((_ to_fp 11 53) x0_ack!576))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!575) ((_ to_fp 11 53) x1_ack!573)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!573) ((_ to_fp 11 53) xx_ack!575))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!574)
               ((_ to_fp 11 53) x1_ack!573))
       ((_ to_fp 11 53) #x0000000000000000)))

(check-sat)
(exit)
