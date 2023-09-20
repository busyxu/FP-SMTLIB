(declare-fun b_ack!552 () (_ BitVec 32))
(declare-fun a_ack!553 () (_ BitVec 32))
(assert (not (bvslt b_ack!552 #x00000000)))
(assert (not (bvslt a_ack!553 #x00000000)))
(assert (not (bvslt b_ack!552 a_ack!553)))
(assert (not (bvult b_ack!552 a_ack!553)))
(assert (not (= a_ack!553 b_ack!552)))
(assert (not (= #x00000000 a_ack!553)))
(assert (not (bvule b_ack!552 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 a_ack!553) b_ack!552)))
(assert (not (bvult (bvsub b_ack!552 a_ack!553) #x00000040)))
(assert (not (bvult b_ack!552 a_ack!553)))
(assert (not (= a_ack!553 b_ack!552)))
(assert (not (= #x00000000 a_ack!553)))
(assert (bvult b_ack!552 (bvmul #x00000002 a_ack!553)))
(assert (not (bvule b_ack!552 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!552)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!552)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (fp.geq (fp.add roundNearestTiesToEven
                ((_ to_fp_unsigned 11 53) roundNearestTiesToEven b_ack!552)
                ((_ to_fp 11 53) #x3ff0000000000000))
        ((_ to_fp 11 53) #x3fe0000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     b_ack!552)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))

(check-sat)
(exit)
