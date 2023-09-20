(declare-fun x1_ack!409 () (_ BitVec 64))
(declare-fun x0_ack!412 () (_ BitVec 64))
(declare-fun x2_ack!410 () (_ BitVec 64))
(declare-fun xx_ack!411 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!412) ((_ to_fp 11 53) x1_ack!409)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!409) ((_ to_fp 11 53) x2_ack!410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!409)
                       ((_ to_fp 11 53) x0_ack!412))
               ((_ to_fp 11 53) x0_ack!412))
       ((_ to_fp 11 53) x1_ack!409)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!409)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!409)
                       ((_ to_fp 11 53) x0_ack!412)))
       ((_ to_fp 11 53) x0_ack!412)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!410)
                       ((_ to_fp 11 53) x1_ack!409))
               ((_ to_fp 11 53) x1_ack!409))
       ((_ to_fp 11 53) x2_ack!410)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!410)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!410)
                       ((_ to_fp 11 53) x1_ack!409)))
       ((_ to_fp 11 53) x1_ack!409)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!409)
                    ((_ to_fp 11 53) x0_ack!412))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!410)
                    ((_ to_fp 11 53) x1_ack!409))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!411) ((_ to_fp 11 53) x0_ack!412))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!411) ((_ to_fp 11 53) x2_ack!410))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!411) ((_ to_fp 11 53) x0_ack!412))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!411) ((_ to_fp 11 53) x1_ack!409)))
(assert (fp.gt ((_ to_fp 11 53) x1_ack!409) ((_ to_fp 11 53) xx_ack!411)))

(check-sat)
(exit)
