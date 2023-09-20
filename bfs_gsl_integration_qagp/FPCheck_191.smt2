(declare-fun limit_ack!2911 () (_ BitVec 64))
(declare-fun epsabs_ack!2916 () (_ BitVec 64))
(declare-fun a_ack!2917 () (_ BitVec 64))
(declare-fun x1_ack!2912 () (_ BitVec 64))
(declare-fun x2_ack!2913 () (_ BitVec 64))
(declare-fun x3_ack!2914 () (_ BitVec 64))
(declare-fun b_ack!2915 () (_ BitVec 64))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult #x00000000000003e8 limit_ack!2911)))
(assert (not (fp.leq ((_ to_fp 11 53) epsabs_ack!2916)
             ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) x1_ack!2912) ((_ to_fp 11 53) a_ack!2917))))
(assert (not (fp.lt ((_ to_fp 11 53) x2_ack!2913) ((_ to_fp 11 53) x1_ack!2912))))
(assert (not (fp.lt ((_ to_fp 11 53) x3_ack!2914) ((_ to_fp 11 53) x2_ack!2913))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!2915) ((_ to_fp 11 53) x3_ack!2914))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2917)
                                   ((_ to_fp 11 53) x1_ack!2912))))))
  (not (fp.leq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.sub roundNearestTiesToEven
                                   ((_ to_fp 11 53) x1_ack!2912)
                                   ((_ to_fp 11 53) a_ack!2917)))
                   ((_ to_fp 11 53) #x3fdbbcc009016adc))))
(let ((a!2 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3fe0000000000000)
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp 11 53) a_ack!2917)
                                   ((_ to_fp 11 53) x1_ack!2912)))
                   a!1)))
  (FPCHECK_FMUL_UNDERFLOW #x3ff0000000000000 a!2))))

(check-sat)
(exit)
