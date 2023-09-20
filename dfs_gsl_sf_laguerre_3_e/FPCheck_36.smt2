(declare-fun a_ack!137 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(declare-fun b_ack!136 () (_ BitVec 64))
(assert (fp.eq ((_ to_fp 11 53) a_ack!137) ((_ to_fp 11 53) #xc000000000000000)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!136)
                                   ((_ to_fp 11 53) b_ack!136))
                           ((_ to_fp 11 53) #x4018000000000000))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x4008000000000000)
                           (fp.abs ((_ to_fp 11 53) b_ack!136))))))
  (FPCHECK_FMUL_OVERFLOW
    (fp.mul roundNearestTiesToEven a!1 ((_ to_fp 11 53) #x4000000000000000))
    #x3cb0000000000000)))

(check-sat)
(exit)
