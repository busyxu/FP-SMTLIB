(declare-fun x1_ack!2770 () (_ BitVec 64))
(declare-fun x0_ack!2775 () (_ BitVec 64))
(declare-fun y0_ack!2771 () (_ BitVec 64))
(declare-fun x_ack!2773 () (_ BitVec 64))
(declare-fun y_ack!2774 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun z0_ack!2772 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2775) ((_ to_fp 11 53) x1_ack!2770))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2771) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2773) ((_ to_fp 11 53) x0_ack!2775))))
(assert (not (fp.geq ((_ to_fp 11 53) x_ack!2773) ((_ to_fp 11 53) x1_ack!2770))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2774) ((_ to_fp 11 53) y0_ack!2771))))
(assert (fp.geq ((_ to_fp 11 53) y_ack!2774) ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2770)
                       ((_ to_fp 11 53) x0_ack!2775))
               ((_ to_fp 11 53) x0_ack!2775))
       ((_ to_fp 11 53) x1_ack!2770)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2770)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2770)
                       ((_ to_fp 11 53) x0_ack!2775)))
       ((_ to_fp 11 53) x0_ack!2775)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2771))
               ((_ to_fp 11 53) y0_ack!2771))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!2771)))
       ((_ to_fp 11 53) y0_ack!2771)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!2773)
                                   ((_ to_fp 11 53) x0_ack!2775))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2770)
                                   ((_ to_fp 11 53) x0_ack!2775)))))
      (a!2 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) y_ack!2774)
                                   ((_ to_fp 11 53) y0_ack!2771))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!2771))))))
  (FPCHECK_FMUL_ACCURACY (fp.mul roundNearestTiesToEven a!1 a!2) z0_ack!2772)))

(check-sat)
(exit)
