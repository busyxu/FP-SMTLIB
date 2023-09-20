(declare-fun x1_ack!1181 () (_ BitVec 64))
(declare-fun x0_ack!1187 () (_ BitVec 64))
(declare-fun x2_ack!1182 () (_ BitVec 64))
(declare-fun xx_ack!1186 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1183 () (_ BitVec 64))
(declare-fun y1_ack!1184 () (_ BitVec 64))
(declare-fun y2_ack!1185 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1187) ((_ to_fp 11 53) x1_ack!1181)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1181) ((_ to_fp 11 53) x2_ack!1182)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1181)
                       ((_ to_fp 11 53) x0_ack!1187))
               ((_ to_fp 11 53) x0_ack!1187))
       ((_ to_fp 11 53) x1_ack!1181)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1181)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1181)
                       ((_ to_fp 11 53) x0_ack!1187)))
       ((_ to_fp 11 53) x0_ack!1187)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1182)
                       ((_ to_fp 11 53) x1_ack!1181))
               ((_ to_fp 11 53) x1_ack!1181))
       ((_ to_fp 11 53) x2_ack!1182)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1182)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1182)
                       ((_ to_fp 11 53) x1_ack!1181)))
       ((_ to_fp 11 53) x1_ack!1181)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1181)
                    ((_ to_fp 11 53) x0_ack!1187))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1182)
                    ((_ to_fp 11 53) x1_ack!1181))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1186) ((_ to_fp 11 53) x0_ack!1187))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1186) ((_ to_fp 11 53) x2_ack!1182))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1186) ((_ to_fp 11 53) x0_ack!1187))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1186) ((_ to_fp 11 53) x1_ack!1181)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1181) ((_ to_fp 11 53) xx_ack!1186))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1182)
               ((_ to_fp 11 53) x1_ack!1181))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1185)
                           ((_ to_fp 11 53) y1_ack!1184))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1182)
                                   ((_ to_fp 11 53) x1_ack!1181)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1184)
                           ((_ to_fp 11 53) y0_ack!1183))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1181)
                                   ((_ to_fp 11 53) x0_ack!1187)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1182)
                                   ((_ to_fp 11 53) x1_ack!1181))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1181)
                                   ((_ to_fp 11 53) x0_ack!1187))))))
  (FPCHECK_FMUL_ACCURACY
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
