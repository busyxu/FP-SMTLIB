(declare-fun x1_ack!1238 () (_ BitVec 64))
(declare-fun x0_ack!1244 () (_ BitVec 64))
(declare-fun x2_ack!1239 () (_ BitVec 64))
(declare-fun xx_ack!1243 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun y0_ack!1240 () (_ BitVec 64))
(declare-fun y1_ack!1241 () (_ BitVec 64))
(declare-fun y2_ack!1242 () (_ BitVec 64))
(assert (fp.lt ((_ to_fp 11 53) x0_ack!1244) ((_ to_fp 11 53) x1_ack!1238)))
(assert (fp.lt ((_ to_fp 11 53) x1_ack!1238) ((_ to_fp 11 53) x2_ack!1239)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1238)
                       ((_ to_fp 11 53) x0_ack!1244))
               ((_ to_fp 11 53) x0_ack!1244))
       ((_ to_fp 11 53) x1_ack!1238)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!1238)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!1238)
                       ((_ to_fp 11 53) x0_ack!1244)))
       ((_ to_fp 11 53) x0_ack!1244)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1239)
                       ((_ to_fp 11 53) x1_ack!1238))
               ((_ to_fp 11 53) x1_ack!1238))
       ((_ to_fp 11 53) x2_ack!1239)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1239)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x2_ack!1239)
                       ((_ to_fp 11 53) x1_ack!1238)))
       ((_ to_fp 11 53) x1_ack!1238)))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x1_ack!1238)
                    ((_ to_fp 11 53) x0_ack!1244))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.sub roundNearestTiesToEven
                    ((_ to_fp 11 53) x2_ack!1239)
                    ((_ to_fp 11 53) x1_ack!1238))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1243) ((_ to_fp 11 53) x0_ack!1244))))
(assert (not (fp.gt ((_ to_fp 11 53) xx_ack!1243) ((_ to_fp 11 53) x2_ack!1239))))
(assert (not (fp.lt ((_ to_fp 11 53) xx_ack!1243) ((_ to_fp 11 53) x0_ack!1244))))
(assert (fp.geq ((_ to_fp 11 53) xx_ack!1243) ((_ to_fp 11 53) x1_ack!1238)))
(assert (not (fp.gt ((_ to_fp 11 53) x1_ack!1238) ((_ to_fp 11 53) xx_ack!1243))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x2_ack!1239)
               ((_ to_fp 11 53) x1_ack!1238))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y2_ack!1242)
                           ((_ to_fp 11 53) y1_ack!1241))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1239)
                                   ((_ to_fp 11 53) x1_ack!1238)))))
      (a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y1_ack!1241)
                           ((_ to_fp 11 53) y0_ack!1240))
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1238)
                                   ((_ to_fp 11 53) x0_ack!1244)))))
      (a!3 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x2_ack!1239)
                                   ((_ to_fp 11 53) x1_ack!1238))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!1238)
                                   ((_ to_fp 11 53) x0_ack!1244))))))
(let ((a!4 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4008000000000000)
                                   (fp.sub roundNearestTiesToEven a!1 a!2))
                           a!3))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.sub roundNearestTiesToEven
            ((_ to_fp 11 53) x2_ack!1239)
            ((_ to_fp 11 53) x1_ack!1238))
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x0000000000000000) a!4)))))

(check-sat)
(exit)
