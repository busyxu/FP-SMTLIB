(declare-fun x1_ack!2611 () (_ BitVec 64))
(declare-fun x0_ack!2615 () (_ BitVec 64))
(declare-fun y0_ack!2612 () (_ BitVec 64))
(declare-fun x_ack!2613 () (_ BitVec 64))
(declare-fun y_ack!2614 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2615) ((_ to_fp 11 53) x1_ack!2611))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2612) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2613) ((_ to_fp 11 53) x0_ack!2615))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2613) ((_ to_fp 11 53) x1_ack!2611))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2614) ((_ to_fp 11 53) y0_ack!2612))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2614) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2611)
                       ((_ to_fp 11 53) x0_ack!2615))
               ((_ to_fp 11 53) x0_ack!2615))
       ((_ to_fp 11 53) x1_ack!2611)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2611)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2611)
                       ((_ to_fp 11 53) x0_ack!2615)))
       ((_ to_fp 11 53) x0_ack!2615)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2612))
               ((_ to_fp 11 53) y0_ack!2612))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2612)))
       ((_ to_fp 11 53) y0_ack!2612)))
(assert (FPCHECK_FSUB_ACCURACY y_ack!2614 y0_ack!2612))

(check-sat)
(exit)
