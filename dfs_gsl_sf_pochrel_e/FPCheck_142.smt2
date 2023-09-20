(declare-fun a_ack!483 () (_ BitVec 64))
(declare-fun b_ack!482 () (_ BitVec 64))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FADD_ACCURACY ((_ BitVec 64) (_ BitVec 64)) Bool)
(assert (let ((a!1 (fp.gt (fp.abs ((_ to_fp 11 53) b_ack!482))
                  (fp.mul roundNearestTiesToEven
                          ((_ to_fp 11 53) #x3fb999999999999a)
                          (fp.abs ((_ to_fp 11 53) a_ack!483))))))
  (not a!1)))
(assert (fp.gt (fp.abs ((_ to_fp 11 53) a_ack!483))
       ((_ to_fp 11 53) #x4000000000000000)))
(assert (let ((a!1 (fp.eq (fp.abs (fp.abs ((_ to_fp 11 53) b_ack!482)))
                  ((_ to_fp 11 53) #x0000000000000000))))
  (not a!1)))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!482))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!483))))))
  (fp.eq (fp.div roundNearestTiesToEven
                 a!1
                 (fp.abs ((_ to_fp 11 53) b_ack!482)))
         (CF_log (fp.abs ((_ to_fp 11 53) a_ack!483))))))
(assert (let ((a!1 (fp.abs (CF_log (fp.abs ((_ to_fp 11 53) a_ack!483))))))
  (not (fp.eq a!1 ((_ to_fp 11 53) #x0000000000000000)))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!482))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!483))))))
(let ((a!2 (fp.div roundNearestTiesToEven
                   a!1
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!483))))))
  (fp.eq a!2 (fp.abs ((_ to_fp 11 53) b_ack!482))))))
(assert (let ((a!1 (fp.mul roundNearestTiesToEven
                   (fp.abs ((_ to_fp 11 53) b_ack!482))
                   (CF_log (fp.abs ((_ to_fp 11 53) a_ack!483))))))
  (not (fp.gt a!1 ((_ to_fp 11 53) #x3fb999999999999a)))))
(assert (not (fp.eq ((_ to_fp 11 53) b_ack!482) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!483) ((_ to_fp 11 53) #xbfe0000000000000))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!483) ((_ to_fp 11 53) #x4024000000000000))))
(assert (FPCHECK_FADD_ACCURACY a_ack!483 #x0000000000000000))

(check-sat)
(exit)
