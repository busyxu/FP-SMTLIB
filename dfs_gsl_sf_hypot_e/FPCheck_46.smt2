(declare-fun a_ack!136 () (_ BitVec 64))
(declare-fun b_ack!135 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_SQRT
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!136) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!136))
            (fp.abs ((_ to_fp 11 53) b_ack!135)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!136))
            (fp.abs ((_ to_fp 11 53) b_ack!135)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!135))
                           (fp.abs ((_ to_fp 11 53) b_ack!135)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!135))
                           (fp.abs ((_ to_fp 11 53) b_ack!135))))))
  (FPCHECK_FINVALID_SQRT
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
