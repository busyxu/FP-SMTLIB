(declare-fun b_ack!284 () (_ BitVec 32))
(declare-fun a_ack!285 () (_ BitVec 32))
(assert (not (bvult a_ack!285 b_ack!284)))
(assert (not (= b_ack!284 a_ack!285)))
(assert (not (= #x00000000 b_ack!284)))
(assert (bvult a_ack!285 (bvmul #x00000002 b_ack!284)))
(assert (not (bvule a_ack!285 #x000000aa)))
(assert (let ((a!1 (fp.abs (fp.sub roundNearestTiesToEven
                           (fp.add roundNearestTiesToEven
                                   ((_ to_fp_unsigned 11 53)
                                     roundNearestTiesToEven
                                     a_ack!285)
                                   ((_ to_fp 11 53) #x3ff0000000000000))
                           ((_ to_fp 11 53) #x3ff0000000000000)))))
  (fp.lt a!1 ((_ to_fp 11 53) #x3f847ae147ae147b))))

(check-sat)
(exit)
