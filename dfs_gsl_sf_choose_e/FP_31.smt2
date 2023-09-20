(declare-fun b_ack!350 () (_ BitVec 32))
(declare-fun a_ack!351 () (_ BitVec 32))
(assert (not (bvult a_ack!351 b_ack!350)))
(assert (not (= b_ack!350 a_ack!351)))
(assert (not (= #x00000000 b_ack!350)))
(assert (not (bvule a_ack!351 #x000000aa)))
(assert (not (bvult (bvmul #x00000002 b_ack!350) a_ack!351)))
(assert (not (bvult (bvsub a_ack!351 b_ack!350) #x00000040)))
(assert (not (bvult a_ack!351 b_ack!350)))
(assert (not (= b_ack!350 a_ack!351)))
(assert (not (= #x00000000 b_ack!350)))
(assert (bvult a_ack!351 (bvmul #x00000002 b_ack!350)))
(assert (not (bvule a_ack!351 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!351)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!351)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x4000000000000000)))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b)))))
(assert (not (fp.geq (fp.add roundNearestTiesToEven
                     ((_ to_fp_unsigned 11 53) roundNearestTiesToEven a_ack!351)
                     ((_ to_fp 11 53) #x3ff0000000000000))
             ((_ to_fp 11 53) #x3fe0000000000000))))

(check-sat)
(exit)
