(declare-fun b_ack!109 () (_ BitVec 64))
(declare-fun a_ack!110 () (_ BitVec 64))
(declare-fun FPCHECK_FADD_ACCURACY
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.lt ((_ to_fp 11 53) b_ack!109) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!110) ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) b_ack!109)
                          ((_ to_fp 11 53) b_ack!109))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x4024000000000000)
                          (fp.add roundNearestTiesToEven
                                  ((_ to_fp 11 53) a_ack!110)
                                  ((_ to_fp 11 53) #x3ff0000000000000))))))
  (not a!1)))
(assert (FPCHECK_FADD_ACCURACY
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) a_ack!110)
          ((_ to_fp 11 53) a_ack!110))
  (fp.mul roundNearestTiesToEven
          ((_ to_fp 11 53) b_ack!109)
          ((_ to_fp 11 53) b_ack!109))))

(check-sat)
(exit)
