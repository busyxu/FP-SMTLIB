(declare-fun a_ack!33 () (_ BitVec 64))
(declare-fun CF_log ((_ BitVec 64)) (_ FloatingPoint 11 53))
(declare-fun CF_log ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(declare-fun FPCHECK_FDIV_INVALID
             ((_ FloatingPoint 11 53) (_ FloatingPoint 11 53))
             Bool)
(declare-fun CF_exp ((_ FloatingPoint 11 53)) (_ FloatingPoint 11 53))
(assert (not (fp.eq ((_ to_fp 11 53) a_ack!33) ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!33)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.eq (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!33)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x0000000000000000))))
(assert (not (fp.lt (fp.add roundNearestTiesToEven
                    ((_ to_fp 11 53) a_ack!33)
                    ((_ to_fp 11 53) #x3fd78b56362cef38))
            ((_ to_fp 11 53) #x3f50624dd2f1a9fc))))
(assert (not (fp.lt ((_ to_fp 11 53) a_ack!33) ((_ to_fp 11 53) #x3ff0000000000000))))
(assert (fp.gt ((_ to_fp 11 53) a_ack!33) ((_ to_fp 11 53) #x4008000000000000)))
(assert (let ((a!1 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!33)
                           (CF_log (CF_log a_ack!33)))
                   (CF_log (CF_log a_ack!33)))))
  (fp.eq a!1 (CF_log a_ack!33))))
(assert (let ((a!1 (fp.sub roundNearestTiesToEven
                   (CF_log a_ack!33)
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!33)
                           (CF_log (CF_log a_ack!33))))))
  (fp.eq a!1 (CF_log (CF_log a_ack!33)))))
(assert (fp.gt (fp.sub roundNearestTiesToEven
               (CF_log a_ack!33)
               (CF_log (CF_log a_ack!33)))
       ((_ to_fp 11 53) #x0000000000000000)))
(assert (let ((a!1 (CF_exp (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!33)
                           (CF_log (CF_log a_ack!33)))))
      (a!3 (fp.add roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!33)
                           (CF_log (CF_log a_ack!33)))
                   ((_ to_fp 11 53) #x3ff0000000000000))))
(let ((a!2 (fp.mul roundNearestTiesToEven
                   (fp.sub roundNearestTiesToEven
                           (CF_log a_ack!33)
                           (CF_log (CF_log a_ack!33)))
                   a!1)))
  (FPCHECK_FDIV_INVALID
    (fp.sub roundNearestTiesToEven a!2 ((_ to_fp 11 53) a_ack!33))
    a!3))))

(check-sat)
(exit)
