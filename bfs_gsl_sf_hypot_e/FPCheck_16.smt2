(declare-fun a_ack!42 () (_ BitVec 64))
(declare-fun b_ack!41 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.eq ((_ to_fp 11 53) a_ack!42) ((_ to_fp 11 53) #x0000000000000000)))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!41) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!42))
            (fp.abs ((_ to_fp 11 53) b_ack!41)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!42))
            (fp.abs ((_ to_fp 11 53) b_ack!41)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!41))
                           (fp.abs ((_ to_fp 11 53) b_ack!41)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!41))
                           (fp.abs ((_ to_fp 11 53) b_ack!41))))))
  (FPCHECK_FINVALID_SQRT
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
