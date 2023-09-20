(declare-fun a_ack!190 () (_ BitVec 32))
(declare-fun b_ack!189 () (_ BitVec 64))
(assert (not (bvslt a_ack!190 #x00000000)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!189) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (= #x00000000 a_ack!190)))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!189) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!189) ((_ to_fp 11 53) #x1fff5de25335c4ee))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!189)))
                   (fp.add roundNearestTiesToEven
                           ((_ to_fp 11 53) #x3ff0000000000000)
                           (fp.div roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x3ff0000000000000)
                                   ((_ to_fp 11 53) b_ack!189))))))
  (not (fp.lt (fp.abs a!1) ((_ to_fp 11 53) #x0010000000000000)))))
(assert (not (fp.leq ((_ to_fp 11 53) b_ack!189) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.abs (fp.div roundNearestTiesToEven
                           ((_ to_fp 11 53) #x400921fb54442d18)
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4000000000000000)
                                   ((_ to_fp 11 53) b_ack!189))))))
  (not (fp.lt a!1 ((_ to_fp 11 53) #x0010000000000000)))))
(assert (bvslt #x00000001 a_ack!190))

(check-sat)
(exit)
