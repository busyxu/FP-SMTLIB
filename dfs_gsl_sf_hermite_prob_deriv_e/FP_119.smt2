(declare-fun b_ack!2491 () (_ BitVec 32))
(declare-fun a_ack!2492 () (_ BitVec 32))
(assert (not (bvslt b_ack!2491 #x00000000)))
(assert (not (bvslt a_ack!2492 #x00000000)))
(assert (not (bvslt b_ack!2491 a_ack!2492)))
(assert (not (bvult b_ack!2491 a_ack!2492)))
(assert (not (= a_ack!2492 b_ack!2491)))
(assert (not (= #x00000000 a_ack!2492)))
(assert (not (bvule b_ack!2491 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 a_ack!2492) b_ack!2491)))
(assert (not (bvult (bvsub b_ack!2491 a_ack!2492) #x00000040)))
(assert (not (bvult b_ack!2491 a_ack!2492)))
(assert (not (= a_ack!2492 b_ack!2491)))
(assert (not (= #x00000000 a_ack!2492)))
(assert (not (bvult b_ack!2491 (bvmul #x00000002 a_ack!2492))))
(assert (not (bvule b_ack!2491 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2491)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2491)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))

(check-sat)
(exit)
