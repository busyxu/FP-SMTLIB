(declare-fun x1_ack!1153 () (_ BitVec 64))
(declare-fun x0_ack!1159 () (_ BitVec 64))
(declare-fun x2_ack!1154 () (_ BitVec 64))
(declare-fun xx_ack!1158 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1155 () (_ BitVec 64))
(declare-fun y1_ack!1156 () (_ BitVec 64))
(declare-fun y2_ack!1157 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1159) ((_ to_fp 11 53) x1_ack!1153)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1153) ((_ to_fp 11 53) x2_ack!1154)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1153)
                       ((_ to_fp 11 53) x0_ack!1159))
               ((_ to_fp 11 53) x0_ack!1159))
       ((_ to_fp 11 53) x1_ack!1153)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1153)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1153)
                       ((_ to_fp 11 53) x0_ack!1159)))
       ((_ to_fp 11 53) x0_ack!1159)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1154)
                       ((_ to_fp 11 53) x1_ack!1153))
               ((_ to_fp 11 53) x1_ack!1153))
       ((_ to_fp 11 53) x2_ack!1154)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1154)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1154)
                       ((_ to_fp 11 53) x1_ack!1153)))
       ((_ to_fp 11 53) x1_ack!1153)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1153)
                    ((_ to_fp 11 53) x0_ack!1159))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1154)
                    ((_ to_fp 11 53) x1_ack!1153))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1158) ((_ to_fp 11 53) x0_ack!1159))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1158) ((_ to_fp 11 53) x2_ack!1154))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1158) ((_ to_fp 11 53) x0_ack!1159))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1158) ((_ to_fp 11 53) x1_ack!1153)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1153) ((_ to_fp 11 53) xx_ack!1158))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1154)
               ((_ to_fp 11 53) x1_ack!1153))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1157)
                           ((_ to_fp 11 53) y1_ack!1156))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1154)
                                   ((_ to_fp 11 53) x1_ack!1153)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1156)
                           ((_ to_fp 11 53) y0_ack!1155))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1153)
                                   ((_ to_fp 11 53) x0_ack!1159)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1154)
                                   ((_ to_fp 11 53) x1_ack!1153))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1153)
                                   ((_ to_fp 11 53) x0_ack!1159))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
