(declare-fun b_ack!590 () (_ BitVec 32))
(declare-fun a_ack!591 () (_ BitVec 32))
(assert (not (bvslt b_ack!590 #x00000000)))
(assert (not (bvslt a_ack!591 #x00000000)))
(assert (not (bvslt b_ack!590 a_ack!591)))
(assert (not (bvult b_ack!590 a_ack!591)))
(assert (not (= a_ack!591 b_ack!590)))
(assert (not (= #x00000000 a_ack!591)))
(assert (not (bvule b_ack!590 #x000000aa)))
(assert (bvult (bvmul #x00000002 a_ack!591) b_ack!590))
(assert (not (bvult (bvsub b_ack!590 (bvsub b_ack!590 a_ack!591)) #x00000040)))
(assert (not (bvult b_ack!590 (bvsub b_ack!590 a_ack!591))))
(assert (not (= (bvsub b_ack!590 a_ack!591) b_ack!590)))
(assert (not (= #x00000000 (bvsub b_ack!590 a_ack!591))))
(assert (bvult b_ack!590 (bvmul #x00000002 (bvsub b_ack!590 a_ack!591))))
(assert (not (bvule b_ack!590 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!590)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!590)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!590)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!590)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
