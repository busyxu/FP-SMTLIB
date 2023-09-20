(declare-fun h_ack!274 () (_ BitVec 64))
(declare-fun x_ack!275 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun CF_pow
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.eq (fp.add roundNearestTiesToEven
                          ((_ to_fp 11 53) x_ack!275)
                          (fp.div roundNearestTiesToEven
                                  ((_ to_fp 11 53) h_ack!274)
                                  ((_ to_fp 11 53) #x4010000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (CF_pow (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) x_ack!275)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) h_ack!274)
                                   ((_ to_fp 11 53) #x4000000000000000)))
                   #x3ff8000000000000)))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (CF_pow (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) x_ack!275)
                                   ((_ to_fp 11 53) h_ack!274))
                           #x3ff8000000000000)
                   a!1)))
  (FPCHECK_FDIV_OVERFLOW
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x4000000000000000) a!2)
    h_ack!274))))

(check-sat)
(exit)
