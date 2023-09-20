(declare-fun limit_ack!2071 () (_ BitVec 64))
(declare-fun epsabs_ack!2076 () (_ BitVec 64))
(declare-fun a_ack!2077 () (_ BitVec 64))
(declare-fun x1_ack!2072 () (_ BitVec 64))
(declare-fun x2_ack!2073 () (_ BitVec 64))
(declare-fun x3_ack!2074 () (_ BitVec 64))
(declare-fun b_ack!2075 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2071)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2076)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2072) ((_ to_fp 11 53) a_ack!2077))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2073) ((_ to_fp 11 53) x1_ack!2072))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2074) ((_ to_fp 11 53) x2_ack!2073))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2075) ((_ to_fp 11 53) x3_ack!2074))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2077)
                                   ((_ to_fp 11 53) x1_ack!2072))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_OVERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2072)
                  ((_ to_fp 11 53) a_ack!2077)))
  #x3fe5bdb9228de198))

(check-sat)
(exit)
