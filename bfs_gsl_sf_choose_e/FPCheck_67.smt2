(declare-fun b_ack!196 () (_ BitVec 32))
(declare-fun a_ack!197 () (_ BitVec 32))
(assert (not (bvult a_ack!197 b_ack!196)))
(assert (not (= b_ack!196 a_ack!197)))
(assert (not (= #x00000000 b_ack!196)))
(assert (not (bvule a_ack!197 #x000000aa)))
(assert (bvult (bvmul #x00000002 b_ack!196) a_ack!197))
(assert (bvult (bvsub a_ack!197 (bvsub a_ack!197 b_ack!196)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!197 b_ack!196)) a_ack!197))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!197)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!197 (bvsub a_ack!197 b_ack!196))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (bvule (bvadd #x00000001 (bvsub a_ack!197 b_ack!196))
       (bvadd #xffffffff a_ack!197)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!197)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub a_ack!197 (bvsub a_ack!197 b_ack!196))))))
  (fp.eq (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
