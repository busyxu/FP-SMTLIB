(declare-fun a_ack!122 () (_ BitVec 64))
(declare-fun c_ack!121 () (_ BitVec 64))
(declare-fun b_ack!120 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_ACCURACY ((_ FloatingPoint 11 53) (_ BitVec 64)) Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!122) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!120)
                           ((_ to_fp 11 53) b_ack!120))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!122))
                           ((_ to_fp 11 53) c_ack!121)))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) b_ack!120)
                           ((_ to_fp 11 53) b_ack!120))
                   (fp.mul roundNearestTiesToEven
                           (fp.mul roundNearestTiesToEven
                                   ((_ to_fp 11 53) #x4010000000000000)
                                   ((_ to_fp 11 53) a_ack!122))
                           ((_ to_fp 11 53) c_ack!121)))))
  (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000))))
(assert (FPCHECK_FDIV_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) #xbfe0000000000000)
          ((_ to_fp 11 53) b_ack!120))
  a_ack!122))

(check-sat)
(exit)
