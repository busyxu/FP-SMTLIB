(declare-fun x1_ack!2596 () (_ BitVec 64))
(declare-fun x0_ack!2600 () (_ BitVec 64))
(declare-fun y0_ack!2597 () (_ BitVec 64))
(declare-fun x_ack!2598 () (_ BitVec 64))
(declare-fun y_ack!2599 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_OVERFLOW ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2600) ((_ to_fp 11 53) x1_ack!2596))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2597) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2598) ((_ to_fp 11 53) x0_ack!2600))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2598) ((_ to_fp 11 53) x1_ack!2596))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2599) ((_ to_fp 11 53) y0_ack!2597))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2599) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2596)
                       ((_ to_fp 11 53) x0_ack!2600))
               ((_ to_fp 11 53) x0_ack!2600))
       ((_ to_fp 11 53) x1_ack!2596)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2596)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2596)
                       ((_ to_fp 11 53) x0_ack!2600)))
       ((_ to_fp 11 53) x0_ack!2600)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2597))
               ((_ to_fp 11 53) y0_ack!2597))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2597)))
       ((_ to_fp 11 53) y0_ack!2597)))
(assert (FPCHECK_FSUB_OVERFLOW y_ack!2599 y0_ack!2597))

(check-sat)
(exit)
