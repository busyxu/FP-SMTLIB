(declare-fun limit_ack!2050 () (_ BitVec 64))
(declare-fun epsabs_ack!2055 () (_ BitVec 64))
(declare-fun epsrel_ack!2049 () (_ BitVec 64))
(declare-fun a_ack!2056 () (_ BitVec 64))
(declare-fun x1_ack!2051 () (_ BitVec 64))
(declare-fun x2_ack!2052 () (_ BitVec 64))
(declare-fun x3_ack!2053 () (_ BitVec 64))
(declare-fun b_ack!2054 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2050)))
(assert (fp.leq ((_ to_fp 11 53) epsabs_ack!2055) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2049)
            ((_ to_fp 11 53) #x3d09000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) epsrel_ack!2049)
            ((_ to_fp 11 53) #x3a0fb0f6be506019))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2051) ((_ to_fp 11 53) a_ack!2056))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2052) ((_ to_fp 11 53) x1_ack!2051))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2053) ((_ to_fp 11 53) x2_ack!2052))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2054) ((_ to_fp 11 53) x3_ack!2053))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2056)
                                   ((_ to_fp 11 53) x1_ack!2051))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2051)
                  ((_ to_fp 11 53) a_ack!2056)))
  #x3fe5bdb9228de198))

(check-sat)
(exit)
