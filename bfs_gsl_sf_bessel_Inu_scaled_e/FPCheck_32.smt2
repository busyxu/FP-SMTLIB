(declare-fun b_ack!111 () (_ BitVec 64))
(declare-fun a_ack!112 () (_ BitVec 64))
(declare-fun FPCHECK_FDIV_OVERFLOW ((_ BitVec 64) (_ FloatingPoint 11 53)) Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!111) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!112) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!111)
                          ((_ to_fp 11 53) b_ack!111))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!112)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (FPCHECK_FDIV_OVERFLOW
  #x3fe0000000000000
  (fp.add roundNearestTiesToEven
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) a_ack!112)
                  ((_ to_fp 11 53) a_ack!112))
          (fp.mul roundNearestTiesToEven
                  ((_ to_fp 11 53) b_ack!111)
                  ((_ to_fp 11 53) b_ack!111)))))

(check-sat)
(exit)
