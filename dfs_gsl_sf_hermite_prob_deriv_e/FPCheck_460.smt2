(declare-fun b_ack!2421 () (_ BitVec 32))
(declare-fun a_ack!2422 () (_ BitVec 32))
(declare-fun FPCHECK_FSUB_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (bvslt b_ack!2421 #x00000000)))
(assert (not (bvslt a_ack!2422 #x00000000)))
(assert (not (bvslt b_ack!2421 a_ack!2422)))
(assert (not (bvult b_ack!2421 a_ack!2422)))
(assert (not (= a_ack!2422 b_ack!2421)))
(assert (not (= #x00000000 a_ack!2422)))
(assert (not (bvule b_ack!2421 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 a_ack!2422) b_ack!2421)))
(assert (not (bvult (bvsub b_ack!2421 a_ack!2422) #x00000040)))
(assert (not (bvult b_ack!2421 a_ack!2422)))
(assert (not (= a_ack!2422 b_ack!2421)))
(assert (not (= #x00000000 a_ack!2422)))
(assert (bvult b_ack!2421 (bvmul #x00000002 a_ack!2422)))
(assert (not (bvule b_ack!2421 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2421)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!2421)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2421)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (FPCHECK_FSUB_ACCURACY
  (fp.add roundNearestTiesToEven
          ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!2421)
          ((_ to_fp 11 53) #x3ff0000000000000))
  #x3ff0000000000000))

(check-sat)
(exit)
