(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!139 () (_ BitVec 64))
(declare-fun b_ack!138 () (_ BitVec 64))
(declare-fun a_ack!140 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!140))
                           ((_ to_fp 11 53) a_ack!140))
                   ((_ to_fp 11 53) a_ack!140))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!140))
                           ((_ to_fp 11 53) b_ack!138)))))
  (FPCHECK_FMUL_OVERFLOW
    #x4086c80000000000
    (fp.add roundNearestTiesToEven
            a!2
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x403b000000000000)
                    ((_ to_fp 11 53) c_ack!139)))))))

(check-sat)
(exit)
