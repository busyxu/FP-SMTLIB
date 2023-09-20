(declare-fun limit_ack!2175 () (_ BitVec 64))
(declare-fun epsabs_ack!2174 () (_ BitVec 64))
(declare-fun b_ack!2173 () (_ BitVec 64))
(declare-fun a_ack!2176 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2175)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2174)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2176)
                                   ((_ to_fp 11 53) b_ack!2173))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!2173)
                  ((_ to_fp 11 53) a_ack!2176)))
  #x3fefdc6c69272ae5))

(check-sat)
(exit)
