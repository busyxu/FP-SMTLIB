(declare-fun a_ack!2754 () (_ BitVec 64))
(declare-fun b_ack!2753 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             (_ FloatingPoint 11 53))
(assert (not (fp.leq ((_ to_fp 11 53) a_ack!2754) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!2753) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!2754))
                          (CF_log b_ack!2753))
                  ((_ to_fp 11 53) #xc0861b2bdd7abcd2))))
  (not a!1)))
(assert (let ((a!1 (fp.gt (fp.mul roundNearestTiesToEven
                          (fp.sub roundNearestTiesToEven
                                  ((_ to_fp 11 53) #x8000000000000000)
                                  ((_ to_fp 11 53) a_ack!2754))
                          (CF_log b_ack!2753))
                  ((_ to_fp 11 53) #x40862642fefa39ef))))
  (not a!1)))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2754) ((_ to_fp 11 53) #x404b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2753) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2754) ((_ to_fp 11 53) #x403b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2753) ((_ to_fp 11 53) #x3fd0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!2754) ((_ to_fp 11 53) #x403b000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2753) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fb5555555555555)
                       ((_ to_fp 11 53) a_ack!2754))
               ((_ to_fp 11 53) #x3fb5555555555555))
       ((_ to_fp 11 53) a_ack!2754)))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) a_ack!2754))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.eq (fp.div roundNearestTiesToEven
               (fp.mul roundNearestTiesToEven
                       ((_ to_fp 11 53) #x3fb5555555555555)
                       ((_ to_fp 11 53) a_ack!2754))
               ((_ to_fp 11 53) a_ack!2754))
       ((_ to_fp 11 53) #x3fb5555555555555)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4024000000000000)
                                   ((_ to_fp 11 53) b_ack!2753))
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x8000000000000000)
                                   ((_ to_fp 11 53) a_ack!2754)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4024000000000000)
                           ((_ to_fp 11 53) b_ack!2753)))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3fb5555555555555)
            ((_ to_fp 11 53) a_ack!2754))
    a!1)))

(check-sat)
(exit)
