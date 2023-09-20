(declare-fun a_ack!251 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(declare-fun b_ack!250 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!251) ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   ((_ to_fp 11 53) #xc000000000000000)
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff5555555555555)
                                   ((_ to_fp 11 53) b_ack!250))
                           ((_ to_fp 11 53) b_ack!250)))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x4000000000000000)
                   (fp.abs (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!250)
                                   a!1)))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3cb0000000000000
    (fp.add roundNearestTiesToEven a!2 (fp.abs ((_ to_fp 11 53) b_ack!250)))))))

(check-sat)
(exit)
