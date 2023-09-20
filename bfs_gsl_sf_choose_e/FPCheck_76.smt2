(declare-fun b_ack!224 () (_ BitVec 32))
(declare-fun a_ack!225 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!225 b_ack!224)))
(assert (not (= b_ack!224 a_ack!225)))
(assert (not (= #x00000000 b_ack!224)))
(assert (not (bvule a_ack!225 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!224) a_ack!225))
(assert (bvult (bvsub a_ack!225 (bvsub a_ack!225 b_ack!224)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!225 b_ack!224)) a_ack!225))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!225)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!225 (bvsub a_ack!225 b_ack!224))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (bvule (bvadd #x00000001 (bvsub a_ack!225 b_ack!224))
            (bvadd #xffffffff a_ack!225))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!225)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!225 (bvsub a_ack!225 b_ack!224)))))
      (a!2 (fp.abs ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!225 (bvsub a_ack!225 b_ack!224))))))
  (FPCHECK_FMUL_ACCURACY
    (fp.mul roundNearestTiesToEven
            ((_ to_fp 11 53) #x3cc0000000000000)
            (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) #x3ff0000000000000)
                    a!1))
    a!2)))

(check-sat)
(exit)
