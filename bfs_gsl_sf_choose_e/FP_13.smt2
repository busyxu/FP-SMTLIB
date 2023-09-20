(declare-fun b_ack!208 () (_ BitVec 32))
(declare-fun a_ack!209 () (_ BitVec 32))
(assert (not (bvult a_ack!209 b_ack!208)))
(assert (not (= b_ack!208 a_ack!209)))
(assert (not (= #x00000000 b_ack!208)))
(assert (not (bvule a_ack!209 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!208) a_ack!209))
(assert (bvult (bvsub a_ack!209 (bvsub a_ack!209 b_ack!208)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!209 b_ack!208)) a_ack!209))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!209)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!209 (bvsub a_ack!209 b_ack!208))))))
  (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff))))

(check-sat)
(exit)
