(declare-fun limit_ack!2085 () (_ BitVec 64))
(declare-fun epsabs_ack!2090 () (_ BitVec 64))
(declare-fun a_ack!2091 () (_ BitVec 64))
(declare-fun x1_ack!2086 () (_ BitVec 64))
(declare-fun x2_ack!2087 () (_ BitVec 64))
(declare-fun x3_ack!2088 () (_ BitVec 64))
(declare-fun b_ack!2089 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ BitVec 64))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2085)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2090)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2086) ((_ to_fp 11 53) a_ack!2091))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2087) ((_ to_fp 11 53) x1_ack!2086))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2088) ((_ to_fp 11 53) x2_ack!2087))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2089) ((_ to_fp 11 53) x3_ack!2088))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2091)
                                   ((_ to_fp 11 53) x1_ack!2086))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (FPCHECK_FMUL_UNDERFLOW
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #x3fe0000000000000)
          (fp.sub roundNearestTiesToEven
                  ((_ to_fp 11 53) x1_ack!2086)
                  ((_ to_fp 11 53) a_ack!2091)))
  #x3fe5bdb9228de198))

(check-sat)
(exit)
