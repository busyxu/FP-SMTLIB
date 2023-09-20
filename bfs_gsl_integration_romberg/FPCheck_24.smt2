(declare-fun epsabs_ack!167 () (_ BitVec 64))
(declare-fun epsrel_ack!168 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(declare-fun a_ack!169 () (_ BitVec 64))
(declare-fun b_ack!166 () (_ BitVec 64))
(assert (not (fp.lt ((_ to_fp 11 53) epsabs_ack!167)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!168)
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) b_ack!166)
                                   ((_ to_fp 11 53) a_ack!169))))))
  (FPCHECK_FMUL_OVERFLOW
    #x3ff0000000000000
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) a_ack!169) a!1))))

(check-sat)
(exit)
