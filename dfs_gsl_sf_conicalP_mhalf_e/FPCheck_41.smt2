(declare-fun b_ack!119 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun a_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FSUB_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!119) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!119) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!119) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!120)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!119)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3e50000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!120)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!119)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x3f20000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!120)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!119)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
(let ((a!2 (fp.eq (fp.mul roundNearestTiesToEven
                          (fp.div roundNearestTiesToEven
                                  (fp.mul roundNearestTiesToEven a!1 a!1)
                                  ((_ to_fp 11 53) #x4018000000000000))
                          ((_ to_fp 11 53) #x4018000000000000))
                  (fp.mul roundNearestTiesToEven a!1 a!1))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!120)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!119)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
(let ((a!2 (fp.eq (fp.abs (fp.div roundNearestTiesToEven
                                  (fp.mul roundNearestTiesToEven a!1 a!1)
                                  ((_ to_fp 11 53) #x4018000000000000)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!2))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!120)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!119)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 (fp.mul roundNearestTiesToEven a!1 a!1)
                 (fp.div roundNearestTiesToEven
                         (fp.mul roundNearestTiesToEven a!1 a!1)
                         ((_ to_fp 11 53) #x4018000000000000)))
         ((_ to_fp 11 53) #x4018000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) a_ack!120)
                   (CF_log (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!119)
                                   ((_ to_fp 11 53) #x3ffbb67ae8584caa))))))
  (FPCHECK_FSUB_UNDERFLOW
    #x3ff0000000000000
    (fp.div roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven a!1 a!1)
            ((_ to_fp 11 53) #x4018000000000000)))))

(check-sat)
(exit)
