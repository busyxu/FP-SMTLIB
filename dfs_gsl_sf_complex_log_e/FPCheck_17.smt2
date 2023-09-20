(declare-fun a_ack!37 () (_ BitVec 64))
(declare-fun b_ack!36 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (not (not (fp.eq ((_ to_fp 11 53) a_ack!37)
                 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!36) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.abs ((_ to_fp 11 53) a_ack!37))
            (fp.abs ((_ to_fp 11 53) b_ack!36)))))
(assert (not (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!37))
            (fp.abs ((_ to_fp 11 53) b_ack!36)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!36))
                           (fp.abs ((_ to_fp 11 53) b_ack!36)))
                   (fp.div roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) b_ack!36))
                           (fp.abs ((_ to_fp 11 53) b_ack!36))))))
  (FPCHECK_FINVALID_LOG
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1)
    (fp.add roundNearestTiesToEven ((_ to_fp 11 53) #x3ff0000000000000) a!1))))

(check-sat)
(exit)
