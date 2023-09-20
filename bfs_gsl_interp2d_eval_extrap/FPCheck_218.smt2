(declare-fun x1_ack!2264 () (_ BitVec 64))
(declare-fun x0_ack!2272 () (_ BitVec 64))
(declare-fun y0_ack!2265 () (_ BitVec 64))
(declare-fun x_ack!2270 () (_ BitVec 64))
(declare-fun y_ack!2271 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun z2_ack!2268 () (_ BitVec 64))
(declare-fun z1_ack!2267 () (_ BitVec 64))
(declare-fun z3_ack!2269 () (_ BitVec 64))
(declare-fun z0_ack!2266 () (_ BitVec 64))
(assert (not (fp.geq ((_ to_fp 11 53) x0_ack!2272) ((_ to_fp 11 53) x1_ack!2264))))
(assert (not (fp.geq ((_ to_fp 11 53) y0_ack!2265) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x_ack!2270) ((_ to_fp 11 53) x0_ack!2272))))
(assert (fp.geq ((_ to_fp 11 53) x_ack!2270) ((_ to_fp 11 53) x1_ack!2264)))
(assert (not (fp.lt ((_ to_fp 11 53) y_ack!2271) ((_ to_fp 11 53) y0_ack!2265))))
(assert (not (fp.geq ((_ to_fp 11 53) y_ack!2271) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2264)
                       ((_ to_fp 11 53) x0_ack!2272))
               ((_ to_fp 11 53) x0_ack!2272))
       ((_ to_fp 11 53) x1_ack!2264)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) x1_ack!2264)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) x1_ack!2264)
                       ((_ to_fp 11 53) x0_ack!2272)))
       ((_ to_fp 11 53) x0_ack!2272)))
(assert (fp.eq (fp.add roundNearestTiesToEven
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2271)
                       ((_ to_fp 11 53) y0_ack!2265))
               ((_ to_fp 11 53) y0_ack!2265))
       ((_ to_fp 11 53) y_ack!2271)))
(assert (fp.eq (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) y_ack!2271)
               (fp.sub roundNearestTiesToEven
                       ((_ to_fp 11 53) y_ack!2271)
                       ((_ to_fp 11 53) y0_ack!2265)))
       ((_ to_fp 11 53) y0_ack!2265)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!2270)
                           ((_ to_fp 11 53) x0_ack!2272))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) x1_ack!2264)
                           ((_ to_fp 11 53) x0_ack!2272))))
      (a!2 (fp.div roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) y_ack!2271)
                           ((_ to_fp 11 53) y0_ack!2265))
                   (fp.sub roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           ((_ to_fp 11 53) y0_ack!2265)))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z0_ack!2266)))
      (a!4 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!1
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) z3_ack!2269)))
      (a!5 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           a!2)
                   ((_ to_fp 11 53) z1_ack!2267))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.add roundNearestTiesToEven (fp.add roundNearestTiesToEven a!3 a!4) a!5)
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!2)
            ((_ to_fp 11 53) z2_ack!2268))))))

(check-sat)
(exit)
