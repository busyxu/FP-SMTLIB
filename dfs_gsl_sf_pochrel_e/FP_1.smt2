(declare-fun a_ack!33 () (_ BitVec 64))
(declare-fun b_ack!32 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!32))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!33))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!33)) ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!32)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!32))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!33))))))
  (fp.eq (fp.div roundNearestTiesToEven a!1 (fp.abs ((_ to_fp 11 53) b_ack!32)))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!33))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!33))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!32))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!33))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!33))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) b_ack!32))))))

(check-sat)
(exit)
