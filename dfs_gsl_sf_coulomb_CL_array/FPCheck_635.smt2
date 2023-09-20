(declare-fun a_ack!2295 () (_ BitVec 64))
(declare-fun c_ack!2294 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2295) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!2295))
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) c_ack!2294)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2295)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3cb0000000000000)))))
(assert (not (fp.leq (fp.add roundNearestTiesToEven
                     ((_ to_fp 11 53) a_ack!2295)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2295)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2295)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (not (fp.lt (fp.abs a!1) (fp.abs ((_ to_fp 11 53) c_ack!2294))))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2295)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x401e000000000000))))
  (not (fp.gt (fp.abs a!1) (fp.abs ((_ to_fp 11 53) c_ack!2294))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2294))
                           (fp.abs ((_ to_fp 11 53) c_ack!2294)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) c_ack!2294))
                           (fp.abs ((_ to_fp 11 53) c_ack!2294))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3fe0000000000000)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)))))
  (FPCHECK_FADD_UNDERFLOW (CF_log (fp.abs ((_ to_fp 11 53) c_ack!2294))) a!2))))

(check-sat)
(exit)
