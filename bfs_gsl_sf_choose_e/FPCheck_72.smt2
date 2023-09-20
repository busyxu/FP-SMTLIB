(declare-fun b_ack!214 () (_ BitVec 32))
(declare-fun a_ack!215 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_UNDERFLOW
             ((_ BitVec 64) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!215 b_ack!214)))
(assert (not (= b_ack!214 a_ack!215)))
(assert (not (= #x00000000 b_ack!214)))
(assert (not (bvule a_ack!215 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!214) a_ack!215))
(assert (bvult (bvsub a_ack!215 (bvsub a_ack!215 b_ack!214)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!215 b_ack!214)) a_ack!215))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!215)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!215 (bvsub a_ack!215 b_ack!214))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (not (bvule (bvadd #x00000001 (bvsub a_ack!215 b_ack!214))
            (bvadd #xffffffff a_ack!215))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!215)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!215 (bvsub a_ack!215 b_ack!214))))))
  (FPCHECK_FMUL_UNDERFLOW
    #x3cc0000000000000
    (fp.mul roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
