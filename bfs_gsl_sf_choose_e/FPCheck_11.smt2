(declare-fun b_ack!36 () (_ BitVec 32))
(declare-fun a_ack!37 () (_ BitVec 32))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (bvult a_ack!37 b_ack!36)))
(assert (not (= b_ack!36 a_ack!37)))
(assert (not (= #x00000000 b_ack!36)))
(assert (not (bvule a_ack!37 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!36) a_ack!37))
(assert (bvult (bvsub a_ack!37 (bvsub a_ack!37 b_ack!36)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!37 b_ack!36)) a_ack!37))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!37)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!37 (bvsub a_ack!37 b_ack!36))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!37 b_ack!36)) (bvadd #xffffffff a_ack!37)))
(assert (let ((a!1 ((_ to_fp_unsigned 11 53)
             roundNearestTiesToEven
             (bvadd #xffffffff (bvsub a_ack!37 (bvsub a_ack!37 b_ack!36))))))
  (FPCHECK_FDIV_INVALID
    ((_ to_fp_unsigned 11 53)
      roundNearestTiesToEven
      (bvadd #xffffffff a_ack!37))
    a!1)))

(check-sat)
(exit)
