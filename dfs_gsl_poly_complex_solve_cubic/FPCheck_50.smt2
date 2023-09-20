(declare-fun FPCHECK_FMUL_ACCURACY ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun c_ack!148 () (_ BitVec 64))
(declare-fun b_ack!147 () (_ BitVec 64))
(declare-fun a_ack!149 () (_ BitVec 64))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) a_ack!149))
                           ((_ to_fp 11 53) a_ack!149))
                   ((_ to_fp 11 53) a_ack!149))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   a!1
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4022000000000000)
                                   ((_ to_fp 11 53) a_ack!149))
                           ((_ to_fp 11 53) b_ack!147)))))
  (FPCHECK_FMUL_ACCURACY
    #x4086c80000000000
    (fp.add roundNearestTiesToEven
            a!2
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x403b000000000000)
                    ((_ to_fp 11 53) c_ack!148)))))))

(check-sat)
(exit)
