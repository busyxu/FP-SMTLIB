(declare-fun epsabs_ack!749 () (_ BitVec 64))
(declare-fun epsrel_ack!750 () (_ BitVec 64))
(declare-fun a_ack!751 () (_ BitVec 64))
(declare-fun b_ack!748 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!749)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!750)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!749) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!750)
            ((_ to_fp 11 53) #x3cb0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!748)
                                   ((_ to_fp 11 53) a_ack!751))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!751)
                                   ((_ to_fp 11 53) b_ack!748))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
  (not (fp.leq (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3ff0000000000000)
                       a!2)
               ((_ to_fp 11 53) #x0000000000000000))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbff0000000000000)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!748)
                                   ((_ to_fp 11 53) a_ack!751))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!751)
                                   ((_ to_fp 11 53) b_ack!748))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x7ff0000000000000))))
  (not (or (fp.isNaN (fp.abs a!3))
           (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfefd88da3d12526)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!748)
                                   ((_ to_fp 11 53) a_ack!751))
                           ((_ to_fp 11 53) #x4000000000000000)))))
(let ((a!2 (fp.add roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!751)
                                   ((_ to_fp 11 53) b_ack!748))
                           ((_ to_fp 11 53) #x4000000000000000))
                   a!1)))
(let ((a!3 (fp.div roundNearestTiesToEven
                   (CF_log (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!2))
                   ((_ to_fp 11 53) #x1e9feffbfdfebf1f))))
(let ((a!4 (not (or (fp.isNaN (fp.abs a!3))
                    (fp.eq (fp.abs a!3) ((_ to_fp 11 53) #x7ff0000000000000))))))
  (not a!4))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #xbfef6297cff75cb0)
                   (fp.div roundNearestTiesToEven
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!748)
                                   ((_ to_fp 11 53) a_ack!751))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (FPCHECK_FADD_UNDERFLOW
    (fp.div roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!751)
                    ((_ to_fp 11 53) b_ack!748))
            ((_ to_fp 11 53) #x4000000000000000))
    a!1)))

(check-sat)
(exit)
