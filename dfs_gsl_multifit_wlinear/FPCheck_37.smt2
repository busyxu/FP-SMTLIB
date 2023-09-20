(declare-fun e0_ack!168 () (_ BitVec 64))
(declare-fun e1_ack!169 () (_ BitVec 64))
(declare-fun e2_ack!170 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e0_ack!168)
                    ((_ to_fp 11 53) e0_ack!168))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e1_ack!169)
                    ((_ to_fp 11 53) e1_ack!169))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.mul roundNearestTiesToEven
                    ((_ to_fp 11 53) e2_ack!170)
                    ((_ to_fp 11 53) e2_ack!170))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e1_ack!169)
                                  ((_ to_fp 11 53) e1_ack!169)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.lt (fp.div roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3ff0000000000000)
                          (fp.mul roundNearestTiesToEven
                                  ((_ to_fp 11 53) e2_ack!170)
                                  ((_ to_fp 11 53) e2_ack!170)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   ((_ to_fp 11 53) #x3ff0000000000000)
                   (fp.mul roundNearestTiesToEven
                           ((_ to_fp 11 53) e2_ack!170)
                           ((_ to_fp 11 53) e2_ack!170)))))
  (FPCHECK_FINVALID_SQRT a!1 a!1)))

(check-sat)
(exit)
