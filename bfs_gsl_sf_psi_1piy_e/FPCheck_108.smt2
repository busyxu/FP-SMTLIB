(declare-fun a_ack!167 () (_ BitVec 64))
(declare-fun FPCHECK_FINVALID_LOG
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!167))
       ((_ to_fp 11 53) #x408f400000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!167)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!167))
                           (fp.abs ((_ to_fp 11 53) a_ack!167)))
                   (fp.abs ((_ to_fp 11 53) a_ack!167)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!167)))))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) a_ack!167)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.div roundNearestTiesToEven
                   (fp.mul roundNearestTiesToEven
                           (fp.abs ((_ to_fp 11 53) a_ack!167))
                           (fp.abs ((_ to_fp 11 53) a_ack!167)))
                   (fp.abs ((_ to_fp 11 53) a_ack!167)))))
  (fp.eq a!1 (fp.abs ((_ to_fp 11 53) a_ack!167)))))
(assert (FPCHECK_FINVALID_LOG
  (fp.abs ((_ to_fp 11 53) a_ack!167))
  (fp.abs ((_ to_fp 11 53) a_ack!167))))

(check-sat)
(exit)
