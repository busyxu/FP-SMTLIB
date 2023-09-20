(declare-fun b_ack!846 () (_ BitVec 32))
(declare-fun a_ack!847 () (_ BitVec 32))
(assert (not (bvslt b_ack!846 #x00000000)))
(assert (not (bvslt a_ack!847 #x00000000)))
(assert (not (bvslt b_ack!846 a_ack!847)))
(assert (not (bvult b_ack!846 a_ack!847)))
(assert (not (= a_ack!847 b_ack!846)))
(assert (not (= #x00000000 a_ack!847)))
(assert (not (bvule b_ack!846 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!847) b_ack!846))
(assert (bvult (bvsub b_ack!846 (bvsub b_ack!846 a_ack!847)) #x00000040))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!846 a_ack!847)) b_ack!846))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!846)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!846 (bvsub b_ack!846 a_ack!847))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x7fefffffffffffff)))))
(assert (bvule (bvadd #x00000001 (bvsub b_ack!846 a_ack!847))
       (bvadd #xffffffff b_ack!846)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!846)
                   ((_ to_fp_unsigned 11 53)
                     roundNearestTiesToEven
                     (bvsub b_ack!846 (bvsub b_ack!846 a_ack!847))))))
  (fp.eq (fp.mul roundNearestTiesToEven
                 ((_ to_fp 11 53) #x3ff0000000000000)
                 a!1)
         ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
