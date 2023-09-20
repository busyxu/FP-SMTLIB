(declare-fun x1_ack!1031 () (_ BitVec 64))
(declare-fun x0_ack!1039 () (_ BitVec 64))
(declare-fun y0_ack!1032 () (_ BitVec 64))
(declare-fun x_ack!1037 () (_ BitVec 64))
(declare-fun y_ack!1038 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!1035 () (_ BitVec 64))
(declare-fun z1_ack!1034 () (_ BitVec 64))
(declare-fun z3_ack!1036 () (_ BitVec 64))
(declare-fun z0_ack!1033 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!1039) ((_ to_fp 11 53) x1_ack!1031))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!1032) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1037) ((_ to_fp 11 53) x0_ack!1039))))
(assert (not (fp.gt ((_ to_fp 11 53) x_ack!1037) ((_ to_fp 11 53) x1_ack!1031))))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1038) ((_ to_fp 11 53) y0_ack!1032))))
(assert (not (fp.gt ((_ to_fp 11 53) y_ack!1038) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!1037) ((_ to_fp 11 53) x0_ack!1039))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!1037) ((_ to_fp 11 53) x1_ack!1031)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!1038) ((_ to_fp 11 53) y0_ack!1032))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!1038) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1031)
                       ((_ to_fp 11 53) x0_ack!1039))
               ((_ to_fp 11 53) x0_ack!1039))
       ((_ to_fp 11 53) x1_ack!1031)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1031)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1031)
                       ((_ to_fp 11 53) x0_ack!1039)))
       ((_ to_fp 11 53) x0_ack!1039)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1032))
               ((_ to_fp 11 53) y0_ack!1032))
       ((_ to_fp 11 53) #x3ff0000000000000)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) #x3ff0000000000000)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       ((_ to_fp 11 53) y0_ack!1032)))
       ((_ to_fp 11 53) y0_ack!1032)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1031)
                                   ((_ to_fp 11 53) x0_ack!1039)))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) y0_ack!1032)))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) z0_ack!1033)
                                   ((_ to_fp 11 53) z3_ack!1036))
                           ((_ to_fp 11 53) z1_ack!1034))
                   ((_ to_fp 11 53) z2_ack!1035))))
  (FPCHECK_FMUL_ACCURACY a!1 a!2)))

(check-sat)
(exit)
