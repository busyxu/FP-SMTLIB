(declare-fun x1_ack!2406 () (_ BitVec 64))
(declare-fun x0_ack!2410 () (_ BitVec 64))
(declare-fun y0_ack!2407 () (_ BitVec 64))
(declare-fun x_ack!2408 () (_ BitVec 64))
(declare-fun y_ack!2409 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2410) ((_ to_fp 11 53) x1_ack!2406))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2407) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2408) ((_ to_fp 11 53) x0_ack!2410))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2408) ((_ to_fp 11 53) x1_ack!2406))))
(assert (fp.lt ((_ to_fp 11 53) y_ack!2409) ((_ to_fp 11 53) y0_ack!2407)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2406)
                       ((_ to_fp 11 53) x0_ack!2410))
               ((_ to_fp 11 53) x0_ack!2410))
       ((_ to_fp 11 53) x1_ack!2406)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2406)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2406)
                       ((_ to_fp 11 53) x0_ack!2410)))
       ((_ to_fp 11 53) x0_ack!2410)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2407))
               ((_ to_fp 11 53) y0_ack!2407))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2407)))
       ((_ to_fp 11 53) y0_ack!2407)))

(check-sat)
(exit)
