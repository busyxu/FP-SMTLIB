(declare-fun x1_ack!405 () (_ BitVec 64))
(declare-fun x0_ack!410 () (_ BitVec 64))
(declare-fun x2_ack!406 () (_ BitVec 64))
(declare-fun xx_ack!409 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(declare-fun y0_ack!407 () (_ BitVec 64))
(declare-fun y1_ack!408 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!410) ((_ to_fp 11 53) x1_ack!405)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!405) ((_ to_fp 11 53) x2_ack!406)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!405)
                       ((_ to_fp 11 53) x0_ack!410))
               ((_ to_fp 11 53) x0_ack!410))
       ((_ to_fp 11 53) x1_ack!405)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!405)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!405)
                       ((_ to_fp 11 53) x0_ack!410)))
       ((_ to_fp 11 53) x0_ack!410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!406)
                       ((_ to_fp 11 53) x1_ack!405))
               ((_ to_fp 11 53) x1_ack!405))
       ((_ to_fp 11 53) x2_ack!406)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!406)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!406)
                       ((_ to_fp 11 53) x1_ack!405)))
       ((_ to_fp 11 53) x1_ack!405)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!405)
                    ((_ to_fp 11 53) x0_ack!410))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!406)
                    ((_ to_fp 11 53) x1_ack!405))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!409) ((_ to_fp 11 53) x0_ack!410))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!409) ((_ to_fp 11 53) x2_ack!406))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!409) ((_ to_fp 11 53) x0_ack!410))))
(assert (not (fp.geq ((_ to_fp 11 53) xx_ack!409) ((_ to_fp 11 53) x1_ack!405))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!405)
               ((_ to_fp 11 53) x0_ack!410))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (FPCHECK_FSUB_UNDERFLOW y1_ack!408 y0_ack!407))

(check-sat)
(exit)
