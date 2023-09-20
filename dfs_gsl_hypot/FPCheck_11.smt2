(declare-fun a_ack!53 () (_ BitVec 64))
(declare-fun b_ack!52 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) a_ack!53)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (let ((a!1 ((_ extract 0 0)
             (ite (fp.isInfinite ((_ to_fp 11 53) b_ack!52)) #x01 #x00))))
  (not (= a!1 #b1))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!53))
            (fp.abs ((_ to_fp 11 53) b_ack!52)))))
(assert (not (fp.eq (fp.abs ((_ to_fp 11 53) b_ack!52))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!52))
                           (fp.abs ((_ to_fp 11 53) a_ack!53)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!52))
                           (fp.abs ((_ to_fp 11 53) a_ack!53))))))
  (FPCHECK_FINVALID_SQRT
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
