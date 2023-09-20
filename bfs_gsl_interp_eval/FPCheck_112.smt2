(declare-fun x1_ack!1192 () (_ BitVec 64))
(declare-fun x0_ack!1198 () (_ BitVec 64))
(declare-fun x2_ack!1193 () (_ BitVec 64))
(declare-fun xx_ack!1197 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun y0_ack!1194 () (_ BitVec 64))
(declare-fun y1_ack!1195 () (_ BitVec 64))
(declare-fun y2_ack!1196 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1198) ((_ to_fp 11 53) x1_ack!1192)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1192) ((_ to_fp 11 53) x2_ack!1193)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1192)
                       ((_ to_fp 11 53) x0_ack!1198))
               ((_ to_fp 11 53) x0_ack!1198))
       ((_ to_fp 11 53) x1_ack!1192)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1192)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1192)
                       ((_ to_fp 11 53) x0_ack!1198)))
       ((_ to_fp 11 53) x0_ack!1198)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1193)
                       ((_ to_fp 11 53) x1_ack!1192))
               ((_ to_fp 11 53) x1_ack!1192))
       ((_ to_fp 11 53) x2_ack!1193)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1193)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1193)
                       ((_ to_fp 11 53) x1_ack!1192)))
       ((_ to_fp 11 53) x1_ack!1192)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1192)
                    ((_ to_fp 11 53) x0_ack!1198))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1193)
                    ((_ to_fp 11 53) x1_ack!1192))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1197) ((_ to_fp 11 53) x0_ack!1198))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1197) ((_ to_fp 11 53) x2_ack!1193))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1197) ((_ to_fp 11 53) x0_ack!1198))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1197) ((_ to_fp 11 53) x1_ack!1192)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1192) ((_ to_fp 11 53) xx_ack!1197))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1193)
               ((_ to_fp 11 53) x1_ack!1192))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1196)
                           ((_ to_fp 11 53) y1_ack!1195))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1193)
                                   ((_ to_fp 11 53) x1_ack!1192)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1195)
                           ((_ to_fp 11 53) y0_ack!1194))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1192)
                                   ((_ to_fp 11 53) x0_ack!1198)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1193)
                                   ((_ to_fp 11 53) x1_ack!1192))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1192)
                                   ((_ to_fp 11 53) x0_ack!1198))))))
  (FPCHECK_FMUL_OVERFLOW
    #x4000000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x4008000000000000)
                    (fp.sub roundNearestTiesToEven a!1 a!2))
            a!3))))

(check-sat)
(exit)
