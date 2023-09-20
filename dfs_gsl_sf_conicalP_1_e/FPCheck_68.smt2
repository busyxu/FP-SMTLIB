(declare-fun b_ack!164 () (_ BitVec 64))
(declare-fun a_ack!165 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!164) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (fp.eq ((_ to_fp 11 53) a_ack!165) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!164) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!164) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.lt (fp.sub roundNearestTiesToEven
               ((_ to_fp 11 53) b_ack!164)
               ((_ to_fp 11 53) #x3ff0000000000000))
       ((_ to_fp 11 53) #x3e50000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!164))))))
  (not (fp.gt ((_ to_fp 11 53) #x3ff0000000000000)
              (fp.div roundNearestTiesToEven
                      ((_ to_fp 11 53) #x3ff0000000000000)
                      a!1)))))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3cb0000000000000)
                   (fp.abs (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!164)))))
      (a!3 (fp.sub roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fd4000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!164)
                                   ((_ to_fp 11 53) #x3ff0000000000000))))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   a!1)
                           ((_ to_fp 11 53) #x4008000000000000))
                   ((_ to_fp 11 53) #x3cb0000000000000))))
  (FPCHECK_FMUL_UNDERFLOW
    a!2
    (fp.abs (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #xbed0000000000000)
                    a!3))))))

(check-sat)
(exit)
