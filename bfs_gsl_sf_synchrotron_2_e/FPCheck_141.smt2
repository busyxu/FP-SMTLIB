(declare-fun a_ack!190 () (_ BitVec 64))
(declare-fun CF_pow ((_ BitVec 64) (_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (fp.lt ((_ to_fp 11 53) a_ack!190) ((_ to_fp 11 53) #x3e66a09e667f3bcd)))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!190) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff2d7be2398b31c)
                           (CF_pow a_ack!190 #x3fd5555555555555))
                   ((_ to_fp 11 53) a_ack!190))))
  (fp.eq (fp.add roundNearestTiesToEven
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1)
                 a!1)
         ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff2d7be2398b31c)
                           (CF_pow a_ack!190 #x3fd5555555555555))
                   ((_ to_fp 11 53) a_ack!190))))
  (fp.eq (fp.sub roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 (fp.sub roundNearestTiesToEven
                         ((_ to_fp 11 53) #x3ff0000000000000)
                         a!1))
         a!1)))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff2d7be2398b31c)
                                   (CF_pow a_ack!190 #x3fd5555555555555))
                           ((_ to_fp 11 53) a_ack!190)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3cc0000000000000
    (fp.mul roundNearestTiesToEven
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff1323bdcd9c076)
                    (CF_pow a_ack!190 #x3fd5555555555555))
            a!1))))

(check-sat)
(exit)
