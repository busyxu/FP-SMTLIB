(declare-fun b_ack!222 () (_ BitVec 32))
(declare-fun a_ack!223 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!223 b_ack!222)))
(assert (not (= b_ack!222 a_ack!223)))
(assert (not (= #x00000000 b_ack!222)))
(assert (not (bvule a_ack!223 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!222) a_ack!223))
(assert (bvult (bvsub a_ack!223 (bvsub a_ack!223 b_ack!222)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!223 b_ack!222)) a_ack!223))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!223)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!223 (bvsub a_ack!223 b_ack!222))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (bvule (bvadd #x00000001 (bvsub a_ack!223 b_ack!222))
            (bvadd #xffffffff a_ack!223))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!223)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!223 (bvsub a_ack!223 b_ack!222)))))
      (a!2 (fp.abs ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!223 (bvsub a_ack!223 b_ack!222))))))
  (FPCHECK_FMUL_UNDERFLOW
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!1))
    a!2)))

(check-sat)
(exit)
