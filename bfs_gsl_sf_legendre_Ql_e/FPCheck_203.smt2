(declare-fun b_ack!628 () (_ BitVec 64))
(declare-fun a_ack!629 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!628) ((_ to_fp 11 53) #xbff0000000000000))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!628) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (not (bvslt a_ack!629 #x00000000)))
(assert (not (= #x00000000 a_ack!629)))
(assert (not (= #x00000001 a_ack!629)))
(assert (not (bvslt #x000186a0 a_ack!629)))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!628) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53)
                             roundNearestTiesToEven
                             (bvadd #x00000002 a_ack!629))
                           ((_ to_fp 11 53) #x0000000000000000))))
      (a!2 (fp.add roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) roundNearestTiesToEven a_ack!629)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x0000000000000000))))
(let ((a!3 (fp.mul roundNearestTiesToEven
                   (fp.add roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   a!2)
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) b_ack!628))))
(let ((a!4 (fp.add roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           a!3
                           ((_ to_fp 11 53) #x0000000000000000))
                   (fp.mul roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   a!2
                                   ((_ to_fp 11 53) #x0000000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            (fp.add roundNearestTiesToEven
                    a!1
                    ((_ to_fp 11 53) #x3ff0000000000000))
            ((_ to_fp 11 53) b_ack!628))
    a!4)))))

(check-sat)
(exit)
