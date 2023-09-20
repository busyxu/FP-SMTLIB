(declare-fun b_ack!20 () (_ BitVec 32))
(declare-fun a_ack!21 () (_ BitVec 32))
(declare-fun FPCHECK_FMUL_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (bvult a_ack!21 b_ack!20)))
(assert (not (= b_ack!20 a_ack!21)))
(assert (not (= #x00000000 b_ack!20)))
(assert (not (bvule a_ack!21 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!20) a_ack!21))
(assert (bvult (bvsub a_ack!21 (bvsub a_ack!21 b_ack!20)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!21 b_ack!20)) a_ack!21))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!21)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!21 (bvsub a_ack!21 b_ack!20))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!21)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!21 (bvsub a_ack!21 b_ack!20))))))
  (FPCHECK_FMUL_OVERFLOW #x3ff0000000000000 a!1)))

(check-sat)
(exit)
